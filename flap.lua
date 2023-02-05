-- Variables to store the character and its animation
local character = nil
local animation = nil

-- Function to play the flap animation
function flap()
    animation:Play()
end

-- Connect the flap function to the mouse click event
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        flap()
    end
end)
