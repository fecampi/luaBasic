-- Definition of the Person class
Person = {}
Person.__index = Person

-- Constructor method for the Person class
function Person:new(name, age)
    local self = setmetatable({}, Person)
    self.name = name or ''
    self.age = age or 0
    self:speak()
    return self
end

-- Methods for the Person class
function Person:speak()
    print("Hello, my name is " .. self.name)
end

function Person:getOlder(years)
    self.age = self.age + years
end

return Person
