-- Definition of the 'Address' class
Address = {}
Address.__index = Address

-- Pseudo-constructor for Lua to accept the class
function Address:new(street, number)
    local self = setmetatable({}, Address)
    self.street = street or "not found"
    self.number = number or "not found"
    return self
end

-- Method of the 'Address' class to get information
function Address:getInfo()
    print("Street: " .. self.street)
    print("Number: " .. self.number)
end

--[[
    Class Conta
    Attributes:
    - client (string): client of the account
    - balance (number): account balance
    - name (string): account name
    Methods:
    - new(client, balance): pseudo-constructor to create a new instance of the class
    - getInfo(): method to get account information
--]]

-- Definition of the 'Conta' class
Conta = {}
Conta.__index = Conta

-- Pseudo-constructor for Lua to accept the class
function Conta:new(client, balance)
    local self = setmetatable({}, Conta)
    self.client = client or "not found"
    self.balance = balance or 0
    self.name = "not found"
    return self
end

-- Method of the 'Conta' class to get information
function Conta:getInfo()
    print("Client: " .. self.client)
    print("Balance: " .. self.balance)
    print("Name: " .. self.name)
end


--[[
    Class ContaWithAddress
    Inheritance:
    - Class Conta
    Composition:
    - Class Address
    Attributes:
    - address (Address): instance of the Address class as an attribute
    Methods:
    - new(client, balance, street, number): pseudo-constructor to create a new instance of the class
    - getInfo(): method to get account information, including the associated address
--]]


-- Definition of the 'ContaWithAddress' class
ContaWithAddress = {}
ContaWithAddress.__index = ContaWithAddress

-- Pseudo-constructor for Lua to accept the class
function ContaWithAddress:new(client, balance, street, number)
    local self =  setmetatable( Conta:new(client, balance), ContaWithAddress)
    self.address = Address:new(street, number)
    return self
end


-- Method of the 'ContaWithAddress' class to get information
function ContaWithAddress:getInfo()
    print("Client: " .. self.client)
    print("Balance: " .. self.balance)
    print("Name: " .. self.name)
    print("Address:")
    self.address:getInfo()
end

-- Example usage
local contaWithAddress = ContaWithAddress:new("John Doe", 1000, "Street A", "123")
contaWithAddress.name = "Conta 1"
contaWithAddress:getInfo()
