Conta = require("Conta")
Person = require("Person")

-- Creating two objects of the Person class and calling their methods
local client1 = Person:new("John", 30)
client1:speak() -- prints "Hello, my name is John"
print(client1.age) -- prints 30
client1:getOlder(5)
print(client1.age) -- prints 35

local client2 = Person:new("Mary", 25)
client2:speak() -- prints "Hello, my name is Mary"
print(client2.age) -- prints 25
client2:getOlder(3)
print(client2.age) -- prints 28

-- Criando um objeto Conta e iniciando com saldo 50;
local c1 = Conta:new(client1, 50)
c1:withdraw(30)
c1:deposit(125.00)

-- Criando um objeto Conta e iniciando com o Default;
local c2 = Conta:new(client2)

-- Transferir da c1 para c2 
c1:transfer(c2, 50)
c2:printBalance()
