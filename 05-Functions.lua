------------ chunk -----------
print("----chunk---")
v = {1, 2, 3}
do
    local v = {2, 3, 4, 5, 6, 7, 8}
    for i = 1, #v do print(v[i]) end
end
print("fora são " .. #v .. " elementos.")

-------------- funções-----------
function max(num1, num2)

    if (num1 > num2) then
        result = num1;
    else
        result = num2;
    end

    return result;
end

print("The maximum of the two numbers is ", max(10, 4))
print("The maximum of the two numbers is ", max(5, 6))



-------------- passando funções para outras funções-----------
function soma(x, y) return x + y end

-- uma outra forma de declarar
prod = function(x, y) return x - y end

-- função que vai receber a função
function exec(func, x, y) return func(x, y) end

-- recebe as funções, a ultima como exemplo é uma anonima
funcs = {soma, prod, function(x, y) return x * y end}

a = 3
b = 2
-- result
res = {}
for i = 1, #funcs do res[i] = exec(funcs[i], a, b) end
-- imprimir array
for indice, value in pairs(res) do
    print("Operação " .. indice .. " = " .. value)
end

----------- Closures(função que retorna uma função util para esconder ou iterar)---------
function soma(parcela)
    local s = function(b) return parcela + b end
    return s
end

soma2 = soma(2)


print(soma())
-----------------multiplos valores de retorno------------
print("---multiplos valores---")
function bhask(a, b, c)
    local delta = b ^ 2 - 4 * a * c
    local x1 = (-b - math.sqrt(delta)) / (2 * a)
    local x2 = (-b + math.sqrt(delta)) / (2 * a)
    return x1, x2
end

-- x^2 -5x + 6 =  0
x1, x2 = bhask(1, -5, 6)
print("raiz 1 = " .. x1 .. " e raiz 2 = " .. x2)

----------- Numero indefinido de parametros de entrada---------
print("------Numero indefinido de parametros de entrada-----")
function concatenate(...)
    local args = {...}
    local ret = " "
    for indice, arg in ipairs(args) do ret = ret .. arg end
    return ret
end
print(concatenate("a"))
print(concatenate("a", "b"))
print(concatenate("a", "b", "c"))




