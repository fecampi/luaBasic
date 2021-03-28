print("start")

function readFile(fileName)
    arq = io.open(fileName)
    return arq:read("*a")
end

content = readFile("M20170519.csv")

-- Linha de cabeçalho
posQuebra, fimQuebra = string.find(content, "\n")
cabecalho = string.sub(content, 1, posQuebra - 1)
print(cabecalho)

-- Primeira Linhga]
while posQuebra ~= nil do
    local iniLinha = fimQuebra + 1
    posQuebra, fimQuebra = string.find(content, "\n", iniLinha)
    local fimLinha = posQuebra - 1
    linha1 = string.sub(content, iniLinha, fimLinha)
    ini, fim, nomeMoeda, simbolo, codigo, pais, primeiraLetra =
        string.find(linha1, ";(.-) *;(.-) *;%d-;((%a).-) *;")
    print(ini, fim)
    print(nomeMoeda);
    print(simbolo);
    print( pais);
end

