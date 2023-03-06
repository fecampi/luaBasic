-- Classe base
local Animal = {}

function Animal:new(name, sound)
    local obj = {
        name = name or "",
        sound = sound or ""
    }
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Animal:makeSound()
    print(self.name .. " says " .. self.sound)
end

-- Classe derivada
local Cat = Animal:new()

function Cat:new(name)
    local obj = Animal:new(name, "meow")
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Cat:catchMouse()
    print(self.name .. " catches a mouse!")
end

local myCat = Cat:new("Fluffy")
myCat:makeSound()
myCat:catchMouse()

