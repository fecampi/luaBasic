-- Loops
-- Permite executar uma instrução ou grupo de instruções várias vezes.
-- while
print("while")
a = 10
while (a < 20) do
    print("value of a:", a)
    a = a + 1
end

-- repeat...until
print("Repeat")
a = 10
repeat
    print("value of a:", a)
    a = a + 1
until (a > 15)

-- for numérico
print("for numerico")
for i = 10, 1, -2 do print(i) end
print("for tabelas")
local tabPaises = {
    "Brasil", "Argentina", "Canada", "Grécia", "France", "Germany", ""
}
for indice = 1, #tabPaises, 1 do print(indice .. "-" .. tabPaises[indice]) end

--For Generico




-- nested Loops( loops aninhados)
print("nested loops")
j = 2
for i = 2, 10 do
    for j = 2, (i / j), 2 do

        if (not (i % j)) then break end

        if (j > (i / j)) then print("Value of i is", i) end

    end
end

-- break Statement
print("break Statement")
a = 10

while (a < 20) do
    print("value of a:", a)
    a = a + 1
    if (a > 15) then
        --  terminate the loop using break statement 
        break
    end

end

-- iterators
print("--iterators")
array = {"Lua", "Tutorial"}

for key, value in ipairs(array) do print(key, value) end
