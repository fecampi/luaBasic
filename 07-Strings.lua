--Strings
print("--Strings")

string1 = "Lua"
print("\"String 1 is\"",string1)

string2 = 'Tutorial'
print("String 2 is",string2)

string3 = [["Lua Tutorial"]]
print("String 3 is",string3)


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


--Case Manipulation
print("--Case Manipulation")
string1 = "Lua";
print(string.upper(string1))
print(string.lower(string1))


--Sub String
string = "Lua Tutorial"
print("sub", string.sub( string, 1,3 ))



--Replacing a Substring
print("--Replacing a Substring")
string = "Lua Tutorial"
newstring = string.gsub(string,"Tutorial","Language")
print("The new string is "..newstring)


--Finding
print("--Finding")
string = "Lua Tutorial"
print(string.find(string,"Tutorial"))


--Reverse
print("--Reverse")
string = "Lua Tutorial"
reversedString = string.reverse(string)
print("The new string is",reversedString)


-- Basic string formatting
print("Basic string formatting")
string1 = "Lua"
string2 = "Tutorial"
print(string.format("Basic formatting %s %s",string1,string2))


-- Date formatting
print("Date formatting")
date = 2; month = 1; year = 2014
print(string.format("Date formatting %02d/%02d/%03d", date, month, year))


-- Decimal formatting
print("Decimal formatting")
print(string.format("%.4f",1/3))


--Character and Byte Representations
print("--Character and Byte Representations")
-- First character
print(string.byte("Lua"))
-- Third character
print(string.byte("Lua",3))
-- first character from last
print(string.byte("Lua",-1))
-- Internal Numeric ASCII Conversion
print(string.char(97))


-- String Concatenations using ..
string1 = "Lua"
string2 = "Tutorial"
print("Concatenated string",string1..string2)

-- Length of string
text= "Lua Totorial"
print("Length ",tostring(#text))
print("Length ",string.len(text))

-- Repeating strings
repeatedString = string.rep(" -LUA- ",3)
print(repeatedString)










