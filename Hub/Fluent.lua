local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "SCRIPT GAMING HUB V20",
    SubTitle = "by Script Gaming",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Entity Spawner" }),
    CustomItems = Window:AddTab({ Title = "Custom Items" }),
    Plushies = Window:AddTab({ Title = "Plushies" }),
    Modes = Window:AddTab({ Title = "Modes" }),
    Extra = Window:AddTab({ Title = "Extra" }),
    Credit = Window:AddTab({ Title = "Credit" })
}

local Options = Fluent.Options
local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

local function spawnEntity(entityConfig)
    entityConfig.Earthquake = { Enabled = false }
    entityConfig.Damage = { Enabled = false, Range = 40, Amount = 0 }
    local entity = spawner.Create(entityConfig)
    entity:Run()
    Fluent:Notify({
        Title = "Spawned",
        Content = entityConfig.Entity.Name .. " spawned!",
        Duration = 3
    })
end

Tabs.Main:AddParagraph({
    Title = "Entity Spawner",
    Content = "Spawn custom entities in your game."
})

Tabs.Main:AddButton({
    Title = "Spawn A-60 But Kawaii",
    Description = "Spawn A-60 But Kawaii entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-60 But Kawaii",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/A-60%20But%20Kawaii.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 350, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to A-60...", "Hide as soon as you hear a faint screeching sound." }, Cause = "A-60" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-60 Rooms",
    Description = "Spawn A-60 Rooms entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-60 Rooms",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/A-60%20Rooms.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = false, Duration = 0 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2.5, 30, 0.1, 1.2 } },
            Movement = { Speed = 400, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 45, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "A-60 emits a loud red static and screech.", "In the Rooms, lights do NOT flicker for A-60!" }, Cause = "A-60" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-60V2",
    Description = "Spawn A-60V2 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-60V2",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/A-60V2.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 350, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You encountered A-60 V2.", "Speed is its primary weapon." }, Cause = "A-60 V2" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-60V3",
    Description = "Spawn A-60V3 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-60V3",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/A-60V3.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.3 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2.2, 22, 0.1, 1 } },
            Movement = { Speed = 380, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "A-60 V3 moves even faster!", "Hide immediately upon hearing it." }, Cause = "A-60 V3" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Ambush But Bad",
    Description = "Spawn Ambush But Bad entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Ambush But Bad",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Ambush%20But%20Bad.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 80, Values = { 1, 10, 0.1, 0.8 } },
            Movement = { Speed = 150, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 4, Delay = 2.5 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "That was a rather weird Ambush...", "It rebounds multiple times, stay inside!" }, Cause = "Ambush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Ambush Old V2",
    Description = "Spawn Ambush Old V2 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Ambush Old V2",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Ambush%20Old%20V2.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 260, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 5, Delay = 1.8 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Ambush travels back and forth multiple times.", "Do not leave your hiding spot until it is completely gone!" }, Cause = "Ambush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn AngryMunci",
    Description = "Spawn AngryMunci entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "AngryMunci",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/AngryMunci.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2.5, 30, 0.05, 1.5 } },
            Movement = { Speed = 300, Delay = 1, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = true, Break = false },
            Death = { Type = "Guiding", Hints = { "Munci is fast and aggressive!", "Hide fast!" }, Cause = "Angry Munci" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn BIGGAMES",
    Description = "Spawn BIGGAMES entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "BIGGAMES",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/BIGGAMES.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.2, 15, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Watch out for meme entities!", "Hide in a closet or under a bed." }, Cause = "BIGGAMES" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn BigHead",
    Description = "Spawn BigHead entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "BigHead",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/BigHead.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 80, Values = { 1.5, 15, 0.1, 1 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "BigHead caught you off guard.", "Hide when lights flicker!" }, Cause = "BigHead" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn BirthdayAmbush",
    Description = "Spawn BirthdayAmbush entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "BirthdayAmbush",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/BirthdayAmbush.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 1.8, 20, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 4, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Happy Birthday! Ambush still wants to kill you though.", "Keep hiding until it finishes rebounding." }, Cause = "Birthday Ambush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn BirthdayRush",
    Description = "Spawn BirthdayRush entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "BirthdayRush",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/BirthdayRush.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 18, 0.1, 1 } },
            Movement = { Speed = 210, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rush brought a party hat, but no mercy.", "Hide as soon as the lights flicker." }, Cause = "Birthday Rush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Breeze",
    Description = "Spawn Breeze entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Breeze",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Breeze.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 70, Values = { 1, 10, 0.1, 0.5 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 35, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Breeze blew right past you.", "Stay out of its line of sight." }, Cause = "Breeze" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Capybara",
    Description = "Spawn Capybara entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Capybara",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Capybara.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = false, Range = 0, Values = { 0, 0, 0, 0 } },
            Movement = { Speed = 120, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 30, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Ok I pull up...", "Even a Capybara can be dangerous here!" }, Cause = "Capybara" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Claim",
    Description = "Spawn Claim entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Claim",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Claim.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.8, 20, 0.1, 1 } },
            Movement = { Speed = 240, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Claim came to claim your soul.", "Hide before it arrives!" }, Cause = "Claim" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Claim V2",
    Description = "Spawn Claim V2 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Claim V2",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Claim%20V2.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2, 22, 0.1, 1 } },
            Movement = { Speed = 270, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 1, Max = 3, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Claim V2 rebounds like Ambush!", "Stay hidden longer." }, Cause = "Claim V2" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Depth",
    Description = "Spawn Depth entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Depth",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Depth.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2.5, 25, 0.05, 1.2 } },
            Movement = { Speed = 280, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 45, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Depth drags you into the void.", "Watch out for heavy camera shakes!" }, Cause = "Depth" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Depth Retake",
    Description = "Spawn Depth Retake entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Depth Retake",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Depth%20Retake.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2, 22, 0.1, 1 } },
            Movement = { Speed = 260, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 1, Max = 2, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Depth Retake attacks with a rebound!", "Be careful when exiting closets." }, Cause = "Depth Retake" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Depth V3",
    Description = "Spawn Depth V3 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Depth V3",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Depth%20V3.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 130, Values = { 3, 30, 0.05, 1.5 } },
            Movement = { Speed = 320, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 45, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Depth V3 moves extremely fast!", "Hide immediately upon hearing its roar." }, Cause = "Depth V3" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn DepthV1",
    Description = "Spawn DepthV1 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "DepthV1",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/DepthV1.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.8, 18, 0.1, 1 } },
            Movement = { Speed = 230, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Depth V1 caught you.", "Hide when you see the flickering lights." }, Cause = "Depth V1" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn DepthV2",
    Description = "Spawn DepthV2 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "DepthV2",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/DepthV2.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2, 22, 0.1, 1.1 } },
            Movement = { Speed = 270, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Depth V2 is faster than V1.", "React quickly!" }, Cause = "Depth V2" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Doge",
    Description = "Spawn Doge entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Doge",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Doge.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 60, Values = { 1, 10, 0.1, 0.5 } },
            Movement = { Speed = 160, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 35, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Much speed, very scary, wow.", "Hide in closets next time." }, Cause = "Doge" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Dread",
    Description = "Spawn Dread entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Dread",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Dread.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 3 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 150, Values = { 3, 35, 0.05, 2 } },
            Movement = { Speed = 100, Delay = 5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 50, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = true, Break = false },
            Death = { Type = "Guiding", Hints = { "Dread spawns if you stay in a room for too long at midnight.", "Do not linger in one room!" }, Cause = "Dread" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Eater",
    Description = "Spawn Eater entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Eater",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Eater.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.8, 20, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Eater devours anything in its way.", "Hide quickly!" }, Cause = "Eater" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Elgato",
    Description = "Spawn Elgato entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Elgato",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Elgato.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.8 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 50, Values = { 1, 8, 0.1, 0.5 } },
            Movement = { Speed = 200, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 30, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Elgato cat-attacked you!", "Hide when you hear meowing/flickering." }, Cause = "Elgato" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn FatalError",
    Description = "Spawn FatalError entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "FatalError",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/FatalError.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2.5, 28, 0.05, 1.3 } },
            Movement = { Speed = 310, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "A Fatal Error occurred...", "Glitchy entities travel fast, hide fast!" }, Cause = "FatalError" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Firebrand",
    Description = "Spawn Firebrand entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Firebrand",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/fIREbAND.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2.2, 22, 0.08, 1.1 } },
            Movement = { Speed = 270, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Firebrand burns through rooms.", "Hide fast!" }, Cause = "Firebrand" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Flamingo",
    Description = "Spawn Flamingo entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Flamingo",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Flamingo.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 70, Values = { 1.2, 12, 0.1, 0.8 } },
            Movement = { Speed = 190, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 35, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Albert screamed and killed you.", "Hide next time!" }, Cause = "Flamingo" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn G-95",
    Description = "Spawn G-95 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "G-95",
                Asset = "rbxassetid://12112096071",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 22, 0.1, 1 } },
            Movement = { Speed = 260, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "G-95 is a Rooms entity with high speed.", "It will rush through multiple rooms quickly!" }, Cause = "G-95" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Greed",
    Description = "Spawn Greed entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Greed",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Greed.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 240, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Greed punishes those who loot too much gold.", "Be mindful of your greed!" }, Cause = "Greed" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn GreenRF",
    Description = "Spawn GreenRF entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "GreenRF",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/GreenRF.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.5, 18, 0.1, 1 } },
            Movement = { Speed = 210, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "GreenRF passed through.", "Hide in wardrobes or under beds." }, Cause = "GreenRF" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn HappyMunci",
    Description = "Spawn HappyMunci entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "HappyMunci",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/HappyMunci.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 270, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Happy Munci wasn't so happy to see you.", "Run and hide!" }, Cause = "Happy Munci" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn LSPLASH",
    Description = "Spawn LSPLASH entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "LSPLASH",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/LSPLASH.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = true, Break = false },
            Death = { Type = "Guiding", Hints = { "The developer himself came to get you!", "LSPLASH is immune to crucifixion." }, Cause = "LSPLASH" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Moving Eyes",
    Description = "Spawn Moving Eyes entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Moving Eyes",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Moving%20Eyes.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 60, Values = { 1, 10, 0.1, 0.5 } },
            Movement = { Speed = 160, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 35, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Do not look directly at Eyes, even when they move!", "Look away or hide." }, Cause = "Eyes" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn NightmareAmbush",
    Description = "Spawn NightmareAmbush entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "NightmareAmbush",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/NightmareAmbush.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 130, Values = { 2.5, 30, 0.05, 1.5 } },
            Movement = { Speed = 300, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 3, Max = 6, Delay = 1.5 },
            Damage = { Enabled = false, Range = 45, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Nightmare Ambush rebounds relentlessly!", "Hop in and out of closets to avoid Hide." }, Cause = "Nightmare Ambush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn NightmareRush",
    Description = "Spawn NightmareRush entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "NightmareRush",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/NightmareRush.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2.2, 25, 0.1, 1.2 } },
            Movement = { Speed = 280, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Nightmare Rush moves faster than normal Rush.", "Hide immediately!" }, Cause = "Nightmare Rush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Noobies",
    Description = "Spawn Noobies entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Noobies",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Noobies.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 60, Values = { 1, 10, 0.1, 0.5 } },
            Movement = { Speed = 170, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 35, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Defeated by Noobies...", "Even beginner entities can get you if you don't hide." }, Cause = "Noobies" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Not Rush",
    Description = "Spawn Not Rush entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Not Rush",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Not%20Rush.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.5, 18, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "That definitely wasn't Rush...", "Treat it like Rush anyway and hide!" }, Cause = "Not Rush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Old Ambush",
    Description = "Spawn Old Ambush entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Old Ambush",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Old%20Ambush.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2, 22, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 4, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Classic Ambush mechanics!", "It will rebound 2 to 4 times. Stay alert!" }, Cause = "Old Ambush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Photon",
    Description = "Spawn Photon entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Photon",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Photon.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.05, 1 } },
            Movement = { Speed = 330, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Photon moves at the speed of light!", "React as fast as possible when lights flicker." }, Cause = "Photon" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rage",
    Description = "Spawn Rage entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rage",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Rage.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2.5, 25, 0.05, 1.2 } },
            Movement = { Speed = 290, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rage is furious!", "Hide in closets or under beds quickly." }, Cause = "Rage" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rebound Current",
    Description = "Spawn Rebound Current entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rebound Current",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Rebound%20Current.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.8, 20, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 4, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rebound travels back and forth.", "Wait for the noise to clear completely!" }, Cause = "Rebound" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rebound Endless",
    Description = "Spawn Rebound Endless entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rebound Endless",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Rebound%20Endless.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2.2, 25, 0.08, 1.2 } },
            Movement = { Speed = 270, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 4, Max = 7, Delay = 1.8 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rebound Endless will not stop easily!", "You must continuously exit and re-enter hiding spots." }, Cause = "Rebound Endless" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rebound Old",
    Description = "Spawn Rebound Old entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rebound Old",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Rebound%20Old.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.8, 20, 0.1, 1 } },
            Movement = { Speed = 240, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 3, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "The old Rebound returns.", "Hide until it goes away." }, Cause = "Rebound Old" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rebound Remake V1",
    Description = "Spawn Rebound Remake V1 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rebound Remake V1",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Rebound%20Remake%20V1.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.8, 20, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 4, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rebound Remake V1 strikes again.", "Watch for its returning pass." }, Cause = "Rebound V1" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rebound Remake V2",
    Description = "Spawn Rebound Remake V2 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rebound Remake V2",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Rebound%20Remake%20V2.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2, 22, 0.08, 1.1 } },
            Movement = { Speed = 280, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 2, Max = 5, Delay = 1.8 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rebound Remake V2 is faster and more dangerous.", "Stay in cover!" }, Cause = "Rebound V2" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Ripper",
    Description = "Spawn Ripper entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Ripper",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Ripper.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 260, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Ripper shreds anyone in its path.", "Hide before it rips through the room!" }, Cause = "Ripper" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rush But Bad",
    Description = "Spawn Rush But Bad entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rush But Bad",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Rush%20But%20Bad.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 70, Values = { 1, 10, 0.1, 0.5 } },
            Movement = { Speed = 140, Delay = 2.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rush But Bad... is pretty bad.", "Hide when lights flicker!" }, Cause = "Rush" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rush Nightmare",
    Description = "Spawn Rush Nightmare entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rush Nightmare",
                Asset = "rbxassetid://12033089199",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Rush Nightmare is faster and more aggressive.", "Hide as soon as the lights flicker!" }, Cause = "Rush Nightmare" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Rush Troll",
    Description = "Spawn Rush Troll entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Rush Troll",
                Asset = "rbxassetid://12033109167",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 80, Values = { 1.5, 15, 0.1, 1 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You got trolled by Rush Troll!", "Hide next time!" }, Cause = "Rush Troll" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Sanic",
    Description = "Spawn Sanic entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Sanic",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Sanic.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.5 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.05, 1 } },
            Movement = { Speed = 400, Delay = 1, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Gotta go fast!", "Sanic speed blitzed you before you could react." }, Cause = "Sanic" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn ScratchCat",
    Description = "Spawn ScratchCat entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "ScratchCat",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/ScratchCat.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 60, Values = { 1, 10, 0.1, 0.5 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 35, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Scratched to death!", "Hide next time." }, Cause = "ScratchCat" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Silence",
    Description = "Spawn Silence entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Silence",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Silence.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = false, Duration = 0 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = false, Range = 0, Values = { 0, 0, 0, 0 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Silence makes no sound and doesn't flicker lights.", "Keep your eyes open!" }, Cause = "Silence" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Surge Nightmare V1",
    Description = "Spawn Surge Nightmare V1 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Surge Nightmare V1",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Surge%20Nightmare%20V1.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.8 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2.5, 25, 0.05, 1.2 } },
            Movement = { Speed = 310, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Surge Nightmare V1 surges through rooms at breakneck speed.", "Hide immediately!" }, Cause = "Surge Nightmare" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Surge Nightmare V2",
    Description = "Spawn Surge Nightmare V2 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Surge Nightmare V2",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Surge%20Nightmare%20V2.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 0.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 130, Values = { 3, 30, 0.05, 1.5 } },
            Movement = { Speed = 350, Delay = 1.2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 1, Max = 3, Delay = 1.5 },
            Damage = { Enabled = false, Range = 45, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Surge Nightmare V2 rebounds AND moves extremely fast!", "Good luck surviving!" }, Cause = "Surge Nightmare V2" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn THE DEPTH",
    Description = "Spawn THE DEPTH entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "THE DEPTH",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/THE%20DEPTH.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 140, Values = { 3, 35, 0.05, 1.8 } },
            Movement = { Speed = 300, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 50, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "THE DEPTH has consumed you.", "Listen carefully for its heavy rumble." }, Cause = "THE DEPTH" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn TackleV1",
    Description = "Spawn TackleV1 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "TackleV1",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/TackleV1.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.8, 18, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Tackle V1 tackled you down.", "Hide in hiding spots when lights flicker." }, Cause = "Tackle V1" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn TackleV2",
    Description = "Spawn TackleV2 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "TackleV2",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/TackleV2.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 22, 0.1, 1 } },
            Movement = { Speed = 260, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Tackle V2 is faster and stronger.", "Hide quickly!" }, Cause = "Tackle V2" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn TheRock",
    Description = "Spawn TheRock entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "TheRock",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/TheRock.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = false, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 80, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Can you smell what The Rock is cooking?", "Hide when you see it coming." }, Cause = "The Rock" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn V-35",
    Description = "Spawn V-35 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "V-35",
                Asset = "rbxassetid://13037347376",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.8, 18, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "V-35 is a variant from The Rooms.", "Fast and deadly, hide quickly!" }, Cause = "V-35" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Width",
    Description = "Spawn Width entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "Width",
                Asset = "https://github.com/arkanzulfadliputra-oss/Custom-Entity-Model/raw/main/Width.rbxm",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.5, 18, 0.1, 1 } },
            Movement = { Speed = 210, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 45, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "Width takes up a wide area.", "Make sure you are fully hidden in cover." }, Cause = "Width" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn X-10",
    Description = "Spawn X-10 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "X-10",
                Asset = "rbxassetid://12944284640",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 80, Values = { 1.5, 15, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "X-10 is a variant from The Rooms.", "It moves quickly and silently." }, Cause = "X-10" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-35",
    Description = "Spawn A-35 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-35",
                Asset = "rbxassetid://12944286185",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 90, Values = { 1.5, 15, 0.1, 1 } },
            Movement = { Speed = 240, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "A-35 is faster than A-25.", "Hide when you hear its screech." }, Cause = "A-35" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-25",
    Description = "Spawn A-25 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-25",
                Asset = "rbxassetid://12430177067",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 80, Values = { 1.2, 12, 0.1, 1 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "A-25 is a fast entity from The Rooms.", "Listen for its distinctive screech." }, Cause = "A-25" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-120",
    Description = "Spawn A-120 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-120",
                Asset = "rbxassetid://13037243229",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.8 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 110, Values = { 2.2, 22, 0.08, 1.1 } },
            Movement = { Speed = 280, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "A-120 is a fast Rooms entity with a unique sound.", "Hide when you hear its approach!" }, Cause = "A-120" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-278",
    Description = "Spawn A-278 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "A-278",
                Asset = "rbxassetid://12618988962",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 120, Values = { 2.5, 25, 0.08, 1.2 } },
            Movement = { Speed = 300, Delay = 1.8, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "A-278 is one of the fastest Rooms entities.", "React immediately when you hear its scream!" }, Cause = "A-278" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn E-200",
    Description = "Spawn E-200 entity",
    Callback = function()
        spawnEntity({
            Entity = {
                Name = "E-200",
                Asset = "rbxassetid://13037571863",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 130, Values = { 2.8, 28, 0.05, 1.5 } },
            Movement = { Speed = 350, Delay = 1.5, Reversed = false },
            Rebound = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 1 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "E-200 is an extremely fast Rooms entity.", "You must hide before it reaches you!" }, Cause = "E-200" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Shocker",
    Description = "Spawn Shocker entity",
    Callback = function()
        local player = game.Players.LocalPlayer
        local char = player.Character
        local hrp = char.HumanoidRootPart
        local head = char.Head
        
        local model = game:GetObjects("rbxassetid://123279499986209")[1]
        if not model then
            Fluent:Notify({
                Title = "Error",
                Content = "Failed to load Shocker!",
                Duration = 3
            })
            return
        end
        
        if not model.PrimaryPart then
            local pp = model:FindFirstChild("OOGA BOOGAAAA")
            if not pp then
                for _, v in pairs(model:GetChildren()) do
                    if v:IsA("BasePart") then
                        pp = v
                        break
                    end
                end
            end
            if pp then model.PrimaryPart = pp end
        end
        
        local spawnPos = hrp.Position + head.CFrame.LookVector * 15
        model:SetPrimaryPartCFrame(CFrame.new(spawnPos))
        model.Parent = workspace
        
        local canDamage = false
        local cooldownTime = 5
        local isCrucified = false
        local targetPart = nil
        
        for _, child in pairs(model:GetChildren()) do
            if child:IsA("BasePart") then
                targetPart = child
                break
            end
        end
        
        local function checkCrucifix()
            if isCrucified then return end
            if not model or not model.PrimaryPart then return end
            
            local player = game.Players.LocalPlayer
            local char = player.Character
            if not char then return end
            
            local distance = (model.PrimaryPart.Position - char.HumanoidRootPart.Position).Magnitude
            
            if distance <= 40 then
                local hasCrucifix = false
                for _, tool in pairs(player.Backpack:GetChildren()) do
                    if tool:IsA("Tool") and (tool.Name == "Crucifix" or tool:FindFirstChild("Crucifix")) then
                        hasCrucifix = true
                        break
                    end
                end
                if not hasCrucifix then
                    for _, tool in pairs(char:GetChildren()) do
                        if tool:IsA("Tool") and (tool.Name == "Crucifix" or tool:FindFirstChild("Crucifix")) then
                            hasCrucifix = true
                            break
                        end
                    end
                end
                
                if hasCrucifix then
                    isCrucified = true
                    
                    local sound = Instance.new("Sound")
                    sound.SoundId = "rbxassetid://9120261216"
                    sound.Volume = 5
                    sound.Parent = workspace
                    sound:Play()
                    
                    local ring = game:GetObjects("rbxassetid://109493448219851")[1]
                    if ring then
                        ring.Parent = workspace
                        ring.Name = "ShockerRing"
                        ring.CFrame = model.PrimaryPart.CFrame * CFrame.new(0, -3, 0)
                        game:GetService("Debris"):AddItem(ring, 10)
                    end
                    
                    task.wait(4)
                    
                    if targetPart then
                        local topAttachment = Instance.new("Attachment")
                        topAttachment.Name = "Top"
                        topAttachment.Parent = targetPart
                        
                        local targetPos = targetPart.Position + Vector3.new(0, 50, 0)
                        local tweenService = game:GetService("TweenService")
                        local tweenInfo = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
                        local tween = tweenService:Create(targetPart, tweenInfo, {
                            Position = targetPos
                        })
                        tween:Play()
                        tween.Completed:Wait()
                    else
                        local targetPos = model.PrimaryPart.Position + Vector3.new(0, 50, 0)
                        local tweenService = game:GetService("TweenService")
                        local tweenInfo = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out)
                        local tween = tweenService:Create(model, tweenInfo, {
                            CFrame = CFrame.new(targetPos)
                        })
                        tween:Play()
                        tween.Completed:Wait()
                    end
                    
                    task.wait(1)
                    model:Destroy()
                    
                    Fluent:Notify({
                        Title = "Crucified!",
                        Content = "Shocker has been crucified!",
                        Duration = 3
                    })
                end
            end
        end
        
        task.spawn(function()
            while model and model.Parent and not isCrucified do
                task.wait(0.5)
                checkCrucifix()
            end
        end)
        
        local function onRoomChanged()
            if model and model.Parent and not isCrucified then
                model:Destroy()
                Fluent:Notify({
                    Title = "Despawned",
                    Content = "Shocker despawned (Room changed)!",
                    Duration = 2
                })
            end
        end
        
        local latestRoom = game.ReplicatedStorage.GameData:FindFirstChild("LatestRoom")
        if latestRoom then
            latestRoom.Changed:Connect(function()
                onRoomChanged()
            end)
        end0
        
        Fluent:Notify({
            Title = "Spawned",
            Content = "Shocker spawned!",
            Duration = 3
        })
    end
})

-- REVOKER
Tabs.Main:AddButton({
    Title = "Spawn Revoker",
    Description = "Spawn Revoker entity",
    Callback = function()
        spawnEntity({
            Entity = { Name = "Revoker", Asset = "rbxassetid://134852743257842", HeightOffset = 0 },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 22, 0.1, 1 } },
            Movement = { Speed = 100, Delay = 2, Reversed = false },
            Rebound = { Enabled = true, Type = "Ambush", Min = 1, Max = 3, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You were caught by Revoker.", "Do not look and hide!" }, Cause = "Revoker" }
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Threat",
    Description = "Spawn Threat entity",
    Callback = function()
        local TweenService = game:GetService("TweenService")
        local Lighting = game:GetService("Lighting")

        local function GitAud(soundgit, filename)
            local url = soundgit
            local FileName = filename
            if not isfile(FileName .. ".mp3") then
                writefile(FileName .. ".mp3", game:HttpGet(url))
            end
            return (getcustomasset or getsynasset)(FileName .. ".mp3")
        end

        local function CustomGitSound(soundlink, vol, filename)
            local sound = Instance.new("Sound")
            sound.SoundId = GitAud(soundlink, filename)
            sound.Parent = workspace
            sound.Volume = vol or 2
            sound.PlaybackSpeed = 1
            sound.Name = filename or "Spawn"
            sound:Play()
            
            sound.Ended:Connect(function()
                sound:Destroy()
            end)
        end

        local function TriggerPinkEffect()
            local colorCorrection = Instance.new("ColorCorrectionEffect")
            colorCorrection.Name = "ThreatPinkEffect"
            colorCorrection.TintColor = Color3.fromRGB(255, 105, 180)
            colorCorrection.Parent = Lighting

            local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tween = TweenService:Create(colorCorrection, tweenInfo, {
                TintColor = Color3.fromRGB(255, 255, 255)
            })
            
            tween:Play()
            tween.Completed:Connect(function()
                colorCorrection:Destroy()
            end)
        end

        TriggerPinkEffect()
         local SoundService = game:GetService("SoundService")

local cue1 = Instance.new("Sound")
cue1.SoundId = "rbxassetid://3359047385"
cue1.Parent = SoundService
cue1.Name = "Cue1"
cue1.Volume = 10

local Equalizer = Instance.new("EqualizerSoundEffect")
Equalizer.Parent = cue1
Equalizer.Enabled = true
Equalizer.HighGain = 10
Equalizer.LowGain = 0
Equalizer.MidGain = 0
cue1:Play()
         wait(1)

        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Threat",
                Asset = "rbxassetid://132786450712083",
                HeightOffset = 0
            },
            Lights = {
                Flicker = { Enabled = true, Duration = 1.5 },
                Shatter = true,
                Repair = false
            },
            Earthquake = { Enabled = true },
            CameraShake = { Enabled = true, Range = 100, Values = {2, 25, 0.1, 1} },
            Movement = { Speed = 140, Delay = 2, Reversed = false },
            Rebounding = { Enabled = true, Type = "Ambush", Min = 2, Max = 4, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to who you call Threat...",
                    "Threat is a high-speed Hard Mode entity that attacks with minimal warning.",
                    "Pay close attention to flickering lights and screen distortions.",
                    "It can rebound multiple times, so stay inside a hiding spot until it completely leaves!"
                },
                Cause = "Threat"
            }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Threat spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Foul",
    Description = "Spawn Foul entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Foul",
                Asset = "rbxassetid://109314925178968",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 100, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to Foul!", "Hide when lights flicker!" }, Cause = "Foul" }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Foul spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Whisper",
    Description = "Spawn Whisper entity (Don't move!)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/STOPFUCKINGSKIDDING1/Doors/refs/heads/main/Whisper"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Whisper spawned! Don't move!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Glitched Eyes",
    Description = "Spawn Glitched Eyes entity",
    Callback = function()
        function GitAud(soundgit,filename)
            local url=soundgit
            local FileName = filename
            writefile(FileName..".mp3", game:HttpGet(url))
            return (getcustomasset or getsynasset)(FileName..".mp3")
        end

        function CustomGitSound(soundlink, vol, filename)
            local sound = Instance.new("Sound")
            sound.SoundId = GitAud(soundlink, filename)
            sound.Parent = workspace
            sound.Volume = 1
            sound.PlaybackSpeed = 1
            sound.Name = "Eyespawn"
            sound:Play()
        end

        CustomGitSound("https://github.com/Guestly-Second-Account/DOORS/raw/refs/heads/main/XRecorder_Edited_20260110_01.mp3?raw=true", 1, "Eyes")

        local caption = game.Players.LocalPlayer:WaitForChild("PlayerGui").MainUI.MainFrame.Caption
        caption.TextColor3 = Color3.fromRGB(255, 227, 163)
        require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Credits for Dreadmania for Eyes Spawner",true)

        local Kill = true
        local eye = game:GetObjects("rbxassetid://121121926426152")[1]
        eye.Parent = game.Workspace
        local eyes = eye:FindFirstChildWhichIsA("BasePart") or eye:FindFirstChildWhichIsA("Part")
        eyes.CFrame = game.Workspace.CurrentRooms:GetChildren()[#game.Workspace.CurrentRooms:GetChildren() - 1].Parts.Floor.CFrame + Vector3.new(0,8,0)
        
        workspace.GlitchedLookman.Core.Ambience.Playing = true
        workspace.GlitchedLookman.Core.PointLight.Color = Color3.fromRGB(0, 119, 255)
        workspace.GlitchedLookman.Core.PointLight.Range = 30
        workspace.GlitchedLookman.Core.PointLight.Brightness = 3
        
        local destroy = workspace.GlitchedLookman.Core:GetChildren()[4]
        destroy:Destroy()

        wait(1.5)

        task.spawn(function()
            while Kill == true do
                task.wait(1)
                local _, camera = game.Workspace.CurrentCamera:WorldToViewportPoint(eyes.Position)
                if camera then
                    -- Damage disabled
                end
            end
        end)

        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        Kill = false
        eye:Destroy()
        
        local sound = workspace:FindFirstChild("Eyespawn")
        if sound then sound:Destroy() end

        Fluent:Notify({
            Title = "Spawned",
            Content = "Glitched Eyes spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Lightshaker",
    Description = "Spawn Lightshaker entity",
    Callback = function()
        local function IsLockedRoom()
            local roomId = game.ReplicatedStorage.GameData.LatestRoom.Value
            local room = workspace.CurrentRooms:FindFirstChild(roomId)
            if not room then return false end
            if room:FindFirstChild("KeyObtain", true) then
                return true
            end
        
            local door = room:FindFirstChild("Door", true)
            if door and door:FindFirstChild("RequiresKey") then
                return door.RequiresKey.Value == true
            end
            return false
        end

        if IsLockedRoom() then
            Fluent:Notify({
                Title = "Error",
                Content = "Lightshaker cannot spawn in locked room!",
                Duration = 3
            })
            return
        end

        function GitAud(soundgit,filename)
            local url=soundgit
            local FileName = filename
            writefile(FileName..".mp3", game:HttpGet(url))
            return (getcustomasset or getsynasset)(FileName..".mp3")
        end

        function CustomGitSound(soundlink, vol, filename)
            local sound = Instance.new("Sound")
            sound.SoundId = GitAud(soundlink, filename)
            sound.Parent = workspace
            sound.Volume = 2
            sound.PlaybackSpeed = 1
            sound.Name = "Counting"
            sound:Play()
        end

        CustomGitSound(
            "https://github.com/Guestly-V2-2/Music-Sound/raw/refs/heads/main/XRecorder_Edited_20260114_05%20(1).mp3?raw=true",
            1,
            "Counting"
        )

        local Lighting = game:GetService("Lighting")
        Lighting.MainColorCorrection.TintColor = Color3.fromRGB(255, 255, 0)

        local TweenService = game:GetService("TweenService")
        local plr = game.Players.LocalPlayer

        local ACTIVE = true
        local START_TIME = tick()

        local model = game:GetObjects("rbxassetid://107939368264641")[1]
        if not model then
            Fluent:Notify({
                Title = "Error",
                Content = "Failed to load Lightshaker!",
                Duration = 3
            })
            return
        end

        model.Parent = workspace

        local part = model:FindFirstChildWhichIsA("BasePart")
        if part then
            local rooms = workspace.CurrentRooms:GetChildren()
            if #rooms > 0 then
                local floor = rooms[#rooms - 1] and rooms[#rooms - 1]:FindFirstChild("Parts") and rooms[#rooms - 1].Parts:FindFirstChild("Floor")
                if floor then
                    part.CFrame = floor.CFrame + Vector3.new(0, 8, 0)
                end
            end
        end

        task.spawn(function()
            while ACTIVE do
                for _, room in ipairs(workspace.CurrentRooms:GetChildren()) do
                    for _, obj in ipairs(room:GetDescendants()) do
                        if obj:IsA("PointLight") or obj:IsA("SurfaceLight") or obj:IsA("SpotLight") then
                            obj.Enabled = true
                        end
                    end
                end
                task.wait(0.4)
            end
        end)

        local Textures = {
            "rbxassetid://91207064517129",
            "rbxassetid://125879637567921",
            "rbxassetid://101719063393555",
            "rbxassetid://106422062721387",
        }

        local emitter = model:FindFirstChild("greed")
        if emitter then
            emitter = emitter:FindFirstChild("Attachment")
            if emitter then
                emitter = emitter:FindFirstChild("ParticleEmitter")
            end
        end

        if emitter then
            task.spawn(function()
                local i = 1
                while ACTIVE do
                    emitter.Texture = Textures[i]
                    i = (i % #Textures) + 1
                    task.wait(0.05)
                end
            end)
        end

        local roomConn
        roomConn = game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            ACTIVE = false
            if roomConn then roomConn:Disconnect() end

            local cc = Lighting:FindFirstChild("MainColorCorrection")
            if cc then
                TweenService:Create(cc, TweenInfo.new(2), {
                    TintColor = Color3.fromRGB(255,255,255),
                    Contrast = 0
                }):Play()
            end

            if model then model:Destroy() end
        end)

        task.spawn(function()
            while ACTIVE do
                if tick() - START_TIME >= 12 then
                    ACTIVE = false

                    -- Damage / Death disabled
                    if model then model:Destroy() end
                    break
                end
                task.wait(0.2)
            end
        end)

        Fluent:Notify({
            Title = "Spawned",
            Content = "Lightshaker spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Threat Extreme",
    Description = "Spawn Threat Extreme entity",
    Callback = function()
        local TweenService = game:GetService("TweenService")
        local Lighting = game:GetService("Lighting")

        local function GitAud(soundgit, filename)
            local url = soundgit
            local FileName = filename
            if not isfile(FileName .. ".mp3") then
                writefile(FileName .. ".mp3", game:HttpGet(url))
            end
            return (getcustomasset or getsynasset)(FileName .. ".mp3")
        end

        local function CustomGitSound(soundlink, vol, filename)
            local sound = Instance.new("Sound")
            sound.SoundId = GitAud(soundlink, filename)
            sound.Parent = workspace
            sound.Volume = vol or 2
            sound.PlaybackSpeed = 1
            sound.Name = filename or "Spawn"
            sound:Play()
            
            sound.Ended:Connect(function()
                sound:Destroy()
            end)
        end

        local function TriggerPinkEffect()
            local colorCorrection = Instance.new("ColorCorrectionEffect")
            colorCorrection.Name = "ThreatPinkEffect"
            colorCorrection.TintColor = Color3.fromRGB(255, 105, 180)
            colorCorrection.Parent = Lighting

            local tweenInfo = TweenInfo.new(2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            local tween = TweenService:Create(colorCorrection, tweenInfo, {
                TintColor = Color3.fromRGB(255, 255, 255)
            })
            
            tween:Play()
            tween.Completed:Connect(function()
                colorCorrection:Destroy()
            end)
        end

            local SoundService = game:GetService("SoundService")

local cue1 = Instance.new("Sound")
cue1.SoundId = "rbxassetid://3359047385"
cue1.Parent = SoundService
cue1.Name = "Cue1"
cue1.Volume = 10

local Equalizer = Instance.new("EqualizerSoundEffect")
Equalizer.Parent = cue1
Equalizer.Enabled = true
Equalizer.HighGain = 10
Equalizer.LowGain = 0
Equalizer.MidGain = 0
cue1:Play()

        TriggerPinkEffect()
        wait(1)
        
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Threat Extreme",
                Asset = "rbxassetid://134201087264347",
                HeightOffset = 0
            },
            Lights = {
                Flicker = { Enabled = true, Duration = 1.5 },
                Shatter = true,
                Repair = false
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = {2, 25, 0.1, 1} },
            Movement = { Speed = 190, Delay = 1.5, Reversed = false },
            Rebounding = { Enabled = true, Type = "Ambush", Min = 3, Max = 6, Delay = 1.5 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Threat Extreme...",
                    "Threat Extreme is a high-speed entity that rebounds multiple times.",
                    "Stay hidden until it completely leaves!"
                },
                Cause = "Threat Extreme"
            }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Threat Extreme spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Delt",
    Description = "Spawn Delt entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Delt",
                Asset = "rbxassetid://104896114714798",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 150, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to Delt!", "Hide when lights flicker!" }, Cause = "Delt" }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Delt spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Faiser",
    Description = "Spawn Faiser entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Faiser",
                Asset = "rbxassetid://99977379435315",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 90, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to Faiser!", "Hide when lights flicker!" }, Cause = "Faiser" }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Faiser spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Boppies",
    Description = "Spawn Boppies entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Boppies",
                Asset = "rbxassetid://80734927732377",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 130, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to Boppies!", "Hide when lights flicker!" }, Cause = "Boppies" }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Boppies spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Smiley",
    Description = "Spawn Smiley entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Smiley",
                Asset = "rbxassetid://84716228238951",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 100, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to Smiley!", "Hide when lights flicker!" }, Cause = "Smiley" }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Smiley spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Durge",
    Description = "Spawn Durge entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Durge",
                Asset = "rbxassetid://117907020358273",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 150, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to Durge!", "Hide when lights flicker!" }, Cause = "Durge" }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Durge spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Monoxide",
    Description = "Spawn Monoxide entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Monoxide",
                Asset = "rbxassetid://106072785214191",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { Type = "Guiding", Hints = { "You died to Monoxide!", "Hide when lights flicker!" }, Cause = "Monoxide" }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Monoxide spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Gloom",
    Description = "Spawn Gloom entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Gloom",
                Asset = "rbxassetid://107557459056627",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 2 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 100, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = { 
                Type = "Guiding", 
                Hints = { 
                    "You died to Gloom...", 
                    "It moves faster than Rush, but doesn't rebound.", 
                    "Hide as soon as you see the lights flicker!" 
                }, 
                Cause = "Gloom" 
            }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Gloom spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Fragmented",
    Description = "Spawn Fragmented sequence (Entity 1 to 6)",
    Callback = function()
        task.spawn(function()
            local TweenService = game:GetService("TweenService")
            local ReplicatedStorage = game:GetService("ReplicatedStorage")
            local Lighting = game:GetService("Lighting")
            local Debris = game:GetService("Debris")

            -- Intro Visual & Sound Effects
            local Reboundcolor = Instance.new("ColorCorrectionEffect", Lighting)
            Debris:AddItem(Reboundcolor, 24)
            Reboundcolor.Name = "Warn"
            Reboundcolor.TintColor = Color3.fromRGB(65, 138, 255)
            Reboundcolor.Saturation = -0.7
            Reboundcolor.Contrast = 0.2
            TweenService:Create(Reboundcolor, TweenInfo.new(15), {
                TintColor = Color3.fromRGB(255, 255, 255),
                Saturation = 0,
                Contrast = 0
            }):Play()

            local TW = TweenService:Create(Lighting.MainColorCorrection, TweenInfo.new(5), {
                TintColor = Color3.fromRGB(255, 255, 255)
            })
            TW:Play()

            local cue1 = Instance.new("Sound", workspace)
            cue1.Name = "Scream"
            cue1.SoundId = "rbxassetid://9114397505"
            cue1.Volume = 0.1

            local distort1 = Instance.new("DistortionSoundEffect", cue1)
            distort1.Level = 1
            local distort2 = Instance.new("DistortionSoundEffect", cue1)
            distort2.Level = 1

            for _ = 1, 3 do
                local pitch = Instance.new("PitchShiftSoundEffect", cue1)
                pitch.Octave = 0.5
            end
            cue1:Play()

            local cue2 = Instance.new("Sound", workspace)
            cue2.Name = "Spawn"
            cue2.SoundId = "rbxassetid://9114221327"
            cue2.Volume = 3
            cue2:Play()

            pcall(function()
                local CameraShaker = require(ReplicatedStorage.CameraShaker)
                local camara = workspace.CurrentCamera
                local camShake = CameraShaker.new(Enum.RenderPriority.Camera.Value, function(shakeCf)
                    camara.CFrame = camara.CFrame * shakeCf
                end)
                camShake:Start()
                camShake:ShakeOnce(10, 3, 0.1, 6, 2, 0.5)
            end)

            task.wait(2.8)

            local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

            local function SpawnFragmented()
                local entity = spawner.Create({
                    Entity = {
                        Name = "Fragmented",
                        Asset = "rbxassetid://133654763659646",
                        HeightOffset = 0
                    },
                    Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
                    Earthquake = { Enabled = false },
                    CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
                    Movement = { Speed = 140, Delay = 2, Reversed = false },
                    Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
                    Damage = { Enabled = false, Range = 40, Amount = 0 },
                    Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
                    Death = {
                        Type = "Guiding",
                        Hints = { "You died By Rebound..", "It will follow you through multiple rooms!" },
                        Cause = "Rebound"
                    }
                })
                entity:Run()
            end

            local function PlayScareSound()
                local scare = Instance.new("Sound", workspace)
                scare.Name = "MyEarsBurn"
                scare.SoundId = "rbxassetid://5567523008"
                scare.PlaybackSpeed = 3
                scare.Volume = 1

                local shift = Instance.new("PitchShiftSoundEffect", scare)
                shift.Octave = 0.5

                local distort = Instance.new("DistortionSoundEffect", scare)
                distort.Level = 1

                scare:Play()
                Debris:AddItem(scare, 3)
            end

            -- Entity 1
            PlayScareSound()
            SpawnFragmented()

            local randomnumber = math.random(3, 6)
            for i = 2, randomnumber do
                ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                task.wait(1)

                PlayScareSound()
                SpawnFragmented()
            end
        end)

        Fluent:Notify({
            Title = "Spawned",
            Content = "Rebound Spawned",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Hustle",
    Description = "Spawn Hustle entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Hustle",
                Asset = "rbxassetid://89988156409359",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 160, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Hustle...",
                    "It moves quickly after the lights flicker.",
                    "Hide immediately when you notice the warning!"
                },
                Cause = "Hustle"
            }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Hustle spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Maniac Ambush",
    Description = "Spawn Maniac Ambush entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Maniac Ambush",
                Asset = "rbxassetid://114079872899758",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebounding = { Enabled = true, Type = "Ambush", Min = 3, Max = 6, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Maniac Ambush...",
                    "It moves extremely fast and rebounds multiple times!",
                    "Do not exit your hiding spot until it has completely left."
                },
                Cause = "Maniac Ambush"
            }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Maniac Ambush spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Maniac Eyes",
    Description = "Spawn Maniac Eyes",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local hrp = character:FindFirstChild("HumanoidRootPart")

        if not hrp then
            Fluent:Notify({
                Title = "Error",
                Content = "Player character not found!",
                Duration = 3
            })
            return
        end

        local eyesModel = game:GetObjects("rbxassetid://80156053189159")[1]
        if not eyesModel then
            Fluent:Notify({
                Title = "Error",
                Content = "Failed to load Maniac Eyes model!",
                Duration = 3
            })
            return
        end

        eyesModel.Name = "Maniac Eyes"
        eyesModel.Parent = workspace
            
        local spawnCFrame = hrp.CFrame + (hrp.CFrame.LookVector * 25)

        if eyesModel:IsA("Model") then
            eyesModel:PivotTo(spawnCFrame)
        elseif eyesModel:IsA("BasePart") then
            eyesModel.CFrame = spawnCFrame
        end

        local roomConn
        roomConn = game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(function()
            if eyesModel then eyesModel:Destroy() end
            if roomConn then roomConn:Disconnect() end
        end)

        Fluent:Notify({
            Title = "Spawned",
            Content = "Maniac Eyes spawned",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Twister",
    Description = "Spawn Twister",
    Callback = function()
        Fluent:Notify({
            Title = "Queued",
            Content = "Twister Spawn next rooms",
            Duration = 3
        })

        task.spawn(function()
            game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
            task.wait(1)

            local twisterModel = game:GetObjects("rbxassetid://72643424887636")[1]
            if not twisterModel then return end

            twisterModel.Name = "Twister"
            twisterModel.Parent = workspace
            
            local player = game.Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local hrp = character:FindFirstChild("HumanoidRootPart")

            if hrp then
                local spawnCFrame = hrp.CFrame + (hrp.CFrame.LookVector * 25)
                if twisterModel:IsA("Model") then
                    twisterModel:PivotTo(spawnCFrame)
                elseif twisterModel:IsA("BasePart") then
                    twisterModel.CFrame = spawnCFrame
                end
            end

            local function GetGitSound(GithubSnd, SoundName)
                local url = GithubSnd
                if not isfile(SoundName .. ".mp3") then
                    writefile(SoundName .. ".mp3", game:HttpGet(url))
                end
                local sound = Instance.new("Sound")
                sound.SoundId = (getcustomasset or getsynasset)(SoundName .. ".mp3")
                return sound
            end
            
            local targetPart = twisterModel:IsA("Model") and (twisterModel.PrimaryPart or twisterModel:FindFirstChildWhichIsA("BasePart")) or twisterModel

            if targetPart then
                local Jumpscare = GetGitSound("https://github.com/eoyoustme/Mayhem-Remake/raw/main/Mayhem%20mode%20recreate_TwisterScream2.mp3", "Twitersaygttyt")
                Jumpscare.Parent = targetPart
                Jumpscare.Looped = false
                Jumpscare.RollOffMinDistance = 100
                Jumpscare.PlaybackRegionsEnabled = true
                Jumpscare.LoopRegion = NumberRange.new(0, 3)
                Jumpscare.RollOffMaxDistance = 200
                Jumpscare.RollOffMode = Enum.RollOffMode.LinearSquare
                Jumpscare.Volume = 6
                Jumpscare.PlaybackSpeed = 1
                Jumpscare:Play()
            end

            Fluent:Notify({
                Title = "Spawned",
                Content = "Twister spawned",
                Duration = 3
            })

            task.wait(6)

            if twisterModel then
                twisterModel:Destroy()
            end
        end)
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Grudge",
    Description = "Spawn Grudge entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Grudge",
                Asset = "rbxassetid://89071321426184",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1.5 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 160, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Grudge...",
                    "Hide as soon as you notice the warning!"
                },
                Cause = "Grudge"
            }
        })
        entity:Run()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Grudge spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Maniac Depth",
    Description = "Spawn Maniac Depth entity",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Depth%20Plamen.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Maniac Depth spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Depth Remake",
    Description = "Spawn Depth Remake entity",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Depth%20Remake.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Depth Remake spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Speedster / Trauma",
    Description = "Spawn Trauma entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Trauma",
                Asset = "rbxassetid://16957473352",
                HeightOffset = 0
            },
            Lights = { Flicker = { Enabled = true, Duration = 1 }, Shatter = true, Repair = false },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Trauma...",
                    "It moves at extreme speed through the rooms!",
                    "Hide as soon as you notice the lights flicker."
                },
                Cause = "Trauma"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "Trauma spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-130",
    Description = "Spawn A-130 entity (Wiki accurate)",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-130",
                Asset = "rbxassetid://12174018892",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-130...",
                    "Like all Rooms entities, A-130 will not flicker any lights.",
                    "Listen closely for its sound cue to know when to hide!"
                },
                Cause = "A-130"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-130 spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Hungry",
    Description = "?",
    Callback = function()
        local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/refs/heads/main/Functions.lua"))()
        local model = Functions.LoadCustomInstance("https://github.com/kodbolx/kodbolhub/raw/400fd27e0297d11ec3c3a020e97dca02cbd0c1c2/Nightmare%20Mode/Models/hungry.rbxm")

        if model then
            model.Name = "Hungry"
            model.Parent = game.Workspace

            local player = game.Players.LocalPlayer
            local char = player.Character or player.CharacterAdded:Wait()
            local root = char:FindFirstChild("HumanoidRootPart")

            if root then
                local spawnCFrame = root.CFrame * CFrame.new(0, 0, 25)

                if model:IsA("Model") then
                    model:PivotTo(spawnCFrame)
                elseif model:IsA("BasePart") then
                    model.CFrame = spawnCFrame
                end
            end

            local function onRoomChanged()
            if model and model.Parent and not isCrucified then
                model:Destroy()
                Fluent:Notify({
                    Title = "Despawned",
                    Content = "Shocker despawned (Room changed)!",
                    Duration = 2
                })
            end
        end
        
        local latestRoom = game.ReplicatedStorage.GameData:FindFirstChild("LatestRoom")
        if latestRoom then
            latestRoom.Changed:Connect(function()
                onRoomChanged()
            end)
        end

            Fluent:Notify({
                Title = "Spawned",
                Content = "Hungry spawned!",
                Duration = 3
            })
        end
    end
})

Tabs.Main:AddButton({
    Title = "Spawn RedEyes",
    Description = "?",
    Callback = function()
        local Functions = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/refs/heads/main/Functions.lua"))()
        local model = Functions.LoadCustomInstance("https://github.com/kodbolx/kodbolhub/raw/400fd27e0297d11ec3c3a020e97dca02cbd0c1c2/Nightmare%20Mode/Models/RedEyes%20(2).rbxm")

        if model then
            model.Name = "RedEyes"
            model.Parent = game.Workspace

            local player = game.Players.LocalPlayer
            local char = player.Character or player.CharacterAdded:Wait()
            local root = char:FindFirstChild("HumanoidRootPart")

            if root then                
                local spawnCFrame = root.CFrame * CFrame.new(0, 0, 25)

                if model:IsA("Model") then
                    model:PivotTo(spawnCFrame)
                elseif model:IsA("BasePart") then
                    model.CFrame = spawnCFrame
                end
            end

            Fluent:Notify({
                Title = "Spawned",
                Content = "RedEyes spawned!",
                Duration = 3
            })
        end
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Silent",
    Description = "?",
    Callback = function()
        ---====== Load spawner ======---
        local Spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/DOORS-Entity-Spawner-V2/main/init.luau"))()

        ---====== Asset Handling ======---
        local fileName = "SilentArrivalSpawn.mp3"
        local soundUrl = "https://github.com/idkman60093/Audio/raw/refs/heads/main/Silent%20Arrival%20Sound.mp3"

        if not isfile(fileName) then
            writefile(fileName, game:HttpGet(soundUrl))
        end

        local function playSpawnSound()
            local success, assetId = pcall(function() return getcustomasset(fileName) end)
            if success then
                local sound = Instance.new("Sound")
                sound.SoundId = assetId
                sound.Volume = 3
                sound.Parent = game:GetService("SoundService")
                sound:Play()
                game:GetService("Debris"):AddItem(sound, 10)
            end
        end

        local function makeCurrentRoomBlue()
            local player = game.Players.LocalPlayer
            local currentRoomNumber = player:GetAttribute("CurrentRoom")
            local rooms = game.Workspace:FindFirstChild("CurrentRooms")
            if rooms then
                local room = rooms:FindFirstChild(tostring(currentRoomNumber))
                if room then
                    for _, v in pairs(room:GetDescendants()) do
                        if v:IsA("Light") then
                            v.Color = Color3.fromRGB(0, 0, 255)
                            v.Brightness = v.Brightness * 2
                        elseif (v:IsA("Part") or v:IsA("MeshPart")) and (v.Material == Enum.Material.Neon or v.Name == "LightFixture") then
                            v.Color = Color3.fromRGB(0, 0, 255)
                        end
                    end
                end
            end
        end

        local function onEntityGone()
            print("Silent destroyed/despawned")

            if not getgenv().SilentAchievementExecuted then
                getgenv().SilentAchievementExecuted = true

                loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Custom%20Achievements/Source.lua"))()({
                    Title = "Scared",
                    Desc = "I won't harm you",
                    Reason = "Encounter Silent",
                    Image = "rbxassetid://70697566673795",
                })
            end
        end

        ---====== Create Entity ======---

        local entity = Spawner:Create({
            Entity = {
                Name = "Silent",
                Asset = "https://github.com/kodbolx/kodbolhub/raw/400fd27e0297d11ec3c3a020e97dca02cbd0c1c2/Nightmare%20Mode/Models/Slient.rbxm",
                HeightOffset = 5 
            },
            Lights = { Flicker = { Enabled = false }, Shatter = true, Repair = false },
            Movement = { Speed = 150, Delay = 2, Reversed = false },
            Rebounding = { Enabled = true, Type = "Ambush", Min = 3, Max = 3, Delay = 0.5 },
            Damage = { Enabled = false }, 
            Earthquake = { Enabled = false },
            Death = { Enabled = false }
        })

        ---====== Triggers ======---

        entity:SetCallback("OnSpawned", function()
            task.spawn(playSpawnSound)
            makeCurrentRoomBlue()
        end)

        entity:SetCallback("OnEnterRoom", function()
            makeCurrentRoomBlue()
        end)

        entity:SetCallback("OnDespawning", function()
            -- sjsj
        end)

        entity:SetCallback("OnDespawned", function()
            onEntityGone()
        end)

        ---====== Run Entity ======---

        entity:Run(true)

        Fluent:Notify({
            Title = "Spawned",
            Content = "Silent spawned!",
            Duration = 3
        })
    end
})

-- 1. Spawn A-332
Tabs.Main:AddButton({
    Title = "Spawn A-332",
    Description = "?",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-332",
                Asset = "rbxassetid://138299566009563",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-332...",
                    "As a Rooms entity, A-332 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-332"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-332 spawned!",
            Duration = 3
        })
    end
})

-- 2. Spawn A-50
Tabs.Main:AddButton({
    Title = "Spawn A-50",
    Description = "?",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-50",
                Asset = "rbxassetid://133041178604049",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 210, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-50...",
                    "As a Rooms entity, A-50 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-50"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-50 spawned!",
            Duration = 3
        })
    end
})

-- 3. Spawn X-10
Tabs.Main:AddButton({
    Title = "Spawn X-10",
    Description = "?",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "X-10",
                Asset = "rbxassetid://112192020741309",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to X-10...",
                    "As a Rooms entity, X-10 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "X-10"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "X-10 spawned!",
            Duration = 3
        })
    end
})

-- 4. Spawn A-245
Tabs.Main:AddButton({
    Title = "Spawn A-245",
    Description = "?",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-245",
                Asset = "rbxassetid://103373069033562",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 240, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-245...",
                    "As a Rooms entity, A-245 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-245"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-245 spawned!",
            Duration = 3
        })
    end
})

-- 5. Spawn Among Us
Tabs.Main:AddButton({
    Title = "Spawn Among Us",
    Description = "?",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Among Us",
                Asset = "rbxassetid://115322680287785",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = true, Duration = 1.5 }, 
                Shatter = true, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Among Us...",
                    "Watch out for flickering lights and hide in time!"
                },
                Cause = "Among Us"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "Among Us spawned!",
            Duration = 3
        })
    end
})

-- 1. Spawn X-35
Tabs.Main:AddButton({
    Title = "Spawn X-35",
    Description = "Spawn X-35 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "X-35",
                Asset = "rbxassetid://131021500013601",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to X-35...",
                    "As a Rooms entity, X-35 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "X-35"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "X-35 spawned!",
            Duration = 3
        })
    end
})

-- 2. Spawn G-95
Tabs.Main:AddButton({
    Title = "Spawn G-95",
    Description = "Spawn G-95 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "G-95",
                Asset = "rbxassetid://140652536379398",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to G-95...",
                    "As a Rooms entity, G-95 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "G-95"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "G-95 spawned!",
            Duration = 3
        })
    end
})

-- 3. Spawn B-60 Scary
Tabs.Main:AddButton({
    Title = "Spawn B-60 Scary",
    Description = "Spawn B-60 Scary entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "B-60 Scary",
                Asset = "rbxassetid://102434342326751",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 240, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to B-60 Scary...",
                    "As a Rooms entity, B-60 Scary will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "B-60 Scary"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "B-60 Scary spawned!",
            Duration = 3
        })
    end
})

-- 4. Spawn A-40
Tabs.Main:AddButton({
    Title = "Spawn A-40",
    Description = "Spawn A-40 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-40",
                Asset = "rbxassetid://111800141305604",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 210, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-40...",
                    "As a Rooms entity, A-40 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-40"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-40 spawned!",
            Duration = 3
        })
    end
})

-- 5. Spawn A-278
Tabs.Main:AddButton({
    Title = "Spawn A-278",
    Description = "Spawn A-278 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-278",
                Asset = "rbxassetid://94256444369531",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-278...",
                    "As a Rooms entity, A-278 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-278"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-278 spawned!",
            Duration = 3
        })
    end
})

-- 6. Spawn A-25
Tabs.Main:AddButton({
    Title = "Spawn A-25",
    Description = "Spawn A-25 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-25",
                Asset = "rbxassetid://77194266165825",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-25...",
                    "As a Rooms entity, A-25 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-25"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-25 spawned!",
            Duration = 3
        })
    end
})

-- 7. Spawn A-35
Tabs.Main:AddButton({
    Title = "Spawn A-35",
    Description = "Spawn A-35 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-35",
                Asset = "rbxassetid://121169111916512",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 210, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-35...",
                    "As a Rooms entity, A-35 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-35"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-35 spawned!",
            Duration = 3
        })
    end
})

-- 8. Spawn V-35
Tabs.Main:AddButton({
    Title = "Spawn V-35",
    Description = "Spawn V-35 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "V-35",
                Asset = "rbxassetid://93142763227397",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to V-35...",
                    "As a Rooms entity, V-35 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "V-35"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "V-35 spawned!",
            Duration = 3
        })
    end
})

-- 9. Spawn A-10
Tabs.Main:AddButton({
    Title = "Spawn A-10",
    Description = "Spawn A-10 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-10",
                Asset = "rbxassetid://73646370551284",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-10...",
                    "As a Rooms entity, A-10 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "A-10"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-10 spawned!",
            Duration = 3
        })
    end
})

-- 1. Spawn E-200 (Rooms Style)
Tabs.Main:AddButton({
    Title = "Spawn E-200",
    Description = "Spawn E-200 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "E-200",
                Asset = "rbxassetid://73781481371106",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to E-200...",
                    "As a Rooms entity, E-200 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes."
                },
                Cause = "E-200"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "E-200 spawned!",
            Duration = 3
        })
    end
})

-- 2. Spawn Angry
Tabs.Main:AddButton({
    Title = "Spawn Angry",
    Description = "Spawn Angry entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Angry",
                Asset = "rbxassetid://134357345127640",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = true, Duration = 1.5 }, 
                Shatter = true, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Angry...",
                    "Watch out for flickering lights and hide in time!"
                },
                Cause = "Angry"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "Angry spawned!",
            Duration = 3
        })
    end
})

-- 3. Spawn A-200 (Rooms Style)
Tabs.Main:AddButton({
    Title = "Spawn A-200",
    Description = "Spawn A-200 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-200",
                Asset = "rbxassetid://94418383228847",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-200...",
                    "As a Rooms entity, A-200 will not flicker any lights!",
                    "Listen closely for audio cues and hide immediately."
                },
                Cause = "A-200"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-200 spawned!",
            Duration = 3
        })
    end
})

-- 4. Spawn FrostDire
Tabs.Main:AddButton({
    Title = "Spawn FrostDire",
    Description = "Spawn FrostDire entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "FrostDire",
                Asset = "rbxassetid://94418383228847",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = true, Duration = 1.5 }, 
                Shatter = true, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 190, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to FrostDire...",
                    "Pay attention to the flickering lights and hide before it reaches you!"
                },
                Cause = "FrostDire"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "FrostDire spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-150",
    Description = "Spawn A-150 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-150",
                Asset = "rbxassetid://130293057117643",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-150...",
                    "As a Rooms entity, A-150 will not flicker any lights!",
                    "Listen closely for audio cues and hide before it passes through."
                },
                Cause = "A-150"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-150 spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Sandstorm",
    Description = "Spawn Sandstorm entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Sandstorm",
                Asset = "rbxassetid://133301092640364",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = true, Duration = 1.5 }, 
                Shatter = true, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Sandstorm...",
                    "Pay attention to the flickering lights and hide in time!"
                },
                Cause = "Sandstorm"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "Sandstorm spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn E-146",
    Description = "Spawn E-146 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "E-146",
                Asset = "rbxassetid://121498798894715",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 220, Delay = 2, Reversed = false },
            Rebounding = { Enabled = true, Type = "Ambush", Min = 1, Max = 3, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to E-146...",
                    "As an E-entity, E-146 will not flicker any lights!",
                    "Listen closely for audio cues and stay hidden until it finishes rebounding."
                },
                Cause = "E-146"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "E-146 spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Fire Guardian",
    Description = "Spawn Fire Guardian entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Fire Guardian",
                Asset = "rbxassetid://82370964643599",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = true, Duration = 1.5 }, 
                Shatter = true, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 200, Delay = 2, Reversed = false },
            Rebounding = { Enabled = true, Type = "Ambush", Min = 2, Max = 5, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Fire Guardian...",
                    "It rebounds multiple times through the rooms!",
                    "Stay hidden until it has completely finished all of its passes."
                },
                Cause = "Fire Guardian"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "Fire Guardian (Rebounding) spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn Gloom V2",
    Description = "Spawn Gloom V2 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "Gloom V2",
                Asset = "rbxassetid://121498475217418",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = true, Duration = 1.5 }, 
                Shatter = true, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 1.5, 20, 0.1, 1 } },
            Movement = { Speed = 180, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to Gloom V2...",
                    "Pay attention to the flickering lights and hide in time!"
                },
                Cause = "Gloom V2"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "Gloom V2 spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn B-200",
    Description = "Spawn B-200 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "B-200",
                Asset = "rbxassetid://107217434350969",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 260, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to B-200...",
                    "As a Rooms entity, B-200 will not flicker any lights!",
                    "Listen closely for its audio cue and hide immediately before it rushes through."
                },
                Cause = "B-200"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "B-200 spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn A-60",
    Description = "Spawn A-60 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "A-60",
                Asset = "rbxassetid://114930961460627",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 25, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to A-60...",
                    "As a Rooms entity, A-60 will not flicker any lights!",
                    "Listen closely for its loud audio cue and hide quickly before it passes."
                },
                Cause = "A-60"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "A-60 spawned!",
            Duration = 3
        })
    end
})

Tabs.Main:AddButton({
    Title = "Spawn B-60",
    Description = "Spawn B-60 entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()
        local entity = spawner.Create({
            Entity = {
                Name = "B-60",
                Asset = "rbxassetid://82859496455626",
                HeightOffset = 0
            },
            Lights = { 
                Flicker = { Enabled = false, Duration = 1 }, 
                Shatter = false, 
                Repair = false 
            },
            Earthquake = { Enabled = false },
            CameraShake = { Enabled = true, Range = 100, Values = { 2, 20, 0.1, 1 } },
            Movement = { Speed = 250, Delay = 2, Reversed = false },
            Rebounding = { Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2 },
            Damage = { Enabled = false, Range = 40, Amount = 0 },
            Crucifixion = { Enabled = true, Range = 40, Resist = false, Break = true },
            Death = {
                Type = "Guiding",
                Hints = {
                    "You died to B-60...",
                    "As a Rooms entity, B-60 will not flicker the lights!",
                    "Listen closely for its sound cue and hide immediately."
                },
                Cause = "B-60"
            }
        })

        entity:Run()

        Fluent:Notify({
            Title = "Spawned",
            Content = "B-60 spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddParagraph({
    Title = "📦 Custom Items",
    Content = "Spawn custom items into your backpack."
})

local function spawnTool(assetId, toolName, customSetup)
    local tool = game:GetObjects(assetId)[1]
    if not tool then
        Fluent:Notify({
            Title = "Error",
            Content = "Failed to load " .. toolName,
            Duration = 3
        })
        return
    end
    
    if toolName then
        tool.Name = toolName
    end
    
    tool.Parent = game.Players.LocalPlayer.Backpack
    
    if customSetup then
        customSetup(tool)
    end
    
    Fluent:Notify({
        Title = "Spawned",
        Content = tool.Name .. " added to backpack!",
        Duration = 3
    })
end

Tabs.CustomItems:AddButton({
    Title = "Crucifix All",
    Description = "Spawn all crucifixes",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/Eyes%20Crucifix.lua"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/%3F%3F%3F%20Crucifix.lua"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Ambush%20Crucifix.lua"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/seek%20Crucifix.lua"))()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Crucifix%20Blue.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "All crucifixes spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Spawn Crucifix Cracked (1)",
    Description = "Spawn Crucifix Cracked (1)",
    Callback = function()
        spawnTool("rbxassetid://12653118809", "Crucifix")
    end
})

Tabs.CustomItems:AddButton({
    Title = "Spawn Crucifix Cracked (2)",
    Description = "Spawn Crucifix Cracked (2)",
    Callback = function()
        spawnTool("rbxassetid://11766540827", "Crucifix")
    end
})

Tabs.CustomItems:AddButton({
    Title = "Spawn Crucifix Cracked (3)",
    Description = "Spawn Crucifix Cracked (3)",
    Callback = function()
        spawnTool("rbxassetid://11766544358", "Crucifix")
    end
})

Tabs.CustomItems:AddButton({
    Title = "Spawn Crucifix Glow",
    Description = "Spawn Crucifix Glow",
    Callback = function()
        spawnTool("rbxassetid://11753631279", "Crucifix")
    end
})

Tabs.CustomItems:AddButton({
    Title = "Spawn Crucifix Unknown",
    Description = "Spawn Crucifix Unknown",
    Callback = function()
        spawnTool("rbxassetid://11742346377", "Crucifix")
    end
})

Tabs.CustomItems:AddButton({
    Title = "Rebound Plushie (Still Bug)",
    Description = "Spawn Rebound Plushie",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/Custom%20Item/Rebound%20Plushie"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Rebound Plushie spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "A-60 Plushie",
    Description = "Spawn A-60 Plushie",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/Custom%20Item/A-60%20Plushie"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "A-60 Plushie spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Crucifix Guiding",
    Description = "Spawn Crucifix Guiding",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/ScriptGamingGamer/refs/heads/main/Script/DOORS/Crucifix.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Crucifix Guiding spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Crucifix White",
    Description = "Spawn Crucifix White",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Crucifix%20White.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Crucifix White spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Crucifix Lotus",
    Description = "Spawn Crucifix Lotus",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Crucifix%20Lotus.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Crucifix Lotus spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Guiding Light",
    Description = "Spawn Guiding Light",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Guiding%20Light.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Guiding Light spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Crucifix Old",
    Description = "Spawn Crucifix Old",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Crucifix%20Old.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Crucifix Old spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Crucifix Plushie",
    Description = "Spawn Crucifix Plushie",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Item%20Model/Crucifix%20Plushie.lua"))()
        Fluent:Notify({
            Title = "Spawned",
            Content = "Crucifix Plushie spawned!",
            Duration = 3
        })
    end
})

Tabs.CustomItems:AddButton({
    Title = "Devils Crucifix",
    Description = "Spawn Devils Crucifix",
    Callback = function()
        spawnTool("rbxassetid://11813582804", "Crucifix", function(tool)
            local Char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local RightArm = Char:WaitForChild("RightUpperArm")
            local LeftArm = Char:WaitForChild("LeftUpperArm")
            local RightC1 = RightArm.RightShoulder.C1
            local LeftC1 = LeftArm.LeftShoulder.C1
            local Equipped = false
            
            tool.Equipped:Connect(function()
                if Equipped then return end
                Equipped = true
                RightArm.Name = "R_Arm"
                LeftArm.Name = "L_Arm"
                RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
                LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            end)
            
            tool.Unequipped:Connect(function()
                if not Equipped then return end
                Equipped = false
                RightArm.RightShoulder.C1 = RightC1
                LeftArm.LeftShoulder.C1 = LeftC1
                RightArm.Name = "RightUpperArm"
                LeftArm.Name = "LeftUpperArm"
            end)
        end)
    end
})

Tabs.CustomItems:AddButton({
    Title = "Crucifix Seek Cracked",
    Description = "Spawn Crucifix Seek Cracked",
    Callback = function()
        spawnTool("rbxassetid://11780280932", "Crucifix", function(tool)
            local Char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local RightArm = Char:WaitForChild("RightUpperArm")
            local LeftArm = Char:WaitForChild("LeftUpperArm")
            local RightC1 = RightArm.RightShoulder.C1
            local LeftC1 = LeftArm.LeftShoulder.C1
            local Equipped = false
            
            tool.Equipped:Connect(function()
                if Equipped then return end
                Equipped = true
                RightArm.Name = "R_Arm"
                LeftArm.Name = "L_Arm"
                RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
                LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            end)
            
            tool.Unequipped:Connect(function()
                if not Equipped then return end
                Equipped = false
                RightArm.RightShoulder.C1 = RightC1
                LeftArm.LeftShoulder.C1 = LeftC1
                RightArm.Name = "RightUpperArm"
                LeftArm.Name = "LeftUpperArm"
            end)
        end)
    end
})

Tabs.CustomItems:AddButton({
    Title = "Crucifix Seek",
    Description = "Spawn Crucifix Seek",
    Callback = function()
        spawnTool("rbxassetid://11780279145", "Crucifix", function(tool)
            local Char = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
            local RightArm = Char:WaitForChild("RightUpperArm")
            local LeftArm = Char:WaitForChild("LeftUpperArm")
            local RightC1 = RightArm.RightShoulder.C1
            local LeftC1 = LeftArm.LeftShoulder.C1
            local Equipped = false
            
            tool.Equipped:Connect(function()
                if Equipped then return end
                Equipped = true
                RightArm.Name = "R_Arm"
                LeftArm.Name = "L_Arm"
                RightArm.RightShoulder.C1 = RightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
                LeftArm.LeftShoulder.C1 = LeftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
            end)
            
            tool.Unequipped:Connect(function()
                if not Equipped then return end
                Equipped = false
                RightArm.RightShoulder.C1 = RightC1
                LeftArm.LeftShoulder.C1 = LeftC1
                RightArm.Name = "RightUpperArm"
                LeftArm.Name = "LeftUpperArm"
            end)
        end)
    end
})

Tabs.Modes:AddParagraph({
    Title = "Modes",
    Content = "Modes"
})

Tabs.Modes:AddButton({
    Title = "Forgotten Mode",
    Description = "Working Perfectly",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/Wy7PSxjz"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Forgotten Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Creepy Mode",
    Description = "Working Perfectly",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DripCapybara/Doors-Modes/refs/heads/main/CreepyMode/ObfuscatedMain.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Creepy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Combined Mode",
    Description = "Unknown",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/g4nvj2EP"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Combined Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Ultra Hard Mode (UPDATED)",
    Description = "Made By Zunxd",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Junxd-03/UltraHardModeUpdate/refs/heads/main/UltraHardMode.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Ultra Hard Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fear Mode (Fixed)",
    Description = "Recreate by Voorpr0",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lelele78/Securityproject/refs/heads/main/FEAROBF"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fear Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hard Mode (Fixed)",
    Description = "Fixed by Voorpr0 & Nowhywhats",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/ProtectHard"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hard Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hazy Mode (Recreated)",
    Description = "Recreated by Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Hazy-Mode-Recreated-made-by-Guestly-(Celestian)-on-Discord"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hazy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Void Mode",
    Description = "Credit to Minh_Dcord",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/minh-scripter/doors_void/refs/heads/main/Doors_Void_Mode.txt"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Void Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Null Mode",
    Description = "Made by RealblueYT & LDLT_Legacy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/Null-mode/refs/heads/main/Null%20mode%20alpha%20by%20RealblueYT%20and%20LDLT_legacy"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Null Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fog Mode (Coming Soon)",
    Description = "ButtonInfo",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/twinmaw/twin-maw-doors/refs/heads/main/twin-maw-doors.txt?token=GHSAT0AAAAAADTNMJDQ7LPWVB76QIHMW46O2LK6URQ"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fog Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Wer Mode (Homemade Mode)",
    Description = "Made by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Projectwermode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Wer Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Impossible Mode V1.8 (Fixed)",
    Description = "Fixed by Voorpr0 & Nowhywwhat & Guestly & Vuivuiviu2",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Impossible-mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Impossible Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hallucination Mode (Easy Version)",
    Description = "Credit to Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Hallucination-Mode-(Easy-Version)-Made-by-Celestian-on-Discord"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hallucination Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Water Rises Mode",
    Description = "Original Credit to Oof & Credit to VoorPr0 for reworking it",
    Callback = function()
        loadstring(game:HttpGet("https://pastefy.app/mrM9vA2L/raw"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Water Rises Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Insanitas Mode",
    Description = "Made by Guestly (Celestian) & Vuivuiviu2",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Insanitas-Mode-Made-By-Guestly-And-Vuivuiviu2"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Insanitas Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Inferno Mode",
    Description = "Made by Anctarus7105",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/My-Modes/refs/heads/main/Inferno.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Inferno Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Horror Mode (Fixed)",
    Description = "Original Credit to Chrono and Credit to THE_LOSTW3R for fixing it",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/Mods/main/HorrorMode.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Horror Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Crazy Mode",
    Description = "Credit to FenzerPlayerPressure",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FenzerPlayerPressure/Recreates/refs/heads/main/Crazy%20Mode.Lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Crazy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Roomy Mode",
    Description = "Made by FenzerPlayerPressure",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/FenzerPlayerPressure/SubVersions/refs/heads/main/Roomy%20Mode.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Roomy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Scary Mode",
    Description = "Made by Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Doors-Modes/refs/heads/main/Scary%20Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Scary Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Draco Mode V2",
    Description = "Made by Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Doors-Modes/refs/heads/main/Draco%20Mode%20(Fully%20Completed)"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Draco Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Baller Mode",
    Description = "Made by Zunxd",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Baller-mode/refs/heads/main/Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Baller Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Critazy Mode",
    Description = "Made by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/Critazy-mode-/refs/heads/main/Critazy%20mode.LocalPlayer"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Critazy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Devil Mode (Fixed)",
    Description = "Fixed by Smile & Tuffmu Chicken Boy🔥",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/datdoors/Devilmodefixed.main/refs/heads/main/Devilmodefixed"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Devil Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Anarchy Mode",
    Description = "Released By Anctarus7105",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Recreated-modes/refs/heads/main/Anarchy%20Release"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Anarchy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Extreme Mode (Recreated)",
    Description = "Recreated by Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Extreme-Mode-Recreated-made-by-Guestly"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Extreme Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Chaos + Recall Mode",
    Description = "Made by Anctarus7105 & Aboba288-Abobic",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Recreated-modes/refs/heads/main/Chaos%20Recall%20V1.0"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Chaos + Recall Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Insane Mode",
    Description = "Made by TheDarkMan",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheDarkMan1334/Insane-mode/refs/heads/main/Insane%20Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Insane Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Voidness Mode",
    Description = "Voidness Mode V2 will release soon",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Voidness-Mode-Made-By-Guestly-Vuivuiviu2-And-Voorpr0"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Voidness Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Forbidden Mode (Recreated)",
    Description = "Credit to Noah and Recreated By Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Forbidden-Mode-recreated-by-Guestly"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Forbidden Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Lunacy Mode V2 (Recreated)",
    Description = "Made by Guestly & Vuivuiviu2 & Nowhywhat & VoorPr0",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Not-Guestly/Modes/refs/heads/main/Lunacy-Mode-Made-By-Guestly-Vuivuiviu2-Nowhywhat-And-Voorpr0"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Lunacy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fragmented Mode V5",
    Description = "Credit by Nhankgnew",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/talales/Nhankg/refs/heads/main/fragmented%20v5"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fragmented Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Degenerate Mode",
    Description = "Made by Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/My-brand-new-Degenerate-Mode%20(New%20Obfuscator)"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Degenerate Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hardcore Mode (Fixed)",
    Description = "Made By Noonie & Ping and Credit to THE_LOSTW3R for fixing",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/Mods/main/HardcoreMode.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hardcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Mayhem Mode",
    Description = "Working Perfectly",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/localplayerr/Doors-stuff/refs/heads/main/Mayhem%20mode%20recreate/Code"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Mayhem Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Endless Mode (Fixed)",
    Description = "Made by DripCapybara & Reworked By VoorPr0",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/EndlessMode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Endless Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hollow Mode",
    Description = "Made by someone that idk",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/DOORS-DAILY-RUNS-Hollow-Mode-91878"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hollow Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Scamer Mode",
    Description = "Made by RealblueYT & Zunxd & Smile & thinh6789 & Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Scamer mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Scamer Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hardcore Mode (Re-Remastered)",
    Description = "ButtonInfo",
    Callback = function()
        local url = "https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/main/Hardcore-Mode-Re-Remastered-Made-By-Guestly-Vuivuiviu2-Nowhywhat-Voorpr0"
        local ok, err = pcall(function()
            loadstring(game:HttpGet(url, true))()
        end)
        if not ok then
            Fluent:Notify({
                Title = "Error",
                Content = "Failed to load Hardcore Mode!",
                Duration = 3
            })
            warn("[Loadstring Error]", err)
        else
            Fluent:Notify({
                Title = "Loaded",
                Content = "Hardcore Mode loaded!",
                Duration = 3
            })
        end
    end
})

Tabs.Modes:AddButton({
    Title = "Immersive Mode (Remake)",
    Description = "Remake by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/immersive-remake/refs/heads/main/Immersive-remake-loaded-localplayer-Origin-script.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Immersive Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Chaos Mode V1",
    Description = "Credit to DJ SD (Tunder8401)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Tunder8401/Doors-Modes/refs/heads/main/Chaos%20Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Chaos Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Ultra Hard Mode V3 (Remake)",
    Description = "Remake by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/projecthradmodv3"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Ultra Hard Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Plamen6789's Hardcore Mode (Remake)",
    Description = "Remaked By Zunxd",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Hardcore-mode/refs/heads/main/hardcore.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Plamen6789's Hardcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Insanity Mode (Reworked)",
    Description = "Credit to Kotyara19k & ReboundPlayz & Voorpr0",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Anctarus7105/Recreated-modes/refs/heads/main/Insanity%20Reworked%201.3"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Insanity Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Furry Mode (Remake)",
    Description = "Remake by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Projectfurrymoderework"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Furry Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fear Mode (Remake)",
    Description = "Remaked by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/Fearmode-/refs/heads/main/Fearmodereamake.txt"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fear Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Meme Mode",
    Description = "Made by Chu be te liet",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/chubeteliet-cpu/meme-mode-m-p/refs/heads/main/Meme-mode-ma-hoa", true))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Meme Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Christmas Mode",
    Description = "Credit to Chill Guy",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Idk-lol2/xmasmode/refs/heads/main/xmasmode.txt"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Christmas Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hardcore Mode V4 (Old Version)",
    Description = "Made by Noonie & Ping",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/localplayerr/Doors-stuff/refs/heads/main/Hardcore%20v4%20recreate/main%20code"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hardcore Mode V4 loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Impossible Mode (Remake)",
    Description = "Remaked by RealblueYT & Smile",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Projectimpossiblebyrealblueytandsmile"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Impossible Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Lunacy Mode (Remake)",
    Description = "Remaked By RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Lunacyreamake"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Lunacy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fragmented Mode V4 (Remake)",
    Description = "Remaked by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/fragmented-v4-fixe/refs/heads/main/fragmentedv4fixed.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fragmented Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Ultimate Nightmare Mode V8.2",
    Description = "Credit to Tuffmu Chicken Boy",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/ByTuffmuScriptVersion8.2UltimateNightmareMode.txt"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Ultimate Nightmare Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Impossible Mode (Re-Degenerate)",
    Description = "Made by Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Not-Guestly/Modes/refs/heads/main/Impossible-Mode-Re-Degenerate-Made-By-Guestly"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Impossible Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hard Mode V4 (Recaptured)",
    Description = "Credit to RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://arch-http.vercel.app/files/Projecthradmodev4byrealblueyt"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hard Mode V4 loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Gab's Hardcore Mode",
    Description = "ButtonInfo",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Gabs-Hardcore-Mode/refs/heads/main/Gab's%20Hardcore%20Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Gab's Hardcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Silence Mode V3",
    Description = "Made By Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Doors-Modes/refs/heads/main/Silence%20Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Silence Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Degenerate Mode (Darkness Version)",
    Description = "Credit to Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Darkness-Degenerate-Mode-Made-By-Guestly"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Degenerate Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Cizinuness Mode",
    Description = "Created by Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Cizinuness-Mode-Made-By-Guestly", true))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Cizinuness Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Suggestion Mode",
    Description = "Made By Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Not-Guestly/Modes/refs/heads/main/Suggestions-Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Suggestion Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Dreamcore Mode",
    Description = "Made by Guestly & VoorPr0",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Dreamcore-Mode-Made-by-Guestly-and-Voorpr0"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Dreamcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Cataclysm Mode",
    Description = "Made by Guestly (Celestian) & Vuivuiviu3",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Cataclysm-Mode-made-by-Guestly-and-Vuivuiviu3"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Cataclysm Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Sadness Mode",
    Description = "Credit to someone that idk",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/LLGCAllIWantIsYou/urban-broccoli/refs/heads/main/SadnessMode.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Sadness Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hazy Mode + Extreme Mode (Combined)",
    Description = "Credit to Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Hazy%2BExtreme-Mode-made-by-Guestly-on-Discord"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hazy + Extreme Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hardcore Mode (Reworker)",
    Description = "Made by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/Hradcore-by-noonies-remakes/refs/heads/main/Hradcore%20reworker%20by%20RealblueYT%20chubeteliet%20LDLT_legacy%22))()"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hardcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fragmented Mode V4 (Not Official)",
    Description = "Credit to someone that idk",
    Callback = function()
        loadstring(game:HttpGet("https://glot.io/snippets/h7zlma80wm/raw/Main.java"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fragmented Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Terror Mode",
    Description = "Working Perfectly",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Teilsthebfdifan/Modhub-assets/refs/heads/main/TerrorModeOBF.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Terror Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hardcore Mode (Remake)",
    Description = "Remake by RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/Hradcore-by-noonies-remak/refs/heads/main/Hradcore%20remakes%20by%20RealblueYT"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hardcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Endless Mode (Remake)",
    Description = "Remaked by Chu be te liet",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/binhlforsaken156-sys/Enless-mode-remake/refs/heads/main/Endless-remake-by-chubeteliet.txt", true))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Endless Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fear Mode (Re-Remastered)",
    Description = "Credit to RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/rrealblueyt-oss/Fear-mode-re_remastere/refs/heads/main/obfuscated_script-1769600892332.lua.txt"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fear Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hallucination Mode (Hard Version)",
    Description = "Credit to Guestly (Celestian)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Hallucination-Mode-(Hard-Version)-Made-by-Celestian-On-Discord"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hallucination Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Cataclysmic Mode",
    Description = "Credit to Guestly & Vuivuiviu4",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GuestlyTheGreatestGuest/Modes/refs/heads/main/Cataclysmic-Mode-Made-by-Guestly-and-Vuivuiviu4"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Cataclysmic Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "White Haze Mode",
    Description = "Made by Minh_DCord",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Doors-Modes/refs/heads/main/White%20Haze%20Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "White Haze Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Chaos Mode V1 (Hardcore Version)",
    Description = "Credit to DJ SD (Tunder8401) & Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Chaos-Mode-Hardcore-Version/refs/heads/main/Chaos%20Mode%20V1%20(Hardcore%20Version)"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Chaos Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Nightmare Mode",
    Description = "Made by Kodbol",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/kodbolx/kodbolhub/refs/heads/main/Nightmare%20Mode/Nightmare%20Mode.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Nightmare Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Difficulty Mode",
    Description = "Made by eoyoustme",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/eoyoustme/41450088/refs/heads/main/Difficulty%20mode%20fix"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Difficulty Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Psychotic Mode",
    Description = "Made by someone that idk",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Drop56796/Psychotic-mode/main/monste%20and%20Door%20Sounds.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Psychotic Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Darkness Mode",
    Description = "Made by Chu be te liet",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/chubeteliet-cpu/Darkness-mode/refs/heads/main/Darkness%20mode%20rework", true))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Darkness Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Stryker Mode",
    Description = "Made by Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Doors-Modes/refs/heads/main/Stryker-Mode-(Fully-Completed)"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Stryker Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hardcore Mode (Remastered)",
    Description = "Credit to someone that idk",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/daiayday/HardcoreRemastered/refs/heads/main/obf_L6zO2N0sG5ehDHd56JBc5z70TZ2piVOvIqsgE88741HXGrwv7E4qd6c8axu8z4oh.lua.txt"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hardcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Fragmented Mode (Recreation??)",
    Description = "Recreation By THE_LOSTW3R",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/thelostw3r/Mods/refs/heads/main/FragmentedModeRemake.lua"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Fragmented Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Furry Mode",
    Description = "Made by VoorPr0",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lelele78/Securityproject/refs/heads/main/Furry"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Furry Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Broken Mode",
    Description = "Made by TheDarkMan",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheDarkMan1334/Broken-mode/refs/heads/main/BrokenMode%20Version%201.8%20Fix"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Broken Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Grace Mode (Remake)",
    Description = "Credit to someone that idk",
    Callback = function()
        loadstring(game:HttpGet("https://github.com/IdkMyNameLoll/PublicScripts/raw/refs/heads/main/DoorsXGrace.lua", true))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Grace Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Super Crazy Mode",
    Description = "Credit to Dt_roblx doors:))",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/eoyoustme2/dm123/refs/heads/main/super%20crazy%20mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Super Crazy Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hardcore Mode V99999999",
    Description = "Credit to RealblueYT",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tranhuuthien958-arch/Hradcore-v999999/refs/heads/main/Hradcore%20v99999999", true))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hardcore Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Mental Mode",
    Description = "Made By TheLastOne",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/TheLastOne5778/Read/refs/heads/main/Mental%20Mode"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Mental Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Super Packed Mode",
    Description = "Credit to Zunxd",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Junbbinopro/Doors-sieu-don-mode/refs/heads/main/Modeee"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Super Packed Mode loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Hallucination Mode (IMPOSSIBLE VERSION⚠️⚠️⚠️)",
    Description = "Credit to Guestly (Celestian) and Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Hallucination-Mode-SUPER-IMPOSSIBLE-/refs/heads/main/Hallucination%20Mode%20(IMPOSSIBLE)"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Hallucination Mode IMPOSSIBLE loaded!",
            Duration = 3
        })
    end
})

Tabs.Modes:AddButton({
    Title = "Improbable Mode Final Version (IMPOSSIBLE⚠️⚠️⚠️)",
    Description = "Credits to Chu be the liet & AmadeyHunter & Rip_Silence",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/idkman60093/Doors-Modes/refs/heads/main/Improbable-Mode-Final-Version"))()
        Fluent:Notify({
            Title = "Loaded",
            Content = "Improbable Mode loaded!",
            Duration = 3
        })
    end
})

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})
InterfaceManager:SetFolder("FluentScriptHub")
SaveManager:SetFolder("FluentScriptHub/doors")

InterfaceManager:BuildInterfaceSection(Tabs.Credit)
SaveManager:BuildConfigSection(Tabs.Credit)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Script Gaming Hub",
    Content = "Script loaded successfully!",
    Duration = 5
})
