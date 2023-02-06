-- Variables to store the object and its shadow
local object = nil
local shadow = nil

-- Function to update the shadow's position and size
function updateShadow()
    local light = game.Lighting:GetChildren()[1]
    local normal = (object.Position - light.Position).unit
    local distance = (object.Position - light.Position).magnitude
    local size = object.Size.Z * 2

    -- Update the shadow's position and size based on the light and object
    shadow.CFrame = CFrame.new(object.Position + normal * 0.1, light.Position) * CFrame.new(0, 0, size / 2)
    shadow.Size = Vector3.new(size, size, 0.1)
    shadow.Transparency = distance / 150
end

-- Connect the update shadow function to the render step event
game:GetService("RunService").RenderStepped:Connect(updateShadow)
