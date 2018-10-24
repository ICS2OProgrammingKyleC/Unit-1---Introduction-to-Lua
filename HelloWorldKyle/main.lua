-- Name: Kyle Christensen
-- Course: ICS2O/3C
-- This program displays Hello, World on the iPad simulator and "Helloooooooo!" to the command
--terminal.
-----------------------------------------------------------------------------------------

--Print "Hello, World" to the command terminal
print("***Helloooooooo!")

--hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the background colour
display.setDefault("background", 178/255, 8/255, 8/255)

--create a local vaiable
local textObject

--displays text on the screen at position x = 500 and y = 500 with
--a deafult font style and font size of 50
textObject = display.newText( "Hello, Master Kyle", 500, 500, nil, 90 )

--Sets the color of the text
textObject:setTextColor(12/255, 214/255, 116/255)

--displays text on the screen at position x = 500 and y = 500 with
--a deafult font style and font size of 50
testObject = display.newText( "By The amazing: Kyle", 500, 600, nil, 50 )

local Dubstep = audio.loadSound("Sounds/Dubstep.mp3")
local DubstepChannel

DubstepChannel = audio.play(Dubstep)