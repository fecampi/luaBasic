-- Loops
-- Permite executar uma instrução ou grupo de instruções várias vezes.
-- while
print()
print("--while--")
a = 10
while (a < 20) do
    print("value of a:", a)
    a = a + 1
end

-- repeat...until
print()
print("--Repeat--")
a = 10
repeat
    print("value of a:", a)
    a = a + 1
until (a > 15)

-- for numérico
print()
print("--for numerico--")
for i = 10, 1, -2 do print(i) end

print()
print("--for tabelas--")
local tabPaises = {
    "Brasil", "Argentina", "Canada", "Grécia", "France", "Germany"
}
for key = 1, #tabPaises, 1 do print(key .. "-" .. tabPaises[key]) end

-- For Generico--
-- Pairs
print()
print("--for generico(Pairs)--")
for key, value in pairs(tabPaises) do print(key .. "-" .. value) end

-- for numéricos()
print()
print("--for numerico(somente interáveis)--")
tabNumbers = {one = "one", 2, 3, 5, six = 6, 7}
for key, value in ipairs(tabNumbers) do print(key .. "-" .. value) end

-- nested Loops( loops aninhados)
print()
print("nested loops")
j = 2
for i = 2, 10 do
    for j = 2, (i / j), 2 do

        if (not (i % j)) then break end

        if (j > (i / j)) then print("Value of i is", i) end

    end
end

-- break Statement
print()
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

