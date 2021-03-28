-------- Como Arrays------
a = {10, 20, 30}
a["n"] = #a
a["printar"] = function() print("oi") end
print(a.n)
a.printar()

-----Dicionarios <> Objetos-------

user = {name = "joão", age = 22}
user.salary = 200
-- function user.printar() print("oi") end
user.printarValue = function(value) print(value) end
print(user.name)
print(user.age)
print(user.salary)
user.printarValue("na tela")
a[4] = user
print(a[4].salary)

-------------operações de tabelas------

-- inserindo elementos na tabela "table.insert( list, value )""
-- table.insert( a, #a+1, "ultimo" )
table.insert(a, 40)
print(a[5])

-- inserindo elementos no inicio"
table.insert(a, 1, "primeiro")
print(a[1])

---removendo o elemento no inicio
table.remove(a, 1)
print(a[1])

-- removendo o elemento no final
-- table.remove(a, #a)
table.remove(a)
print(a[#a])


-----forEach(para cada elemento me retorne chave e valor)
numbers = {1, 2, "three", 4, "five"}
-- ipars só numericos, pairs pega todos os indices
for key, value in pairs(numbers) do
    print(key,value)
end

-- concatenando tabelas(dividindo e separando)
print(table.concat(numbers, ", ", 2, 3))

--proximo elemento da tabela
i,v = next(numbers,2)
print(i,v)

-- UNPACK - converte tabela em uma tupla {1,2,3} = 1,2,3
values = {1,2}
function soma(a,b) return a + b end
print(soma(table.unpack(values)))


