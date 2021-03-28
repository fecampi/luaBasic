-- ----------Lua - Visão Geral-----------
-- Leve e extensível escrita em C;
-- Pode ser integrado ao código escrito em C e outras linguagens convencionais;
---uma boa distância do hardware;
--Um ambiente seguro, gerenciamento automático de memória e boas facilidades com tipos;


--print
print("Hello World!")

--Data Types
print(type("What is my type"))   --> string
t = 10

print(type(5.8*t))               --> number
print(type(true))                --> boolean
print(type(print))               --> function
print(type(nil))                 --> nil
print(type(type(ABC)))           --> string



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
f = 70.0/3.0
print("value of f", f)

-- multiple lvalues
g,l = 20,30
print("value of g:", g)
print("value of l:", l)