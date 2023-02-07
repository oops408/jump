-- Variables to store the bird and its parts
local bird = nil
local head = nil
local body = nil
local wing = nil
local tail = nil

-- Function to update the bird's position
function updateBird()
    local position = bird.Position + Vector3.new(1, 0, 0)
    bird.CFrame = CFrame.new(position)
end

-- Function to update the bird's head rotation
function updateHead()
    local rotation = head.Rotation + Vector3.new(0, 0, math.pi / 180)
    head.CFrame = CFrame.new(head.Position) * CFrame.Angles(rotation)
end

-- Function to update the bird's body rotation
function updateBody()
    local rotation = body.Rotation + Vector3.new(0, 0, math.pi / 180)
    body.CFrame = CFrame.new(body.Position) * CFrame.Angles(rotation)
end

-- Function to update the bird's wing rotation
function updateWing()
    local rotation = wing.Rotation + Vector3.new(0, 0, math.pi / 180)
    wing.CFrame = CFrame.new(wing.Position) * CFrame.Angles(rotation)
end

-- Function to update the bird's tail rotation
function updateTail()
    local rotation = tail.Rotation + Vector3.new(0, 0, math.pi / 180)
    tail.CFrame = CFrame.new(tail.Position) * CFrame.Angles(rotation)
end

-- Connect the update functions to the render step event
game:GetService("RunService").RenderStepped:Connect(function()
    updateBird()
    updateHead()
    updateBody()
    updateWing()
    updateTail()
end)
