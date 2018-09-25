-----------------------------------------------------------------------------------------
--Title: AreaRectCircle
-- Name: Kyle C
-- course:ICS2O/3C
-- This program displays a rectangle and shows its area

-- create my local variables
local areaTextRectangle
local textSizeRectangle = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

local areaTextCircle
local textsizeCircle = 50
local myCircle
local radiusOfCircle = 200
local areaOfcircle
local PI = 3.14

-- set the background colour of my screen.Remember that colors are between 0 and 1.
display.setDefault("background", 0/255, 255/255, 246/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--draw the circle that is half the width and height of the screen size.
myCircle = display.newCircle(852, 140, 130)

-- anchor the rectangle in the top left corner of the screen and set nits (x,y) position
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

-- set the width of the Border
myRectangle.strokeWidth = 20

-- set the width of the Border
myCircle.strokeWidth = 20

-- set the colour of the rectangle -----------------------------------------------------------------------------------------
myRectangle:setFillColor(255, 0, 0)

-- set the colour of the circle -----------------------------------------------------------------------------------------
myCircle:setFillColor(0, 255, 0)

-- set the colour of the border 
myRectangle:setStrokeColor(0, 0, 0)

-- set the colour of the border 
myCircle:setStrokeColor(0, 0, 0)

-- calculate the area 
areaOfRectangle = widthOfRectangle * heightOfRectangle

-- write the area on screen. take into consideration the size of the font when positioning it on the screen
areaTextRectangle= display.newText("The area of this rectangle with a width of \n" ..
	widthOfRectangle .. " and height of " .. heightOfRectangle .. " is " ..
	areaOfRectangle .. " pixels².", 100, 100, Arial, textSizeRectangle)

-- write the area on screen. take into consideration the size of the font when positioning it on the screen
areaTextCircle= display.newText("The area of this circle with a radius of \n" ..
	radiusOfCircle ..  " is " ..
	areaOfRectangle .. " pixels².", 100, 100, Arial, textsizeCircle)
-- anchor the text and set its (x,y) position

-- anchor the text and set its (x,y) position
areaTextRectangle.anchorX = 0
areaTextRectangle.anchorY = 0
areaTextRectangle.x = 20
areaTextRectangle.y = display.contentHeight/2

-- anchor the text and set its (x,y) position
areaTextCircle.anchorX = 0
areaTextCircle.anchorY = 0
areaTextCircle.x = 20
areaTextCircle.y = 550

-- set the colour of the newText
areaTextRectangle:setTextColor(255, 238, 0)
