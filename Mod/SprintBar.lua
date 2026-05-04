local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SprintGui"
screenGui.Parent = player:WaitForChild("PlayerGui")

local sprintFrame = Instance.new("Frame")
sprintFrame.Size = UDim2.new(0.2, 0, 0.05, 0)
sprintFrame.Position = UDim2.new(0.78, 0, 0.9, 0)
sprintFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
sprintFrame.BorderSizePixel = 2
sprintFrame.BorderColor3 = Color3.fromRGB(255, 255, 255)
sprintFrame.Parent = screenGui

local sprintBar = Instance.new("Frame")
sprintBar.Size = UDim2.new(1, 0, 1, 0)
sprintBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
sprintBar.BorderSizePixel = 0
sprintBar.Parent = sprintFrame

local sprintText = Instance.new("TextLabel")
sprintText.Size = UDim2.new(1, 0, 1, 0)
sprintText.BackgroundTransparency = 1
sprintText.Text = "SPRINT"
sprintText.TextColor3 = Color3.fromRGB(255, 255, 255)
sprintText.TextScaled = true
sprintText.Font = Enum.Font.GothamBold
sprintText.Parent = sprintFrame

local maxStamina = 100
local currentStamina = maxStamina
local isSprinting = false
local walkingSpeed = 13
local sprintSpeed = 40

local function updateStaminaBar()
    sprintBar.Size = UDim2.new(currentStamina / maxStamina, 0, 1, 0)
    
    if currentStamina / maxStamina > 0.5 then
        sprintBar.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
    elseif currentStamina / maxStamina > 0.25 then
        sprintBar.BackgroundColor3 = Color3.fromRGB(255, 255, 0)
    else
        sprintBar.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
    end
end

local function startSprint()
    if currentStamina > 0 and not isSprinting then
        isSprinting = true
        humanoid.WalkSpeed = sprintSpeed
        
        while isSprinting and currentStamina > 0 do
            currentStamina = math.max(0, currentStamina - 10)
            updateStaminaBar()
            
            if currentStamina == 0 then
                stopSprint()
            end
            task.wait(0.1)
        end
    end
end

local function stopSprint()
    if isSprinting then
        isSprinting = false
        humanoid.WalkSpeed = walkingSpeed
        
        while not isSprinting and currentStamina < maxStamina do
            currentStamina = math.min(maxStamina, currentStamina + 30)
            updateStaminaBar()
            task.wait(0.1)
        end
    end
end

local textBox = Instance.new("TextBox")
textBox.Size = UDim2.new(0.15, 0, 0.07, 0)
textBox.Position = UDim2.new(0.83, 0, 0.8, 0)
textBox.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
textBox.BorderSizePixel = 2
textBox.BorderColor3 = Color3.fromRGB(255, 255, 255)
textBox.Text = "SPRINT"
textBox.TextColor3 = Color3.fromRGB(255, 255, 255)
textBox.TextScaled = true
textBox.Font = Enum.Font.GothamBold
textBox.Parent = screenGui

textBox.TouchTap:Connect(function()
    if isSprinting then
        stopSprint()
    else
        startSprint()
    end
end)

game:GetService("UserInputService").InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
        startSprint()
    end
end)

game:GetService("UserInputService").InputEnded:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.LeftShift or input.KeyCode == Enum.KeyCode.RightShift then
        stopSprint()
    end
end)

player.CharacterAdded:Connect(function(newChar)
    character = newChar
    humanoid = character:WaitForChild("Humanoid")
    currentStamina = maxStamina
    updateStaminaBar()
    isSprinting = false
    humanoid.WalkSpeed = walkingSpeed
end)

updateStaminaBar()
