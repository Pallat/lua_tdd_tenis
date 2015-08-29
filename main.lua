local pyshics = require "physics"
physics.start()
physics.setDrawMode('hybrid')

local ground = display.newImage("ground.png")
ground.y = 1100
ground.width = 1500



local ball = display.newImage("ball.png")
ball.width = 100
ball.height = 100
ball.x = 140
ball.y = 70

pyshics.addBody( ground, "static" , { friction=0.5, bounce=0.3, density=3.0})
pyshics.addBody( ball,  { friction=1.0, bounce=0.5, density=1.0})
