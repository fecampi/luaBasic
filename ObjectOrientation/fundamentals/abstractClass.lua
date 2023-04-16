
--[[
    Abstract Class Animal
    Attributes:
    - name (string): name of the animal
    - species (string): species of the animal
    Methods:
    - new(name, species): constructor to create a new instance of the class
    - displayInfo(): abstract method to display animal's information
    Constants:
    - ANIMAL_TYPE (string): constant representing the animal type
--]]

-- Abstract class Animal
Animal = {}
Animal.__index = Animal

-- Constructor method
function Animal:new(name, species)
    local self = setmetatable({}, Animal)
    self.name = name or "Unknown"
    self.species = species or "Unknown"
    return self
end

-- Abstract method to get the animal's sound
function Animal:makeSound()
    error("Abstract method 'makeSound' needs to be implemented in subclasses.")
end

-- Abstract method to display animal's information
-- Note: This method is intended to be abstract and should be implemented in subclasses.
function Animal:displayInfo()
    error("Abstract method 'displayInfo' needs to be implemented in subclasses.")
end


--[[
    Class Dog
    Inheritance:
    - Class Animal
    Attributes:
    - breed (string): breed of the dog
    Methods:
    - new(name, species, breed): constructor to create a new instance of the class
    - displayInfo(): implementation of the abstract method to display dog's information
--]]

-- Example usage
-- Dog subclass that inherits from Animal
local Dog = setmetatable({}, Animal)
Dog.__index = Dog


-- Constructor method of the Dog subclass
function Dog:new(name, breed)
    local self = setmetatable(Animal:new(name,species), Dog)
    self.name = name or "Unknown"
    self.breed = breed or "Unknown"
    return self
end

-- Implementation of the abstract method makeSound() for the Dog subclass
function Dog:makeSound()
    print("The dog " .. self.name .. " is barking!")
end

-- Implementation of the abstract method displayInfo() for the Dog subclass
function Dog:displayInfo()
    print("Name: " .. self.name)
    print("Breed: " .. self.breed)
end

-- Example usage of the Dog class
local myDog = Dog:new("Buddy", "Labrador")
myDog:displayInfo()
myDog:makeSound()

-- Output:
-- Name: Buddy
-- Breed: Labrador
-- The dog Buddy is barking!
