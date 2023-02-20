-- Definition of the Person class
Person = { name = "", age = 0 }

-- Constructor method for the Person class
function Person:new(name, age)
  local person = {}
  setmetatable(person, self)
  self.__index = self
  person.name = name
  person.age = age
  person:speak()
  return person
end

-- Methods for the Person class
function Person:speak()
  print("Hello, my name is " .. self.name)
end

function Person:getOlder(years)
  self.age = self.age + years
end

return Person