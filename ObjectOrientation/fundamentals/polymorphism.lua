-- Classe Animal
Animal = {}
Animal.__index = Animal

-- Método construtor para criar uma nova instância da classe Animal
function Animal:new(name, species)
    local self = setmetatable({}, Animal)
    self.name = name
    self.species = species
    return self
end

-- Método para exibir informações do animal
function Animal:displayInfo()
    print("Name: " .. self.name)
    print("Species: " .. self.species)
end

-- Classe Dog que herda de Animal
Dog = {}
Dog.__index = Dog


-- Método construtor para criar uma nova instância da classe Dog
function Dog:new(name, species, breed)
    local self = setmetatable(Animal:new(name, species), Dog)
    self.name = name
    self.species = species
    self.breed = breed
    return self
end

-- Sobrescrita do método displayInfo na classe Dog
function Dog:displayInfo()
    print("Name: " .. self.name)
    print("Species: " .. self.species)
    print("Breed: " .. self.breed)
end

-- Criar instâncias de Animal e Dog
local animal = Animal:new("Buddy", "Mammal")
local dog = Dog:new("Max", "Canine", "Labrador")

-- Chamar o método displayInfo em ambas as instâncias
animal:displayInfo()  -- Exibirá as informações do animal corretamente
dog:displayInfo()  -- Exibirá as informações do cão, incluindo a raça
