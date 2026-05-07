--====== Load spawner ======--
local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/DOORS-Entity-Spawner-V2/main/init.luau"))()

--====== Create entity ======--
local entity = spawner:Create({
    Entity = {
        Name = "Alternate",
        Asset = "https://github.com/arkanzulfadliputra-oss/mODELS/raw/main/Alternate.rbxm",
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
        Min = 10,
        Max = 10,
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
        Hints = {"It's getting faster...", "Don't stop running.", "Each rebound is quicker."},
        Cause = "Alternate"
    }
})

--====== Variables buat speed makin kencang ======--
local reboundCount = 0
local currentSpeed = 200

--====== Callbacks ======--
entity:SetCallback("OnSpawned", function()
    print("Alternate has spawned")
    reboundCount = 0
    currentSpeed = 200
end)

entity:SetCallback("OnStartMoving", function()
    print("Alternate is moving at speed: " .. currentSpeed)
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound then
        reboundCount = reboundCount + 1
        currentSpeed = currentSpeed + 50
        entity:SetSpeed(currentSpeed)
        print("Alternate rebound " .. reboundCount .. " - Speed now: " .. currentSpeed)
    else
        print("Alternate finished rebounding")
    end
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime then
        print("Alternate entered: " .. room.Name)
    end
end)

entity:SetCallback("OnDespawned", function()
    print("Alternate despawned")
end)

--====== Run entity ======--
entity:Run()
