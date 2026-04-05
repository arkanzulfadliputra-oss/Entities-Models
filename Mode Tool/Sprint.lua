local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
humanoid.WalkSpeed = 13

local stamina = 100
local maxStamina = 100
local staminaDrain = 25
local staminaRegen = 15
local isSprinting = false
local canSprint = true

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "StaminaHUD"
screenGui.Parent = player:WaitForChild("PlayerGui")

local staminaFrame = Instance.new("Frame")
staminaFrame.Size = UDim2.new(0, 200, 0, 20)
staminaFrame.Position = UDim2.new(1, -210, 1, -30)
staminaFrame.BackgroundColor3 = Color3.new(0, 0, 0)
staminaFrame.BackgroundTransparency = 0.5
staminaFrame.BorderSizePixel = 0
staminaFrame.Parent = screenGui

local staminaBar = Instance.new("Frame")
staminaBar.Size = UDim2.new(1, 0, 1, 0)
staminaBar.BackgroundColor3 = Color3.new(0, 1, 0)
staminaBar.BorderSizePixel = 0
staminaBar.Parent = staminaFrame

local staminaText = Instance.new("TextLabel")
staminaText.Size = UDim2.new(1, 0, 1, 0)
staminaText.BackgroundTransparency = 1
staminaText.Text = "100%"
staminaText.TextColor3 = Color3.new(1, 1, 1)
staminaText.TextSize = 12
staminaText.Font = Enum.Font.SourceSansBold
staminaText.Parent = staminaFrame

local function updateBar()
    staminaBar.Size = UDim2.new(stamina / maxStamina, 0, 1, 0)
    staminaText.Text = math.floor(stamina) .. "%"
    
    if stamina <= 30 then
        staminaBar.BackgroundColor3 = Color3.new(1, 0, 0)
    elseif stamina <= 60 then
        staminaBar.BackgroundColor3 = Color3.new(1, 1, 0)
    else
        staminaBar.BackgroundColor3 = Color3.new(0, 1, 0)
    end
end

spawn(function()
    while true do
        wait(0.1)
        if not isSprinting and stamina < maxStamina then
            stamina = math.min(maxStamina, stamina + staminaRegen / 10)
            updateBar()
        end
        if stamina >= maxStamina and not canSprint then
            canSprint = true
        end
    end
end)

local userInput = game:GetService("UserInputService")
userInput.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift then
        if canSprint and stamina > 0 then
            isSprinting = true
            humanoid.WalkSpeed = 21
            spawn(function()
                while isSprinting and stamina > 0 do
                    wait(0.1)
                    stamina = math.max(0, stamina - staminaDrain / 10)
                    updateBar()
                    if stamina <= 0 then
                        isSprinting = false
                        canSprint = false
                        humanoid.WalkSpeed = 13
                    end
                end
            end)
        end
    end
end)

userInput.InputEnded:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift then
        isSprinting = false
        humanoid.WalkSpeed = 13
    end
end)

player.CharacterAdded:Connect(function(newChar)
    character = newChar
    humanoid = character:WaitForChild("Humanoid")
    humanoid.WalkSpeed = 13
    stamina = maxStamina
    isSprinting = false
    canSprint = true
    updateBar()
end)
