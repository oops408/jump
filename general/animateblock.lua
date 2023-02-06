-- Variables to store the block and its animation
local block = nil
local animation = nil

-- Function to animate the block
function animateBlock()
    local rotation = 0

    -- Update the block's rotation every frame
    game:GetService("RunService").RenderStepped:Connect(function()
        rotation = rotation + math.pi / 180
        block.CFrame = CFrame.new(block.Position) * CFrame.Angles(0, rotation, 0)
    end)
end

-- Start the block's animation
animateBlock()
