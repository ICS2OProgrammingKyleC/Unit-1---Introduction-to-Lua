-- Title: TouchAndReact
-- Name: Kyle C
-- Course: ICS2O/3C
-- This program does something when I click on the button.

--set background colour
display.setDefault ("background", 0/255, 0/255, 0/255)

--hide status bar 
display.setStatusBar(display.HiddenStatusBar)

-- create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/blueButton.png", 198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true 

-- create red button, set its position and make it invisible 
local redButton = display.newImageRect("Images/redButton.png", 198, 96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false 

-- create text object, set its position and make it invisible
local textObject = display.newText ("Clicked!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (1, 1, 0)
textObject.isVisible = false

-- create checkmark, set its position and make it visible
local checkmark = display.newImageRect("Images/checkmark.png", 198, 96)
checkmark.x = 150
checkmark.y = 100
checkmark.isVisible = false 

-- function: blueButtonListener
-- Input: touch listener
-- Output: none 
-- Description: when blue button is clicked, it will make the text appear with the red button
local function BlueButtonListenser(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
		checkmark.isVisible = true

	end
	
	if (touch.phase == "ended")	then 
	    blueButton.isVisible = true 
	    redButton.isVisible = false
	    textObject.isVisible = false
	end
end

-- add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListenser)

-- function: redButtonListener
-- Input: touch listener
-- Output: none 
-- Description: when red button is clicked, it will make the text appear with the red button
local function RedButtonListenser(touch)

	if (touch.phase == "ended")	then 
	    redButton.isVisible = false 
	    blueButton.isVisible = true
	    textObject.isVisible = false
	    checkmark.isVisible = false 

	end
end

-- add the respective listeners to each object
redButton:addEventListener("touch", RedButtonListenser)

-- function: checkmarkListener
-- Input: touch listener
-- Output: none 
-- Description: when red button is clicked, it will make the text appear with the red button

