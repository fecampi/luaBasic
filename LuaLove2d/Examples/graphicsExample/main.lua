function love.load()
    -- Carregando as fontes
    font1 = love.graphics.newFont("fonts/Roboto-Black.ttf", 24)
    font2 = love.graphics.newFont("fonts/Lobster-Regular.ttf", 36)
    -- Carregando a imagem
    image = love.graphics.newImage("images/tux.png")
end

function love.draw()

    -- Desenhando um círculo
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.circle("fill", 300, 100, 50)

    -- Desenhando uma linha
    love.graphics.setColor(0, 0, 1, 1)
    love.graphics.line(400, 50, 500, 150)

    -- Desenhando um polígono preenchido
    love.graphics.setColor(0, 1, 1, 1)
    love.graphics.polygon("fill", 550, 50, 600, 100, 650, 50, 700, 100)

    -- Desenhando uma elipse vazia
    love.graphics.setColor(1, 0, 1, 1)
    love.graphics.ellipse("line", 750, 100, 50, 25)

    -- Desenhando uma porção de uma elipse
    love.graphics.setColor(1, 1, 0, 1)
    love.graphics.arc("fill", 850, 100, 50, math.rad(45), math.rad(135))

    -- Desenhando pontos
    love.graphics.setColor(1, 0, 1, 1)
    love.graphics.points(950, 50, 950, 100, 1000, 75)

    -- Desenhando uma imagem( deixando a imagem branca antes)
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.draw(image, love.graphics.getWidth() / 2, 150)

    -- Define a fonte 1
    love.graphics.setFont(font1)
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.print("Texto com fonte 1", 50, 200)

    -- Define a fonte 2
    love.graphics.setFont(font2)
    love.graphics.setColor(0, 1, 0, 1)
    love.graphics.print("Texto com fonte 2", 50, 250)

    -- Desenhando um retângulo
    love.graphics.setColor(1, 0, 0, 1)
    love.graphics.rectangle("fill", 150, 50, 100, 100)

    -- Escrevendo texto formatado na tela
    love.graphics.setColor(1, 1, 1, 1)
    love.graphics.printf("Texto Formatado", 0, love.graphics.getHeight() - 50, love.graphics.getWidth(), "center")

    -- -- Aplicando transformações aos gráficos
    love.graphics.translate(10, 10)
    love.graphics.rotate(math.rad(45))
    love.graphics.scale(1.5, 1.5)
end
