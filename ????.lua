require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Mode Floor 2 Theme",true)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local stamina = 100
local maxStamina = 100
local staminaDrain = 25
local staminaRegen = 15
local isSprinting = false
local canSprint = true
local sprintCoroutine = nil

spawn(function()
    while true do
        wait(0.5)
        pcall(function()
            if humanoid and not isSprinting then
                humanoid.WalkSpeed = 16
            end
        end)
    end
end)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SprintHUD"
screenGui.Parent = player:WaitForChild("PlayerGui")

local sprintButton = Instance.new("TextButton")
sprintButton.Size = UDim2.new(0, 80, 0, 80)
sprintButton.Position = UDim2.new(1, -100, 0.5, -40)
sprintButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
sprintButton.BackgroundTransparency = 0.3
sprintButton.Text = "SPRINT"
sprintButton.TextColor3 = Color3.new(1, 1, 1)
sprintButton.TextSize = 14
sprintButton.Font = Enum.Font.SourceSansBold
sprintButton.BorderSizePixel = 2
sprintButton.BorderColor3 = Color3.new(1, 1, 1)
sprintButton.Parent = screenGui

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(1, 0)
buttonCorner.Parent = sprintButton

local staminaFrame = Instance.new("Frame")
staminaFrame.Size = UDim2.new(0, 80, 0, 10)
staminaFrame.Position = UDim2.new(1, -100, 0.5, 45)
staminaFrame.BackgroundColor3 = Color3.new(0, 0, 0)
staminaFrame.BackgroundTransparency = 0.5
staminaFrame.BorderSizePixel = 1
staminaFrame.BorderColor3 = Color3.new(1, 1, 1)
staminaFrame.Parent = screenGui

local staminaBar = Instance.new("Frame")
staminaBar.Size = UDim2.new(1, 0, 1, 0)
staminaBar.BackgroundColor3 = Color3.new(0, 1, 0)
staminaBar.BorderSizePixel = 0
staminaBar.Parent = staminaFrame

local staminaText = Instance.new("TextLabel")
staminaText.Size = UDim2.new(1, 0, 1, 0)
staminaText.Position = UDim2.new(0, 0, 0, -12)
staminaText.BackgroundTransparency = 1
staminaText.Text = "100%"
staminaText.TextColor3 = Color3.new(1, 1, 1)
staminaText.TextSize = 10
staminaText.Font = Enum.Font.SourceSansBold
staminaText.Parent = staminaFrame

local function updateBar()
    staminaBar.Size = UDim2.new(stamina / maxStamina, 0, 1, 0)
    staminaText.Text = math.floor(stamina) .. "%"
    
    if stamina <= 30 then
        staminaBar.BackgroundColor3 = Color3.new(1, 0, 0)
        sprintButton.BackgroundColor3 = Color3.new(0.5, 0, 0)
    elseif stamina <= 60 then
        staminaBar.BackgroundColor3 = Color3.new(1, 1, 0)
        sprintButton.BackgroundColor3 = Color3.new(0.5, 0.5, 0)
    else
        staminaBar.BackgroundColor3 = Color3.new(0, 1, 0)
        sprintButton.BackgroundColor3 = Color3.new(0, 0.5, 0)
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
            sprintButton.BackgroundTransparency = 0.3
        end
    end
end)

local function stopSprint()
    if isSprinting then
        isSprinting = false
        humanoid.WalkSpeed = 16
        sprintButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        sprintButton.BackgroundTransparency = 0.3
        sprintButton.Text = "SPRINT"
        if sprintCoroutine then
            coroutine.close(sprintCoroutine)
            sprintCoroutine = nil
        end
    end
end

local function startSprint()
    if isSprinting then
        stopSprint()
        wait(0.1)
    end
    if canSprint and stamina > 0 then
        isSprinting = true
        humanoid.WalkSpeed = 21
        sprintButton.BackgroundColor3 = Color3.new(0, 0.8, 0)
        sprintButton.BackgroundTransparency = 0
        sprintButton.Text = "SPRINTING"
        
        sprintCoroutine = coroutine.create(function()
            while isSprinting and stamina > 0 do
                wait(0.1)
                stamina = math.max(0, stamina - staminaDrain / 10)
                updateBar()
                if stamina <= 0 then
                    isSprinting = false
                    canSprint = false
                    humanoid.WalkSpeed = 16
                    sprintButton.BackgroundColor3 = Color3.new(0.3, 0, 0)
                    sprintButton.BackgroundTransparency = 0.5
                    sprintButton.Text = "RECHARGE"
                    break
                end
            end
        end)
        coroutine.resume(sprintCoroutine)
    end
end

sprintButton.MouseButton1Down:Connect(startSprint)
sprintButton.MouseButton1Up:Connect(stopSprint)

sprintButton.TouchTap:Connect(function()
    if isSprinting then
        stopSprint()
    else
        startSprint()
    end
end)

player.CharacterAdded:Connect(function(newChar)
    character = newChar
    humanoid = character:WaitForChild("Humanoid")
    stamina = maxStamina
    isSprinting = false
    canSprint = true
    updateBar()
    sprintButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
    sprintButton.BackgroundTransparency = 0.3
    sprintButton.Text = "SPRINT"
    if sprintCoroutine then
        coroutine.close(sprintCoroutine)
        sprintCoroutine = nil
    end
end)

spawn(function()
    while true do
        wait(0.1)
        pcall(function()
            local lighting = game:GetService("Lighting")
            lighting.FogColor = Color3.new(0, 0, 0)
            lighting.FogEnd = 100
            lighting.FogStart = 50
        end)
    end
end)

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://108780908532387"
sound.Volume = 0.5
sound.Looped = true
sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
sound:Play()

local sound = Instance.new("Sound")
sound.SoundId = "rbxassetid://140635119444127"
sound.Volume = 1
sound.Looped = true
sound.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart

spawn(function()
    while true do
        wait(0.5)
        pcall(function()
            for _, v in pairs(workspace:GetDescendants()) do
                if v.Name:find("Door") or v.Name:find("door") then
                    if not v:FindFirstChild("DoorTouch") then
                        v.Touched:Connect(function(hit)
                            if hit.Parent == game.Players.LocalPlayer.Character then
                                sound:Play()
                            end
                        end)
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while true do
        wait(0.5)
        for _, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Part") and not v:IsDescendantOf(game.Players.LocalPlayer.Character) then
                v.Material = Enum.Material.Slate
                v.BrickColor = BrickColor.new("Dark stone grey")
            end
            if v.Name:find("Door") or v.Name:find("door") then
                for _, child in pairs(v:GetDescendants()) do
                    if child:IsA("BillboardGui") or child.Name:find("Number") or child.Name:find("Num") then
                        child:Destroy()
                    end
                end
            end
        end
    end
end)

local tool = LoadCustomInstance("rbxassetid://12093585726")
tool.Parent = game:GetService("Players").LocalPlayer.Backpack

local anim1 = Instance.new("Animation")
anim1.Name = "CrucifixAnim1"
anim1.AnimationId = "rbxassetid://6516424098"
anim1.Parent = tool

local anim2 = Instance.new("Animation")
anim2.Name = "CrucifixAnim2"
anim2.AnimationId = "rbxassetid://97939285526557"
anim2.Parent = tool

local anim3 = Instance.new("Animation")
anim3.Name = "CrucifixAnim3"
anim3.AnimationId = "rbxassetid://73237356814157"
anim3.Parent = tool

local tracks = {}
local isPlaying = false

tool.Equipped:Connect(function()
    local plr = game.Players.LocalPlayer
    local char = plr.Character
    local humanoid = char:FindFirstChildOfClass("Humanoid")
    local animator = humanoid:FindFirstChildOfClass("Animator")
    
    if not tracks[1] then
        tracks[1] = animator:LoadAnimation(anim1)
        tracks[2] = animator:LoadAnimation(anim2)
        tracks[3] = animator:LoadAnimation(anim3)
    end
    
    if not isPlaying then
        isPlaying = true
        tracks[1]:Play()
        tracks[2]:Play()
        tracks[3]:Play()
    end
end)

tool.Unequipped:Connect(function()
    if isPlaying and tracks[1] then
        isPlaying = false
        tracks[1]:Stop()
        tracks[2]:Stop()
        tracks[3]:Stop()
    end
end)
