-- Title: MovingObjects
-- Name: Kyle christensen
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and then makes it fade out.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

local litSong = audio.loadSound("sound/litSong.mp3")
local litSongChannel

litSongChannel = audio.play(litSong)

-- global variables 
scrollSpeed = 3
local scrollSpeed2 = 2

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- character image with width and height 
local beetleship = display.newImageRect("Images/beetleship.png", 250, 250)

-- character image with width and height 
local planet = display.newImageRect("Images/planet.png", 400, 400)


--set the images to be transparent
beetleship.alpha = 0
planet.alpha = 1

--set the initial x and y position of beetleship and planet
beetleship.x = 0
beetleship.y = display.contentHeight / 3
planet.x = display.contentWidth
planet.y = 500

--Function: MoveShip
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed

	--change the transparency of the ship every time it so fast that it fades out
	beetleship.alpha = beetleship.alpha + 0.01
end

--Function: MovePlanet
--Input: this function accepts an event listener
--Output: none
--Description: This function adds the scroll speed to the x-value of the girl
local function MovePlanet(event)
	--add the scroll speed to the x-value of the ship
	planet.x = planet.x - scrollSpeed2

	--change the transparency of the planet every time it so fast that it fades out
	planet.alpha = planet.alpha - 0.00000000000001
end

--MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
Runtime:addEventListener("enterFrame", MovePlanet)