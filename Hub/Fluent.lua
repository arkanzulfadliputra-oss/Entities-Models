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
        end
        
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
    Description = "Spawn Revoker entity (Jangan tatap & sembunyi!)",
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
            Movement = { Speed = 200, Delay = 2, Reversed = false },
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

        TriggerPinkEffect()
        CustomGitSound("https://github.com/arkanzulfadliputra-oss/Entities-Models/raw/refs/heads/main/Sound/Threat%20Spawn.mp3?raw=true", 1, "ThreatSpawn")

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
            Movement = { Speed = 200, Delay = 1.5, Reversed = false },
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
            Movement = { Speed = 200, Delay = 2, Reversed = false },
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
            Movement = { Speed = 200, Delay = 2, Reversed = false },
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
            Movement = { Speed = 200, Delay = 2, Reversed = false },
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
            Movement = { Speed = 200, Delay = 2, Reversed = false },
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
            Movement = { Speed = 200, Delay = 2, Reversed = false },
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
