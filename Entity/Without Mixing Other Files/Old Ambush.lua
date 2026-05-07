--====== Load spawner ======--
local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/DOORS-Entity-Spawner-V2/main/init.luau"))()

--====== Create entity ======--
local entity = spawner:Create({
    Entity = {
        Name = "Old Ambush",
        Asset = "https://github.com/arkanzulfadliputra-oss/mODELS/raw/main/OldAmbush.rbxm",
        HeightOffset = 0
    },
    Lights = {
        Flicker = {
            Enabled = true,
            Duration = 1
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
        Values = {1.5, 20, 0.1, 1}
    },
    Movement = {
        Speed = 200,
        Delay = 2,
        Reversed = false
    },
    Rebounding = {
        Enabled = true,
        Type = "Ambush",
        Min = 5,
        Max = 5,
        Delay = 2
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
        Hints = {"Run.", "It's coming back.", "Hide."},
        Cause = "Old Ambush"
    }
})

--====== Callbacks ======--
entity:SetCallback("OnSpawned", function()
    print("Old Ambush has spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("Old Ambush is moving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime then
        print("Old Ambush entered: " .. room.Name)
    end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound then
        print("Old Ambush started rebounding")
    else
        print("Old Ambush finished rebounding")
    end
end)

entity:SetCallback("OnDespawned", function()
    print("Old Ambush despawned")
end)

--====== Run entity ======--
entity:Run()
