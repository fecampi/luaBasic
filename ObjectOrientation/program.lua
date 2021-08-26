Conta = require("Conta")
Object = require("Object")


object = Object:new{name = "Object Name"}

-- Criando um objeto Conta e iniciando com saldo 50;
c1 = Conta:new{cliente = "Maria Silva", saldo = 50}
c1.sacar(c1, 30)
c1.depositar(c1, 125.00)

-- Criando um objeto Conta e iniciando com o Default;
c2 = Conta:new()

-- Tranferir da c1 para c2 
c1.tranferir(c1, c2, 50)
c2.imprimirSaldo(c2)

