local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local function createGrudgeModel()
    local model = Instance.new("Model")
    model.Name = "Grudge"
    
    local rushNew = Instance.new("Part")
    rushNew.Name = "RushNew"
    rushNew.Size = Vector3.new(4, 4, 1)
    rushNew.Transparency = 1
    rushNew.Anchored = true
    rushNew.CanCollide = false
    rushNew.Parent = model
    
    local attFace = Instance.new("Attachment")
    attFace.Parent = rushNew
    attFace.Position = Vector3.new(0, 0, 0.6)
    
    local face = Instance.new("ParticleEmitter")
    face.Parent = attFace
    face.Texture = "rbxassetid://10528077679"
    face.Rate = 100
    face.SpreadAngle = Vector2.new(360, 360)
    face.Lifetime = NumberRange.new(0.3)
    face.Speed = NumberRange.new(0)
    face.Color = ColorSequence.new(Color3.fromRGB(128, 0, 255))
    face.Size = NumberSequence.new(6)
    face.Transparency = NumberSequence.new(0.2)
    
    local light = Instance.new("PointLight")
    light.Parent = rushNew
    light.Brightness = 10
    light.Color = Color3.fromRGB(128, 0, 255)
    light.Range = 25
    
    local footstepsSound = Instance.new("Sound")
    footstepsSound.Parent = rushNew
    footstepsSound.SoundId = "rbxassetid://10384719706"
    footstepsSound.Volume = 0.4
    footstepsSound.Looped = true
    
    local distort = Instance.new("DistortionSoundEffect")
    distort.Parent = footstepsSound
    distort.Level = 0.5
    
    return model
end

local function createJumpscare()
    local gui = Instance.new("ScreenGui")
    gui.Name = "JumpscareGui"
    gui.DisplayOrder = 999
    gui.IgnoreGuiInset = true
    gui.Parent = playerGui
    
    local bg = Instance.new("Frame")
    bg.Name = "Background"
    bg.Size = UDim2.new(1, 0, 1, 0)
    bg.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
    bg.BorderSizePixel = 0
    bg.Parent = gui
    
    local face = Instance.new("ImageLabel")
    face.Name = "Face"
    face.Size = UDim2.new(0.8, 0, 0.8, 0)
    face.Position = UDim2.new(0.1, 0, 0.1, 0)
    face.BackgroundTransparency = 1
    face.Image = "rbxassetid://10528077663"
    face.Parent = bg
    
    local sound = Instance.new("Sound")
    sound.Parent = gui
    sound.SoundId = "rbxassetid://116282238939992"
    sound.Volume = 1
    
    task.spawn(function()
        sound:Play()
        
        local startTime = tick()
        while tick() - startTime < 0.8 do
            bg.BackgroundColor3 = Color3.fromRGB(255, 0, 255)
            task.wait(0.05)
            bg.BackgroundColor3 = Color3.fromRGB(128, 0, 255)
            task.wait(0.05)
        end
        
        local endTime = tick() + 1.5
        while tick() < endTime do
            local shakeX = math.sin(tick() * 50) * 10
            local shakeY = math.cos(tick() * 50) * 10
            face.Position = UDim2.new(0.1, shakeX, 0.1, shakeY)
            task.wait()
        end
        
        gui:Destroy()
    end)
end

local grudgeModel = createGrudgeModel()

local entity = spawner.Create({
    Entity = {
        Name = "Grudge",
        Asset = grudgeModel,
        HeightOffset = 0
    },
    Lights = {
        Flicker = {
            Enabled = true,
            Duration = 1.5
        },
        Shatter = true,
        Repair = false
    },
    Earthquake = {
        Enabled = false
    },
    CameraShake = {
        Enabled = true,
        Range = 100,
        Values = {2, 20, 0.1, 1}
    },
    Movement = {
        Speed = 300,
        Delay = 2,
        Reversed = false
    },
    Rebounding = {
        Enabled = true,
        Type = "Ambush",
        Min = 10,
        Max = 10,
        Delay = 1.5
    },
    Damage = {
        Enabled = true,
        Range = 40,
        Amount = 125
    },
    Crucifixion = {
        Enabled = true,
        Range = 40,
        Resist = false,
        Break = true
    },
    Death = {
        Type = "Guiding",
        Hints = {"Grudge caught you"},
        Cause = "killed by Grudge"
    }
})

entity:SetCallback("OnSpawned", function()
    local rush = grudgeModel:FindFirstChild("RushNew")
    if rush then
        local sound = rush:FindFirstChild("FootstepsSound")
        if sound then
            sound:Play()
        end
    end
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
    if newHealth == 0 then
        createJumpscare()
    end
end)

entity:Run()
