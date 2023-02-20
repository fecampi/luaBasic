Conta = {}

-- Pseudo-constructor for Lua to accept the class
function Conta:new(client, balance)
    local account = {}
    setmetatable(account, self)
    self.__index = self
    account.client = client or {
        name = "not found"
    }
    account.balance = balance or 0 -- Define balance as 0 if no balance is provided
    return account
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
