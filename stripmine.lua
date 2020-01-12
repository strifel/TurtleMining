for i=0, 50 do
    for ii=0, 3 do
        turtle.dig()
        turtle.forward()
        turtle.digUp()
    end
    turtle.turnRight()
    for ii=0, 5 do
        turtle.dig()
        turtle.forward()
        turtle.digUp()
    end
    turtle.turnRight()
    turtle.turnRight()
    for ii=0, 5 do
        turtle.forward()
    end
    for ii=0, 5 do
        turtle.dig()
        turtle.forward()
        turtle.digUp()
    end
    turtle.turnRight()
    turtle.turnRight()
    for ii=0, 5 do
        turtle.forward()
    end
    turtle.turnLeft()
    turtle.select(1)
    if turtle.getItemCount(1) > 20 then
        turtle.drop(turtle.getItemCount(1) - 20)
    end
end
