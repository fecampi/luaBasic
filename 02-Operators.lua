----------------Operadores Aritméticos--------------------------------
print("----Operadores Aritiméticos----")

-- adição
print("adição: " .. 1 + 2)

-- subtração
print("subtração: " .. 2 - 1)

-- multiplicação
print("multiplicação: " .. 4 * 2)

-- divisão
print("divisão: " .. 10 / 2)

-- raiz resto
print("Resto: " .. 50 % 30)

-- negação
print("negação: " .. -7)

-- exponenciação
print("exponenciação: " .. 2 ^ 3)

-- raiz quadrada
print("Raiz quadrada: " .. 4 ^ 0.5)

------------------------Operadores Relacionais-----------------------
print("----Operadores Relacionais----")
-- menor que 
print("1 menor que 2: ", 1 < 2)
-- maior que 
print("1 maior que 2: ", 1 > 2)
-- menor ou igual
print("1 menor ou igual que 2: ", 1 <= 2)
print("coca" <= "cola")
-- maior ou igual
print("1 maior ou igual que 2: ", 1 >= 2)
-- igual 
print("1 igual a 2: ", 1 == 2)
print("igual: ", {} == {})
-- diferente
print("1 é diferente de 2: ", 1 ~= 2)

------------------------Operadores Lógicos-------------------
print("----Operadores Lógicos----")
print(not (1 < 2))
print((5 < 2) and (2 < 4))
print((1 < 2) or (2 < 4))

--------------------Operador de Concatenação---------------
print("----Operador de concatenação----")
print("a " .. "b")

--------------------Operador de comprimento--------------
print("----Operador de comprimento----")
print(#"a b")
print(#{5, 4, 5, 2})

