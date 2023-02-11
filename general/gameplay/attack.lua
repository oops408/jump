-- Variables to store the character and its parts
local character = game.Players.LocalPlayer.Character
local humanoid = character:WaitForChild("Humanoid")
local rightArm = character:WaitForChild("Right Arm")

-- Function to animate the attack
function attack()
    -- Play the attack animation
    humanoid.Animator:PlayAnimation("Attack")

    -- Wait for the animation to finish
    wait(humanoid.Animator.AnimationDuration)

    -- Create a part to represent the attack
    local attackPart = Instance.new("Part")
    attackPart.Name = "AttackPart"
    attackPart.Parent = character
    attackPart.Size = Vector3.new(1, 1, 1)
    attackPart.Anchored = true
    attackPart.CanCollide = false
    attackPart.CFrame = rightArm.CFrame * CFrame.new(1, 0, 0)

    -- Wait for a short duration
    wait(0.5)

    -- Destroy the attack part
    attackPart:Destroy()
end

-- Connect the attack function to the mouse button 1 down event
game.Players.LocalPlayer:GetMouse().Button1Down:Connect(attack)
