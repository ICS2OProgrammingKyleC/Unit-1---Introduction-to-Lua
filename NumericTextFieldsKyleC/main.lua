-- Title: NumericTextFields
-- Name: Kyle C 
-- Course: ICS2O/3C
-- This program displays a math question and asks the user to answer in a numeric textfield.
-- terminal.

--hide the status bar 
display.setStatusBar(display.HiddenStatusBar)

--sets the background colour 
display.setDefault("background", 140/255, 247/255, 123/255)

--Local variables

--create local variables 
local questionObject
local correctObject
local incorrectObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local incorrectAnswer
local correctAnswer
local randomOperator

-- local functions 
local function AskQuestion()
	--generate 2 random numbers between a max. and a min. number
	randomOperator = math.random(0,3)
	randomNumber1 = math.random(0,10)
	randomNumber2 = math.random(0,10)

 
 	if (randomOperator == 1) then
 		correctAnswer = randomNumber1 + randomNumber2
	
		--create questionin text object
		questionObject.text = randomNumber1 .. " + " .. randomNumber2 .. " = "

	elseif (randomOperator == 2) then
	 	correctAnswer = randomNumber1 - randomNumber2

		--create questionin text object
		questionObject.text = randomNumber1 .. " - " .. randomNumber2 .. " = "

	elseif (randomOperator == 3) then
	 	correctAnswer = randomNumber1 * randomNumber2

		--create questionin text object
		questionObject.text = randomNumber1 .. " * " .. randomNumber2 .. " = "
	end	

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	--User beging editing "numericfeild"
	if ( event.phase == "began" ) then

		--clear text field 
		event.target.text = ""

	elseif event.phase == "submitted" then

		-- when the answer is submitted (enter key is pressed) set user input bto user's answer
		userAnswer = tonumber(event.target.text)

		--if the users answer and the correct answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true 
			incorrectObject.isVisible = false
			timer.performWithDelay(2000,HideCorrect)
		else 
			correctObject.isVisible = false 
			incorrectObject.isVisible = true
			timer.performWithDelay(2000,HideCorrect)


		end
	end
end

--object Creation 

-- display a question and sets the color 
questionObject = display.newText("", display.contentWidth/3, display.contentHeight/2, nil, 50)
questionObject:setTextColor(155/255, 42/255, 198/255)

-- create the correct  text object and make it invisible
correctObject = display.newText("correct boi!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(155/255, 42/255, 198/255)
correctObject.isVisible = false

-- create the incorrect  text object and make it invisible
incorrectObject = display.newText("incorrect boi!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
incorrectObject:setTextColor(155/255, 42/255, 198/255)
incorrectObject.isVisible = false

-- create numeric field 

numericField = native.newTextField(display.contentWidth/2, display.contentHeight/2, 150, 80)
numericField.inputType = "number"

--add the event listener fo the numeric field
numericField:addEventListener( "userInput", NumericFieldListener)

-- function calls

-- call the functionto as the Question
AskQuestion()