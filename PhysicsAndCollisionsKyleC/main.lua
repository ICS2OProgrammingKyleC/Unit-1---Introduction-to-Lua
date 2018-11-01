-- Title: PhysicsAndCollisions
-- Name: Kyle C
-- Course: ICS2O/3C
-- This program make objects drop and roll and hit each other

-- Hide the status a=bar
display.setStatusBar(display.HiddenStatusBar)

--load physics
local  physics = require("physics")

--start physics
physics.start()
-------------------------------------------------------------------
--OBJECTS--
-------------------------------------------------------------------
--Ground
local ground = display.newImage("Images/ground.png", 0, 740)

--change the width to be the same as the screen
ground.width = display.contentWidth
ground.x = display.contentWidth/2

--add to physics
physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

--Ground
local ground2 = display.newImage("Images/ground.png", 0, 1)

--change the width to be the same as the screen
ground2.width = display.contentWidth
ground2.x = display.contentWidth/1.8

--add to physics
physics.addBody(ground2, "static", {friction=0.5, bounce=0.3})
---------------------------------------------------------------------
local beam = display.newImage("Images/beam.png", 0, 0)
beam.width = display.contentWidth/2
beam.height = display.contentHeight*1/9
--set the x and y pos
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

--rotate the bame -60 degrees so its on an angle 
beam:rotate(45)

--send it to the back layer
beam:toBack()

--add tp physics 
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})
----------------------------------------------------------
--create second beam
local beam2 = display.newImage("Images/beam.png", 1000, 350)
beam2.width = display.contentWidth/10
beam2.height = display.contentHeight

local beam3 = display.newImage("Images/beam.png", 0, 350)
beam3.width = display.contentWidth/1000
beam3.height = display.contentHeight

--send it to back
beam2:toBack()

--add to physics
physics.addBody(beam2, "static", {friction=0.5, bounce})

--send it to back
beam3:toBack()

--add to physics
physics.addBody(beam3, "static", {friction=0.5, bounce})
----------------------------------------------------------
--create bkg
local bkg = display.newImage("Images/bkg.png", 0, 0)

	--set the x and the y pos
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY
	bkg.width = display.contentWidth
	bkg.height = display.contentHeight

	--send to back
	bkg:toBack()

	-----------------------------------------------------------
	--FUNCTIONS
	-----------------------------------------------------------

--create the first ball
local function firstBall()
		-- creating first ball
		local ball1 = display.newImage("Images/super_ball.png", 0, 0)
		--add to physics
	 	physics.addBody(ball1, {density= 2.0, friction=1.5, bounce=0.8, radius= 25})
	end
	------------------------------------------------------------------------------------------------------------

	--create the second ball
	local function secondBall()
		-- creating second ball
		local ball2 = display.newImage("Images/super_ball.png", 0, 0)
		--add to physics
		physics.addBody(ball2, {density=8,0, friction=0.5, bounce= 1, radius=12.5})
		ball2:scale(0.5, 0.5)
	end
	-------------------------------------------------------------------------------------------------------------
	--create the third ball
	local function thirdBall()
		-- creating second ball
		local ball3 = display.newImage("Images/super_ball.png", 0, 0)
		ball3:scale(2, 2)
	
		--add to physics
		physics.addBody(ball3, {density=1,7, friction=5.5, bounce= 4, radius=50})
	end
	--------------------------------------------------------------------------------------------------------------
	--create the fourth ball
	local function fourthBall()
		-- creating second ball
		local ball4 = display.newImage("Images/super_ball.png", 0, 0)
		ball4:scale(8, 8)
	
		--add to physics
		physics.addBody(ball4, {density=10,0, friction=0.8, bounce= 2, radius=600})
	end
	--------------------------------------------------------------------------------------------------------------
-----------------------------------
	--TIMER DELAYS - CALL EACH FUNCTION AFTER THE GIVEN MILLISECOND
	---------------------------------------------------------------
	timer.performWithDelay(0, firstBall)
	timer.performWithDelay(500, secondBall)
	timer.performWithDelay(1000, thirdBall)
	timer.performWithDelay(1500, thirdBall)
