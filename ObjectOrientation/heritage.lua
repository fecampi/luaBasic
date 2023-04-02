-- Classe base
local Animal = {}

function Animal:new(name, sound)
    local obj = {}
    obj.name = name or ""
    obj.sound = sound or ""
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Animal:makeSound()
    print(self.name .. " says " .. self.sound)
end

function Animal:print()
    print(self.name .. " print")
end

function Animal:update()
    print("update")
end

-- Classe derivada
local Cat = Animal:new()

function Cat:new(name, favoriteFood)
    local obj = Animal:new(name, "meow")
    obj.favoriteFood = favoriteFood or "tuna"
    setmetatable(obj, self)
    self.__index = self
    return obj
end

function Cat:catchMouse()
    print(self.name .. " catches a mouse!")
    self:print("oi")
end

function Cat:update()
    Animal.update(self)
    print("update 2")
end


local myCat = Cat:new("Fluffy", "salmon")
myCat:makeSound()
myCat:catchMouse()
myCat:update()

