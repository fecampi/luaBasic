-- ----------Lua - Visão Geral-----------
--[[
    
Sobre O LUA
Leve e extensível escrita em C;
Pode ser integrado ao código escrito em C e outras linguagens convencionais;
uma boa distância do hardware;
Um ambiente seguro, gerenciamento automático de memória e boas facilidades com tipos;


Principais comandos do interpretador lua

comando 1 -> entrar no interpredador
lua

comando 2 -> executar o arquivo 
-- lua lua.lua

comanto 3 -> executar arquivo atraves do interpretador
dofile("lua.lua")

comando 4 -> sair do terminal
os.exit() 

comanto 5 -> executar arquivo e após entra no modo interativo
lua -i lua.lua

comando 6 -> enviar comando sem preciar abrir o interprador
lua -e "print(20+20)"


]] -- print
print("Hello World!")

-- renomeando comandos
diga = print
diga("olá mundo")

--recebendo atributo do teclado
diga("Qual seu nome?")
name = io.read()
print("olá "..name)
io.read()

-- Data Types
print(type("What is my type")) -- > string
t = 10

print(type(5.8 * t)) -- > number
print(type(true)) -- > boolean
print(type(print)) -- > function
print(type(nil)) -- > nil
print(type(type(ABC))) -- > string

-- Variable definition:
local a, b

-- Initialization
a = 10
b = 30

print("value of a:", a)
print("value of b:", b)

-- Swapping of variables
b, a = a, b
print("value of a:", a)
print("value of b:", b)
f = 70.0 / 3.0
print("value of f", f)

-- multiple lvalues
g, l = 20, 30
print("value of g:", g)
print("value of l:", l)
