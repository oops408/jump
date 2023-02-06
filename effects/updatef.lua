-- Variables to store the animation and its frames
local animation = nil
local frames = {}

-- Function to update the animation's frames
function updateFrames()
    for i, frame in ipairs(frames) do
        -- Update each frame based on your desired logic
        frame.Position = frame.Position + Vector3.new(1, 0, 0)
    end
end

-- Connect the update frames function to the render step event
game:GetService("RunService").RenderStepped:Connect(updateFrames)
