-- Title: WhackAMole
-- Name: Kyle Christensen
-- Course: ICS2O/3C
-- This program makes an Image Appear and when you hit it it makes a sound and you gett a point

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- display the back ground
display.setDefault( "background", 255/255, 86/255,  117/255 )

-- creating  Midoriya
local Mole = display.newImage("Images/Mole.png", 0, 0)
	
	--setting position 
	Mole.x = display.contentCenterX
	Mole.y = display.contentCenterY

	-- setting the scale for the mole
	Mole:scale(0.5, 0.5)

	-- making Midoriya visible
	Mole.isVisible = true

local scoreNumber = 0
local scoreObject = display.newText( "Score = "..scoreNumber, 150, 100, nil, 60)
scoreObject:setTextColor(43/255, 16/255, 223/255)
scoreObject.isVisible = 1


function PopUp()
 Mole.x = math.random(0, display.contentWidth)
 Mole.y = math.random(0, display.contentHeight)
 
 Mole.isVisible = true
 timer.performWithDelay(800, Hide)
end

function PopUpDelay( )
 timer.performWithDelay(800, PopUp)
end

function Hide( )
 Mole.isVisible = false
 PopUpDelay()
end

function GameStart( )
 PopUpDelay()
end

function Whacked( event )
if (event.phase == "began") then
  scoreNumber = scoreNumber + 1
  scoreObject.isVisible = true
  Hide()
  scoreObject.text = ( "Score = "..scoreNumber)
 end
end

Mole:addEventListener( "touch", Whacked)

-----------START GAME--------------------
GameStart()