--String
print("String")
s1 = 'Hellor "World" '
print(s)


--string com quebra de linha
print("String com quebra de linha")
s2 = 'Este é\n um\n texto com quebra de linha'
print(s)


--String Longa - texto com quebra de linha
print("String Longa - texto com quebra de linha")
s3 = [[Este 
é
um
'texto']]
print(s)

--concatenação
print("concatenação")
s = s1..s2
print(s)

--comprimento da string
print("comprimento da string")
print(tostring(#s))

--concatenando atraves de um join
print("concatenando atraves de um 'Join'")
function join(sep, words)
    return table.concat(words,sep)
end
print(join(",",{"hello","world"}))


--Biblioteca para string
local string = "Olá tudo bem?"
print(string.sub( string, 1,3 ))
print(string.upper(string))
print(string.lower(string))

---Pattern matching(permite fazer buscas e substituições usando padrões)



