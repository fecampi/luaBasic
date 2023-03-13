function love.load()
    -- inicializando variaveis
    timer = 0
    pressed = {
        button1 = {
            x = 0,
            y = 0
        },
        button2 = {
            x = 0,
            y = 0
        },
        button3 = {
            x = 0,
            y = 0
        },
        istouch = {
            x = 0,
            y = 0
        }
    }
    gameState = 1
    gameFont = love.graphics.newFont(15)
    width = love.graphics.getWidth() - 100
end

function love.draw()

    if gameState == 1 then
        love.graphics.printf("Click anywhere to begin!", 0, 250, love.graphics.getWidth(), "center")
    end

    if gameState == 2 then
        love.graphics.setFont(gameFont)
        local x = love.mouse.getX()
        love.graphics.line(x, 0, x, love.graphics.getHeight())

        local y = love.mouse.getY()
        love.graphics.line(0, y, love.graphics.getWidth(), y)

        local x, y = love.mouse.getPosition() -- get the position of the mouse
        love.graphics.circle("fill", x, y, 10)

        love.graphics.printf("Time: " .. math.ceil(timer), 0, love.graphics.getHeight() - 100, width, "center")

        love.graphics.printf("Botão esquerdo do mouse: " .. pressed.button1.x .. ", " .. pressed.button1.y, 0,
            love.graphics.getHeight() - 80, width, "center")

        love.graphics.printf("Botão direito do mouse: " .. pressed.button2.x .. ", " .. pressed.button2.y, 0,
            love.graphics.getHeight() - 60, width, "center")

        love.graphics.printf("Botão do meio do mouse: " .. pressed.button3.x .. ", " .. pressed.button3.y, 0,
            love.graphics.getHeight() - 40, width, "center")

        love.graphics.printf("touch em: " .. pressed.istouch.x .. ", " .. pressed.istouch.y, 0,
            love.graphics.getHeight() - 20, width, "center")
    end

end

function love.mousepressed(x, y, button, istouch)
    -- Verificando se o botão esquerdo do mouse foi pressionado
    if button == 1 then
        gameState = 2
        pressed.button1.x = x
        pressed.button1.y = y
    end

    -- Verificando se o botão meio do mouse foi pressionado
    if button == 2 then
        pressed.button2.x = x
        pressed.button2.y = y
    end

    -- Verificando se o botão direito do mouse foi pressionado
    if button == 3 then
        pressed.button3.x = x
        pressed.button3.y = y
    end
    -- Verificando se o touch do celular foi pressionado
    if istouch == 1 then
        pressed.istouch.x = x
        pressed.istouch.y = y
    end
end

function love.update(dt)
    timer = timer + dt
end

