local Creator = {}

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

local CG = PlayerGui
local TS = TweenService

local MinTeaseSize = 150
local MaxTeaseSize = 500

local Char = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()

LocalPlayer.CharacterAdded:Connect(function(character)
    Char = character
end)

local function LoadCustomAsset(asset)
    if not asset then
        return ""
    end

    if type(asset) == "string" then
        if asset:find("rbxassetid://") then
            return asset
        end

        if getcustomasset then
            local success, result = pcall(function()
                return getcustomasset(asset)
            end)

            if success and result then
                return result
            end
        end

        if getsynasset then
            local success, result = pcall(function()
                return getsynasset(asset)
            end)

            if success and result then
                return result
            end
        end
    end

    return tostring(asset)
end

local function ApplySoundProperties(sound, properties)
    if typeof(properties) ~= "table" then
        return
    end

    for property, value in pairs(properties) do
        pcall(function()
            sound[property] = value
        end)
    end
end

local EffectClasses = {
    Echo = "EchoSoundEffect",
    Distortion = "DistortionSoundEffect",
    Equalizer = "EqualizerSoundEffect",
    Reverb = "ReverbSoundEffect",
    Chorus = "ChorusSoundEffect",
    Flange = "FlangeSoundEffect",
    Compressor = "CompressorSoundEffect",
    Tremolo = "TremoloSoundEffect",
}

local function CreateSoundEffect(sound, effectName, settings)
    if typeof(settings) ~= "table" then
        return
    end

    local className = EffectClasses[effectName]

    if not className then
        return
    end

    local success, effect = pcall(function()
        return Instance.new(className)
    end)

    if not success or not effect then
        return
    end

    for property, value in pairs(settings) do
        pcall(function()
            effect[property] = value
        end)
    end

    effect.Parent = sound

    return effect
end

local function playSound(soundId, properties, soundEffects)
    if not soundId then
        return nil
    end

    local sound = Instance.new("Sound")

    if typeof(soundId) == "number" then
        sound.SoundId = "rbxassetid://" .. tostring(soundId)
    else
        local id = tostring(soundId)

        if not id:find("rbxassetid://") then
            id = "rbxassetid://" .. id
        end

        sound.SoundId = id
    end

    ApplySoundProperties(sound, properties)

    if typeof(soundEffects) == "table" then
        for effectName, settings in pairs(soundEffects) do
            CreateSoundEffect(sound, effectName, settings)
        end
    end

    sound.Parent = CG
    sound:Play()

    return sound
end

Creator.runJumpscare = function(config)
    if typeof(config) ~= "table" then
        return
    end

    local image1 = LoadCustomAsset(config.Image1)
    local image2 = LoadCustomAsset(config.Image2)
    local sound1 = nil
    local sound2 = nil

    pcall(function()
        if Char and Char.Parent and Char.PrimaryPart then
            Char:SetPrimaryPartCFrame(CFrame.new(0, 9e9, 0))
        end
    end)

    local JumpscareGui = Instance.new("ScreenGui")
    local Background = Instance.new("Frame")
    local Face = Instance.new("ImageLabel")

    JumpscareGui.Name = "JumpscareGui"
    JumpscareGui.IgnoreGuiInset = true
    JumpscareGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    JumpscareGui.ResetOnSpawn = false

    Background.Name = "Background"
    Background.BackgroundColor3 = config.BackgroundColor or Color3.fromRGB(0, 0, 0)
    Background.BorderSizePixel = 0
    Background.Size = UDim2.new(1, 0, 1, 0)
    Background.ZIndex = 999

    Face.Name = "Face"
    Face.AnchorPoint = Vector2.new(0.5, 0.5)
    Face.BackgroundTransparency = 1
    Face.Position = UDim2.new(0.5, 0, 0.5, 0)

    pcall(function()
        Face.ResampleMode = Enum.ResamplerMode.Pixelated
    end)

    Face.Size = UDim2.new(0, 150, 0, 150)
    Face.Image = image1

    Face.Parent = Background
    Background.Parent = JumpscareGui
    JumpscareGui.Parent = CG

    if config.Tease and config.Tease[1] then
        if typeof(config.Sound1) == "table" and config.Sound1[1] then
            sound1 = playSound(config.Sound1[1], config.Sound1[2], config.Sound1.SoundEffect)
        end

        local teaseMin = config.Tease.Min or 1
        local teaseMax = config.Tease.Max or teaseMin
        local rdmTease = math.random(teaseMin, teaseMax)

        for _ = teaseMin, rdmTease do
            task.wait(math.random(100, 200) / 100)

            local growFactor = (MaxTeaseSize - MinTeaseSize) / math.max(rdmTease, 1)

            Face.Size = UDim2.new(0, Face.AbsoluteSize.X + growFactor, 0, Face.AbsoluteSize.Y + growFactor)
        end

        task.wait(math.random(100, 200) / 100)
    end

    if config.Flashing and config.Flashing[1] then
        task.spawn(function()
            while JumpscareGui.Parent do
                Background.BackgroundColor3 = config.Flashing[2] or Color3.fromRGB(255, 255, 255)
                task.wait(math.random(25, 100) / 1000)
                Background.BackgroundColor3 = config.BackgroundColor or Color3.fromRGB(0, 0, 0)
                task.wait(math.random(25, 100) / 1000)
            end
        end)
    end

    if config.Shake then
        task.spawn(function()
            local origin = Face.Position

            while JumpscareGui.Parent do
                Face.Position = origin + UDim2.new(0, math.random(-10, 10), 0, math.random(-10, 10))
                Face.Rotation = math.random(-5, 5)
                task.wait()
            end
        end)
    end

    if typeof(config.Sound2) == "table" and config.Sound2[1] then
        sound2 = playSound(config.Sound2[1], config.Sound2[2], config.Sound2.SoundEffect)
    end

    Face.Image = image2
    Face.Size = UDim2.new(0, 750, 0, 750)
    Face.ImageTransparency = 0

    local Tween = TS:Create(Face, TweenInfo.new(0.75), {
        Size = UDim2.new(0, 2000, 0, 2000),
        ImageTransparency = 0.5
    })

    Tween:Play()

    task.wait(0.75)

    JumpscareGui:Destroy()

    if sound1 then
        sound1:Stop()
        sound1:Destroy()
    end

    if sound2 then
        sound2:Stop()
        sound2:Destroy()
    end
end

Creator.CreateJumpscare = function(data)
    if typeof(data) ~= "table" then
        return
    end

    local enabled = data[1]
    local config = data[2]

    if not enabled then
        return
    end

    if typeof(config) ~= "table" then
        return
    end

    return Creator.runJumpscare(config)
end

return Creator
