Object = {name = "Não Registrado", id = 0}

-- Esqueminha para o lua aceitar a classe(pseudo-construtor)
function Object:new(o)
    o = o or {}
    setmetatable(o, self)
    self.__index = self
    -- metodos a serem chamados no contrutor
    -- print("Saldo: "..(o.saldo)) ou
    o.objectCreated(o)
    return o
end



function Object.objectCreated(self)
    print("Object Created: "..self.name.."/"..self.id)

end

return Object
