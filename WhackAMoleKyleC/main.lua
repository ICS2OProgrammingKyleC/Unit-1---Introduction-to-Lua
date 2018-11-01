-- Title: WhackAMole
-- Name: Kyle Christensen
-- Course: ICS2O/3C
-- This program makes an Image Appear and when you hit it it makes a sound and you gett a point

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- display the back ground
display.setDefault( "background", 255/255, 86/255,  117/255 )

-- making whacked sound
local whack = audio.loadSound("Sounds/whack.mp3")
local whackChannel

-- creating  Mole
local Mole = display.newImage("Images/Mole.png", 0, 0)
	
	--setting position 
	Mole.x = display.contentCenterX
	Mole.y = display.contentCenterY

	-- setting the scale for the mole
	Mole:scale(0.5, 0.5)

	-- making Mole visible
	Mole.isVisible = true

local scoreNumber = 0
local scoreObject = display.newText( "Score = "..scoreNumber, 150, 100, nil, 60)
scoreObject:setTextColor(43/255, 16/255, 223/255)
scoreObject.isVisible = 1

-- this function makes the mole pop up and visible
function PopUp()
 Mole.x = math.random(0, display.contentWidth)
 Mole.y = math.random(0, display.contentHeight)
 
 Mole.isVisible = true
 timer.performWithDelay(800, Hide)
end

--this make the mole have a delay when it pops up 
function PopUpDelay( )
 timer.performWithDelay(800, PopUp)
end

-- this hides the mole
function Hide( )
 Mole.isVisible = false
 PopUpDelay()
end

-- this function starts the game
function GameStart( )
 PopUpDelay()
end

--this function is for when u click on the mole
function Whacked( event )
if (event.phase == "began") then
  scoreNumber = scoreNumber + 1
  scoreObject.isVisible = true
  whackChannel = audio.play(whack)
  Hide()
  scoreObject.text = ( "Score = "..scoreNumber)
 end
end

-- this is the event listener
Mole:addEventListener( "touch", Whacked)

-----------START GAME--------------------
GameStart()