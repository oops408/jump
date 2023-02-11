-- Variables to store the GUI and its elements
local gui = nil
local elements = {}

-- Function to create the GUI elements
function createElements()
    -- Create the GUI
    gui = Instance.new("ScreenGui")
    gui.Name = "My3DGui"
    gui.Parent = game.Players.LocalPlayer.PlayerGui

    -- Create the first element
    local element1 = Instance.new("TextLabel")
    element1.Name = "Element1"
    element1.Parent = gui
    element1.Text = "Element 1"
    element1.Position = UDim2.new(0.1, 0, 0.1, 0)
    elements[#elements + 1] = element1

    -- Create the second element
    local element2 = Instance.new("TextButton")
    element2.Name = "Element2"
    element2.Parent = gui
    element2.Text = "Element 2"
    element2.Position = UDim2.new(0.3, 0, 0.1, 0)
    elements[#elements + 1] = element2

    -- Create the third element
    local element3 = Instance.new("ImageLabel")
    element3.Name = "Element3"
    element3.Parent = gui
    element3.Image = "rbxassetid://1234567890"
    element3.Position = UDim2.new(0.5, 0, 0.1, 0)
    elements[#elements + 1] = element3
end

-- Function to update the GUI elements
function updateElements()
    for i, element in ipairs(elements) do
        -- Update each element based on your desired logic
        element.Position = element.Position + UDim2.new(0, 1, 0, 0)
    end
end

-- Connect the update elements function to the render step event
game:GetService("RunService").RenderStepped:Connect(updateElements)

-- Call the create elements function to initialize the GUI
createElements()
