--
-- main.lua
--
-- Created by Ethan Bellem
-- Created on Feb 2018
--
-- This program will calculate the cost of pizza using diameter in inches
-----------------------------------------------------------------------------------------

display.setDefault( "background", 0, .7, 0.3)

local directions = display.newText( "Enter the diameter of your pizza in:", display.contentCenterX, 200, native.systemFont, 100)
directions.id = "Instructions"
directions:setTextColor(1, 1, 1)

local diameterTextField = native.newTextField( 600, 450, 500, 150)
local enterButton = display.newImageRect( "enterButton.png", 600, 270)
enterButton.x = 1300
enterButton.y = 450
enterButton.id = "Enter Button"

local function onButtonPressed( event )
    local subtotal
    local tax
    local total
    local diameter = diameterTextField.text
    
    -- calculates the subtotal

    subtotal = 0.75 + 1 + (0.5*diameter)
    local subtotalText = display.newText( "Subtotal: $" .. subtotal, 400, 800, native.systemFont, 100)
    subtotalText:setTextColor(1, 1, 1)

    -- calculates the tax
    tax = subtotal * 0.13
    local taxText = display.newText( "Tax: $" .. tax, 1600, 800, native.systemFont, 100)
    taxText:setTextColor(1, 1, 1)

    -- calculates the total
    total = subtotal + tax
    local totalText = display.newText( "Total: $" .. total, 1000, 1200, native.systemFont, 100)
    totalText:setTextColor(1, 1, 1)

    return true
end

enterButton:addEventListener( "touch", onButtonPressed)

