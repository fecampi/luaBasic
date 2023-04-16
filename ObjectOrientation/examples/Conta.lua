Conta = {}
Conta.__index = Conta

-- Pseudo-constructor for Lua to accept the class
function Conta:new(client, balance)
    local self = setmetatable({}, Conta)
    self.client = client or  "not found"
    self.balance = balance or 0
    self.name = "not found"
    return self
end

function Conta:withdraw(value)
    self.balance = self.balance - value
    self:printBalance()
end

function Conta:deposit(value)
    self.balance = self.balance + value
    self:printBalance()
end

function Conta:transfer(destAccount, value)
    self.balance = self.balance - value
    destAccount.balance = destAccount.balance + value
    self:printBalance()
end

function Conta:printBalance()
    print()
    print("======================================")
    print(" BANKING SYSTEM ")
    print("======================================")
    print()
    print("CLIENT: " .. self.client.name)
    print()
    print("BALANCE: " .. self.balance)
    print()
    print("======================================")
    print()
end

return Conta
