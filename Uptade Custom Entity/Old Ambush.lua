local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local entity = spawner.Create({
    Entity = {
        Name = "OldAmbush",
        Asset = "rbxassetid://12304880388",
        HeightOffset = 0
    },
    Lights = {
        Flicker = {
            Enabled = true,
            Duration = 1.5
        },
        Shatter = false,
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
        Enabled = false,
        Type = "Ambush",
        Min = 12,
        Max = 12,
        Delay = 1.5
    },
    Damage = {
        Enabled = false,
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
        Hints = {"OldAmbush got you"},
        Cause = "killed by OldAmbush"
    }
})

local achievementGiven = false

local function giveAchievement(title, desc, reason)
    if achievementGiven then return end
    achievementGiven = true
    
    local player = game.Players.LocalPlayer
    local Unlock = require(player.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
    
    for i, v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
        v.Title = title
        v.Desc = desc
        v.Reason = reason
        v.BadgeId = 0
        v.Category = 10
    end
    
    Unlock(nil, "Join")
    print("Achievement unlocked: " .. title)
end

entity:SetCallback("OnSpawned", function()
    print("OldAmbush spawned")
    
    local model = entity.Model
    local rushNew = model and model:FindFirstChild("RushNew")
    if rushNew then
        local footsteps = rushNew:FindFirstChild("Footsteps")
        if footsteps then
            footsteps:Destroy()
        end
        
        local playSound = rushNew:FindFirstChild("PlaySound")
        if playSound then
            for _, e in pairs(playSound:GetChildren()) do
                if e:IsA("PitchShiftSoundEffect") then
                    e:Destroy()
                end
            end
            local pitch = Instance.new("PitchShiftSoundEffect")
            pitch.Octave = 1.2
            pitch.Parent = playSound
        end
    end
end)

entity:SetCallback("OnDespawned", function()
    print("OldAmbush despawned")
    giveAchievement("Survived OldAmbush", "You survived OldAmbush", "Encounter and survive OldAmbush")
end)

entity:SetCallback("CrucifixionOverwrite", function()
    print("OldAmbush crucified")
    giveAchievement("Crucified OldAmbush", "You crucified OldAmbush", "Use crucifix on OldAmbush")
end)

entity:Run()
