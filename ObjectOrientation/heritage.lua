-- Classe base
local Animal = {}
Animal.__index = Animal

function Animal:new(name, sound)
    local self = setmetatable({}, Animal)
    self.name = name or ""
    self.sound = sound or ""
    return self
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
Cat.__index = Cat

function Cat:new(name, favoriteFood)
    local self = setmetatable(Animal:new(name, "meow"), Cat)
    self.favoriteFood = favoriteFood or "tuna"
    return self
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

