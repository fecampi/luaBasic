conta = require("Conta")
conta = Conta

-- Criando um objeto conta e iniciando com saldo 50;
c1 = conta:new{cliente = "Maria Silva", saldo = 50}
c1.sacar(c1, 30)
c1.depositar(c1, 125.00)

-- Criando um objeto conta e iniciando com o Default;
c2 = conta:new()

-- Tranferir da c1 para c2 
c1.tranferir(c1, c2, 50)
c2.imprimirSaldo(c2)

