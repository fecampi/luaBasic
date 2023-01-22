function love.load()
    -- inicializando variaveis
    pressedbutton1 = {
        x = 0,
        y = 0
    }
    pressedbutton2X = 0
    pressedbutton2Y = 0
    pressedbutton3X = 0
    pressedbutton3Y = 0
    istouchX = 0
    istouchY = 0
    width = love.graphics.getWidth() - 100
end

function love.draw()

    local x = love.mouse.getX()
    love.graphics.line(x, 0, x, love.graphics.getHeight())

    local y = love.mouse.getY()
    love.graphics.line(0,y, love.graphics.getWidth(),y)

    local x, y = love.mouse.getPosition() -- get the position of the mouse
    love.graphics.circle("fill", x, y, 10)


    love.graphics.printf("Botão esquerdo do mouse: " .. pressedbutton1.x .. ", " .. pressedbutton1.y, 0,
        love.graphics.getHeight() - 80, width, "center")

    love.graphics.printf("Botão direito do mouse: " .. pressedbutton2X .. ", " .. pressedbutton2Y, 0,
        love.graphics.getHeight() - 60, width, "center")

    love.graphics.printf("Botão do meio do mouse: " .. pressedbutton3X .. ", " .. pressedbutton3Y, 0,
        love.graphics.getHeight() - 40, width, "center")

    love.graphics.printf("touch em: " .. istouchX .. ", " .. istouchY, 0, love.graphics.getHeight() - 20, width,
        "center")

end

function love.mousepressed(x, y, button, istouch)
    -- Verificando se o botão esquerdo do mouse foi pressionado
    if button == 1 then
        pressedbutton1.x = x
        pressedbutton1.y = y
    end

    -- Verificando se o botão meio do mouse foi pressionado
    if button == 2 then
        pressedbutton2X = x
        pressedbutton2Y = y
    end

    -- Verificando se o botão direito do mouse foi pressionado
    if button == 3 then
        pressedbutton3X = x
        pressedbutton3Y = y
    end
    -- Verificando se o touch do celular foi pressionado
    if istouch == 1 then
        istouchX = x
        istouchY = y
    end
end

