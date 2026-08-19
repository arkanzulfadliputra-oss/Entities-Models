local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Mod/Entity/Mods/Create%20Entity/Source.lua"))()

local entity = spawner.Create({
    Entity = {
        Name = "template entity",
        Asset = "rbxassetid://115322680287785",
        HeightOffset = 0
    },
    Movement = {
        Speed = 100,
        Delay = 2,
        Reversed = false
    },
    Damage = {
        Enabled = true,
        Range = 40,
        Amount = 125,
        IgnoreHiding = false
    },
    Rebounding = {
        Enabled = false,
        Type = "Ambush",
        Min = 2,
        Max = 4,
        Delay = 2
    },
    Lights = {
        Flicker = {
            Enabled = true,
            Duration = 1
        },
        Shatter = true,
        Repair = false
    },
    Damage = {
        Enabled = true,
        Range = 40,
        Amount = 125,
        IgnoreHiding = false
    }
    Earthquake = {
        Enabled = false
    },
    CameraShake = {
        Enabled = true,
        Values = {1.5, 20, 0.1, 1},
        Range = 100
    },
    Crucifixion = {
        Type = "Curious", -----Curious,Guiding
        Enabled = true,
        Range = 40,
        Resist = false,
        Break = true
    },
    Death = {
        Type = "Guiding", -----Curious,Guiding
        Hints = {"You died by Template Entity!", "Hide next time!"},
        Cause = "Template Entity"
    },
    Jumpscare = {
        Enabled = true,
        Config = {
            Image1 = "rbxassetid://0",
            Image2 = "rbxassetid://0",
            BackgroundColor = Color3.fromRGB(255, 0, 0),
            Shake = true,
            Sound1 = {
                1234567890,
                {
                    Volume = 0.5,
                    PlaybackSpeed = 1,
                    Looped = false,
                }
            },
            Sound2 = {
                10483837590,
                {
                    Volume = 0.5,
                    PlaybackSpeed = 1,
                    Looped = false,
                }
            },
            Flashing = {
                true,
                Color3.fromRGB(0, 0, 255)
            },
            Tease = {
                true,
                Min = 4,
                Max = 4
            }
        }
    },
    Debugging = {
    Spawned = {
        Sound = {
            SoundID = "rbxassetid://112497140615036", ---Sound A-60 Spawn
            Volume = 1,
            SoundEffect = {
                EchoSoundEffect = {
                    Enabled = false,
                    Delay = 0.5,
                    DryLevel = 0,
                    WetLevel = 1
                },
                DistortionSoundEffect = {
                    Enabled = false,
                    Level = 0
                },
                EqualizerSoundEffect = {
                    Enabled = false,
                    HighGain = 0,
                    MidGain = 0,
                    LowGain = 0
                },
                ReverbSoundEffect = {
                    Enabled = false,
                    DecayTime = 0,
                    Density = 0,
                    Diffusion = 0,
                    DryLevel = 0,
                    WetLevel = 0
                },
                ChorusSoundEffect = {
                    Enabled = false,
                    Depth = 0,
                    Mix = 0,
                    Rate = 0
                },
                FlangeSoundEffect = {
                    Enabled = false,
                    Depth = 0,
                    Mix = 0,
                    Rate = 0
                },
                CompressorSoundEffect = {
                    Enabled = false,
                    Attack = 0,
                    GainMakeup = 0,
                    Ratio = 0,
                    Release = 0,
                    Threshold = 0
                },
                TremoloSoundEffect = {
                    Enabled = false,
                    Depth = 0,
                    Duty = 0,
                    Frequency = 0
                },
                PitchShiftSoundEffect = {
                    Enabled = false,
                    Octave = 0
                }
            }
        },
        Callback = function(entity)
            print("✅ Entity spawned:", entity.Config.Entity.Name)
        end
    },
    Despawn = {
        Sound = {
            SoundID = "rbxassetid://0",
            Volume = 0.7,
            SoundEffect = {
                EchoSoundEffect = {
                    Enabled = false,
                    Delay = 0.3,
                    DryLevel = 0,
                    WetLevel = 0.8
                },
                PitchShiftSoundEffect = {
                    Enabled = false,
                    Octave = -1
                },
                DistortionSoundEffect = {
                    Enabled = false,
                    Level = 0
                },
                EqualizerSoundEffect = {
                    Enabled = false,
                    HighGain = 0,
                    MidGain = 0,
                    LowGain = 0
                },
                ReverbSoundEffect = {
                    Enabled = false,
                    DecayTime = 0,
                    Density = 0,
                    Diffusion = 0,
                    DryLevel = 0,
                    WetLevel = 0
                },
                ChorusSoundEffect = {
                    Enabled = false,
                    Depth = 0,
                    Mix = 0,
                    Rate = 0
                },
                FlangeSoundEffect = {
                    Enabled = false,
                    Depth = 0,
                    Mix = 0,
                    Rate = 0
                },
                CompressorSoundEffect = {
                    Enabled = false,
                    Attack = 0,
                    GainMakeup = 0,
                    Ratio = 0,
                    Release = 0,
                    Threshold = 0
                },
                TremoloSoundEffect = {
                    Enabled = false,
                    Depth = 0,
                    Duty = 0,
                    Frequency = 0
                }
            }
        },
        Callback = function(entity)
            print("❌ Entity despawned:", entity.Config.Entity.Name)
        end
    },
    Other = {
        Callback = function(entity)
            print("🔧 Other callback triggered for:", entity.Config.Entity.Name)
        end
    }
    }
})

entity:SetCallback("OnSpawned", function()
    print("Entity has spawned!")
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving!")
end)

entity:SetCallback("OnReachNode", function(node)
    print("Entity reached node:", node.Name)
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime then
        print("Entity entered room:", room.Name, "for the first time")
    else
        print("Entity entered room:", room.Name, "again")
    end
end)

entity:SetCallback("OnLookAt", function(inSight)
    if inSight then
        print("Player is looking at entity!")
    else
        print("Player view is obstructed!")
    end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound then
        print("Entity started rebounding!")
    else
        print("Entity finished rebounding!")
    end
end)

entity:SetCallback("OnDespawning", function()
    print("Entity is despawning!")
end)

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned!")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
    if newHealth == 0 then
        print("Entity killed the player!")
    else
        print("Entity damaged the player, new health:", newHealth)
    end
end)


entity:Run()
