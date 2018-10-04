--Title: TouchAndDrag
--Name: Kyle C
--Course: ICS2O/3C
-- This program displays images that reacts to a person's finger.

--hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--local variables. I am stil trying to get the x-value to be set poperly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local girl2 = display.newImageRect("Images/girl2.png", 150, 150)
local girl2Width = girl2.width 
local girl2Height = girl2.height 

local girl3 = display.newImageRect("Images/girl3.png", 150, 150)
local girl3Width = girl3.width 
local girlHeight = girl3.height 

-- my boolean variables to keep track of which object I touched first 
local alreadyTouchedGirl2 = false
local alreadyTouchedGirl3 = false

--set the initial x and y position of my Image 
girl2.x = 400
girl2.y = 500

girl3.x = 300
girl3.y = 200

-- Function: Girl2 
-- Input: touch listener
-- output: none
-- Description: when girl2 is touched, move her
local function Girl2Listener(touch)

   if (touch.phase == "began") then
 	   if (alreadyTouchedGirl3 == false) then
 		alreadyTouchedGirl2 = true 
       end
    end

    if ( (touch.phase == "moved") and (alreadyTouchedGirl2 == true) ) then
    	girl2.x = touch.x
    	girl2.y = touch.y
    end

    if (touch.phase == "ended") then
        alreadyTouchedGirl2 = false
        alreadyTouchedGirl3 = false
    end
end

-- add the respective listeners to each object
girl2:addEventListener("touch", Girl2Listener)

-- Function: Girl3
-- Input: touch listener
-- output: none
-- Description: when girl3 is touched, move her
local function Girl3Listener(touch)

   if (touch.phase == "began") then
 	   if (alreadyTouchedGirl2 == false) then
 		alreadyTouchedGirl3 = true 
       end
    end

    if ( (touch.phase == "moved") and (alreadyTouchedGirl3 == true) ) then
    	girl3.x = touch.x
    	girl3.y = touch.y
    end

    if (touch.phase == "ended") then
        alreadyTouchedGirl3 = false
        alreadyTouchedGirl2 = false
    end
end

-- add the respective listeners to each object
girl3:addEventListener("touch", Girl3Listener)