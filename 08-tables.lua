-------- Como Arrays------
a = {10, 20, 30}
-- contador do array
a["n"] = #a
a["printar"] = function()
    print("oi")
end
print(a.n)
a.printar()

-----Dicionarios <> Objetos-------

user = {
    name = "joão",
    age = 22
}
user.salary = 200
-- function user.printar() print("oi") end
user.printarValue = function(value)
    print(value)
end
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

-- ordenação 
print("numeros ordenados")
numbers = {7, 3, 2, 4, 8}

-- concatenando tabelas(dividindo e separando)
print(table.concat(numbers, ", ", 2, 3))

-----forEach(para cada elemento me retorne chave e valor)
table.sort(numbers)
for key, value in pairs(numbers) do
    print("indice: " .. key .. ", valor: " .. value)
end

-- proximo elemento da tabela
i, v = next(numbers, 2)
print(i, v)

