-- Variables to store the player and platforms
local player = nil
local platforms = nil

-- Function to move the player
function movePlayer(input)
    local character = player.Character
    local human = character.Humanoid
    local speed = 50

    -- Move the player left or right
    if input == 'left' then
        human.WalkSpeed = -speed
    elseif input == 'right' then
        human.WalkSpeed = speed
    else
        human.WalkSpeed = 0
    end
end

-- Function to check for platform collisions
function onPlayerTouched(hit)
    local character = player.Character
    local human = character.Humanoid

    -- If the player hits a platform, turn off gravity
    for _, platform in pairs(platforms) do
        if hit.Parent == platform then
            human.PlatformStand = true
        end
    end
end

-- Connect events to the player
player.CharacterAdded:Connect(function(character)
    local human = character.Humanoid
    human.Changed:Connect(function(property)
        -- If the player falls off a platform, turn on gravity
        if property == 'PlatformStand' and not human.PlatformStand then
            human.PlatformStand = false
        end
    end)
end)

-- Connect the touch event to the player
player.Character.Touched:Connect(onPlayerTouched)

-- Connect the move player function to the key events
game:GetService("UserInputService").InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.A then
        movePlayer('left')
    elseif input.KeyCode == Enum.KeyCode.D then
        movePlayer('right')
    end
end)
game:GetService("UserInputService").InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.A or input.KeyCode == Enum.KeyCode.D then
        movePlayer()
    end
end)
