-- Definição da "interface" Database
IDatabase = {}
IDatabase.__index = IDatabase

-- Método para conectar ao banco de dados (método "obrigatório" na "interface")
function IDatabase:connect()
    error("connect method must be implemented in derived classes.")
end

-- Método para executar uma consulta SQL (método "obrigatório" na "interface")
function IDatabase:executeQuery(query)
    error("executeQuery method must be implemented in derived classes.")
end



-- Classe MySQLDatabase que implementa a "interface" Database
local MySQLDatabase = setmetatable({}, { __index = IDatabase })
MySQLDatabase.__index = MySQLDatabase

-- Método construtor para criar uma nova instância da classe MySQLDatabase
function MySQLDatabase:new(host, user, password, database)
    local self = setmetatable({}, MySQLDatabase)
    self.host = host
    self.user = user
    self.password = password
    self.database = database
    return self
end

-- Implementação do método connect na classe MySQLDatabase
function MySQLDatabase:connect()
    print("Connecting to MySQL database...")
    -- Lógica real de conexão ao banco de dados MySQL aqui
end

-- Implementação do método executeQuery na classe MySQLDatabase
function MySQLDatabase:executeQuery(query)
    print("Executing MySQL query: " .. query)
    -- Lógica real de execução de consulta SQL no banco de dados MySQL aqui
end

-- Criar instância de MySQLDatabase
local db = MySQLDatabase:new("localhost", "root", "password", "mydb")

-- Chamar o método connect e executeQuery na instância de MySQLDatabase
db:connect()  -- Conectar ao banco de dados MySQL
db:executeQuery("SELECT * FROM users")  -- Executar uma consulta SQL no banco de dados MySQL
