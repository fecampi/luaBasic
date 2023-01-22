string = "lua is aesome!!!"
number = 55

message1 = ""
message2 = ""
message3 = ""

-- If Statement
if number > 0 then
    message1 = "Greater than zero"
end

-- Else adn Else
if number > 0 then
    message2 = "Greater than zero"
else
    message2 = "Less than zero"
end

-- ElseIf
if (numnber == 10) then
    message3 = "Value of a is 10"
elseif (number == 20) then
    message3 = "Value of a is 20"
else
    message3 = "None of the values is matching"
end

function love.draw()
    love.graphics.setFont(love.graphics.newFont(30))
    love.graphics.print(number, 0, 0)
    love.graphics.print('If Statement: ' .. message1, 0, 50)
    love.graphics.print('Else adn Else: ' .. message2, 0, 100)
    love.graphics.print('ElseIF: ' .. message3, 0, 150)
end
