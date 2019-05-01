-----------------------------------------------------------------------------------------
--
-- Created by: Matsuru Hoshi
-- Created on: Apr 30, 2019
--
-- This file plays with animation
-----------------------------------------------------------------------------------------

local sheetOptionsIdle =
{
    width = 500,
    height = 447,
    numFrames = 1
}
local sheetIdleNinja = graphics.newImageSheet( "assets/NinjaIdle.png", sheetOptionsIdle )

local sheetOptionsWalk =
{
    width = 500,
    height = 447,
    numFrames = 3
}
local sheetWalkingNinja = graphics.newImageSheet( "assets/NinjaRunning.png", sheetOptionsWalk )


-- sequences table
local sequence_data = {
    -- consecutive frames sequence
    {
        name = "idle",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetIdleNinja
    },
    {
        name = "walk",
        start = 1,
        count = 10,
        time = 800,
        loopCount = 0,
        sheet = sheetWalkingNinja
    }
}

local ninja = display.newSprite( sheetIdleNinja, sequence_data )
ninja.x = display.contentWidth / 2
ninja.y = 300
ninja.xScale = 250/587
ninja.yScale = 301/707

ninja:play()

-- After a short time, swap the sequence to 'seq2' which uses the second image sheet
local function swapSheet()
    ninja:setSequence( "walk" )
    ninja:play()
    print("walk")
end

timer.performWithDelay( 2000, swapSheet )