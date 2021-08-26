Conta = {cliente = "Não Registrado", saldo = 0}

-- Esqueminha para o lua aceitar a classe(pseudo-construtor)
function Conta:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    -- metodos a serem chamados no contrutor
    -- print("Saldo: "..(o.saldo)) ou
    o.imprimirSaldo(o)
    return o
end

function Conta.sacar(self, value)
    self.saldo = self.saldo - value
    self.imprimirSaldo(self)
end

function Conta.depositar(self, value)
    self.saldo = self.saldo + value
    self.imprimirSaldo(self)
end

function Conta.tranferir(self, Conta, value)
    self.saldo = self.saldo - value
    Conta.saldo = Conta.saldo + value
end

function Conta.imprimirSaldo(self)
    print()
    print("======================================")
    print("           SISTEMA BANCÁRIO           ")
    print("======================================")
    print()
    print("CLIENTE: " .. self.cliente)
    print()
    print("SALDO: " .. self.saldo)
    print()
    print("======================================")
    print()
end

return Conta
