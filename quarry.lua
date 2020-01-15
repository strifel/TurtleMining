--[[
Slots:
1: EnderChest
2: Cobble
3: Dirt
-- ]]
turtle.digDown()
depth = 0
while not turtle.detectDown() do
    turtle.down()
    for p=0,8 do
        for b=0,10 do
            turtle.dig()
            turtle.forward()
        end
        turtle.turnLeft()
        turtle.dig()
        turtle.forward()
        turtle.turnLeft()
        for b=0,10 do
            turtle.dig()
            turtle.forward()
        end
        if p ~= 8 then
            turtle.turnRight()
            turtle.dig()
            turtle.forward()
            turtle.turnRight()
        end
    end

    turtle.turnLeft()
    for b=0,16 do
        turtle.forward()
    end
    turtle.turnLeft()

    --[[ Dropping unnecessary Items ]]--

    turtle.select(2)
    if turtle.getItemCount(2) > 1 then
        turtle.drop(turtle.getItemCount(2) - 1)
    end
    turtle.select(3)
    if turtle.getItemCount(3) > 1 then
        turtle.drop(turtle.getItemCount(3) - 1)
    end

    --[[ Emptying turtle ]]--

    if turtle.getItemCount(10) > 0 then
        turtle.select(1)
        turtle.place()
        for s=4,16 do
            turtle.select(s)
            turtle.drop()
        end
        turtle.select(1)
        turtle.dig()
    end

    turtle.digDown()

    depth = depth + 1
end

for upped=0, depth do
    turtle.up()
end
