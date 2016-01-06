function love.load(arg)
  hellow = { x = 200, y = 200, speed = 150, text = 'Hellow' }
end

function love.update(dt)
  if love.keyboard.isDown('up') then
    moveUp(dt)
  end
  if love.keyboard.isDown('down') then
    moveDown(dt)
  end
  if love.keyboard.isDown('left') then
    moveLeft(dt)
  end
  if love.keyboard.isDown('right') then
    moveRight(dt)
  end
end

function love.draw()
  love.graphics.print(hellow.text, hellow.x, hellow.y)
end

function moveUp(dt)
  hellow.y = hellow.y - (hellow.speed * dt)
end

function moveDown(dt)
  hellow.y = hellow.y + (hellow.speed * dt)
end

function moveLeft(dt)
  hellow.x = hellow.x - (hellow.speed * dt)
end

function moveRight(dt)
  hellow.x = hellow.x + (hellow.speed * dt)
end
