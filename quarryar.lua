while true do
    os.queueEvent("randomEvent")
    os.pullEvent()
    shell.run("quarry")
    for f=0, 20 do
        turtle.dig()
        turtle.forward()
    end
end
