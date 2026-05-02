local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Script Gaming V50(Beta)",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "Rayfield Interface Suite",
   LoadingSubtitle = "by Sirius",
   ShowText = "Rayfield", -- for mobile users to unhide Rayfield, change if you'd like
   Theme = "Default", -- Check https://docs.sirius.menu/rayfield/configuration/themes

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from emitting warnings when the script has a version mismatch with the interface.

   -- ScriptID = "sid_xxxxxxxxxxxx", -- Your Script ID from developer.sirius.menu — enables analytics, managed keys, and script hosting

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include Discord.gg/. E.g. Discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the Discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique, as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that the system will accept, can be RAW file links (pastebin, github, etc.) or simple strings ("hello", "key22")
   }
})

local Tab = Window:CreateTab("Custom Entity", 0)

local Section = Tab:CreateSection("Entities")

local Button = Tab:CreateButton({
    Name = "Spawn Depth",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Depth",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/raw/main/Depth.rbxm",
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
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Depth spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Depth started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("Depth despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn ScratchCat",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "ScratchCat",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/raw/main/ScratchCat.rbxm",
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
                Speed = 100,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("ScratchCat spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("ScratchCat started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("ScratchCat despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Eater",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Eater",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/raw/main/Elgato.rbxm",
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
                Speed = 300,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Eater spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Eater started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Eater started rebounding")
            else
                print("Eater finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("Eater despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Capybara",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Capybara",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/raw/main/Capybara.rbxm",
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
                Speed = 100,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 4,
                Max = 4,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Capybara spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Capybara started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Capybara started rebounding")
            else
                print("Capybara finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("Capybara despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn MovingEyes",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "MovingEyes",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/raw/main/MovingEyes.rbxm",
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
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("MovingEyes spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("MovingEyes started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("MovingEyes despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Kawaii Ambush",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Kawaii Ambush",
                Asset = "rbxassetid://11734849372",
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Kawaii Ambush spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Kawaii Ambush started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Kawaii Ambush started rebounding")
            else
                print("Kawaii Ambush finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("Kawaii Ambush despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Matcher",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Matcher",
                Asset = "rbxassetid://12459977063",
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
                Speed = 100,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Matcher spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Matcher started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("Matcher despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Rebound",
    Callback = function()
        local doorCount = 0
        local spawned = false
        local Reboundcolor = nil

        local function spawnRebound()
            if spawned then return end
            spawned = true

            if Reboundcolor then Reboundcolor:Destroy() end
            Reboundcolor = Instance.new("ColorCorrectionEffect", game.Lighting)
            game.Debris:AddItem(Reboundcolor, 24)
            Reboundcolor.Name = "Warn"
            Reboundcolor.TintColor = Color3.fromRGB(65, 138, 255)
            Reboundcolor.Saturation = -0.7
            Reboundcolor.Contrast = 0.2

            game.TweenService:Create(Reboundcolor, TweenInfo.new(15), {
                TintColor = Color3.fromRGB(255, 255, 255),
                Saturation = 0,
                Contrast = 0
            }):Play()

            local TW = game.TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5), {
                TintColor = Color3.fromRGB(255, 255, 255)
            })
            TW:Play()

            local mainGame = require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game)
            mainGame.camShaker:ShakeOnce(4.5, 3, 5, 5)

            local cue1 = Instance.new("Sound")
            cue1.Parent = game.Workspace
            cue1.SoundId = "rbxassetid://9114397505"

            for i = 1, 3 do
                local d = Instance.new("DistortionSoundEffect")
                d.Parent = cue1
                d.Level = 1
                local p = Instance.new("PitchShiftSoundEffect")
                p.Parent = cue1
                p.Octave = 0.5
            end
            cue1.Volume = 0.1
            cue1:Play()

            local cue2 = Instance.new("Sound")
            cue2.Parent = game.Workspace
            cue2.SoundId = "rbxassetid://9114221327"
            cue2.Volume = 3
            cue2:Play()

            task.wait(2.8)

            local scare = Instance.new("Sound")
            scare.Parent = game.Workspace
            scare.SoundId = "rbxassetid://5567523008"
            scare.PlaybackSpeed = 3
            scare.Volume = 1

            local shift = Instance.new("PitchShiftSoundEffect")
            shift.Octave = 0.5
            shift.Parent = scare

            local distortEffect = Instance.new("DistortionSoundEffect")
            distortEffect.Parent = scare
            distortEffect.Level = 1

            local randomWait = math.random(3, 5)
            for i = 1, randomWait do
                game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
                task.wait(1)
            end

            local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

            local cfg = {
                Entity = {
                    Name = "Rebound",
                    Asset = "rbxassetid://12304843796",
                    HeightOffset = 0
                },
                Lights = {
                    Flicker = {Enabled = true, Duration = 1},
                    Shatter = true,
                    Repair = false
                },
                Earthquake = {Enabled = false},
                CameraShake = {Enabled = true, Range = 100, Values = {1.5, 20, 0.1, 1}},
                Movement = {Speed = 200, Delay = 2, Reversed = false},
                Rebounding = {Enabled = false, Type = "Ambush", Min = 1, Max = 1, Delay = 2},
                Damage = {Enabled = false, Range = 40, Amount = 125},
                Crucifixion = {Enabled = true, Range = 40, Resist = false, Break = true},
                Death = {Type = "Guiding", Hints = {"Run", "Hide"}, Cause = ""}
            }

            local e1 = spawner.Create(cfg)
            e1:SetCallback("OnDespawned", function()
                doorCount = 0
                spawned = false
            end)
            e1:Run()

            local e2 = spawner.Create(cfg)
            e2:Run()
        end

        local function hookDoor()
            local roomVal = game.ReplicatedStorage.GameData.LatestRoom.Value
            local room = workspace.CurrentRooms[tostring(roomVal)]
            if room and room.Door and room.Door.ClientOpen then
                room.Door.ClientOpen.OnClientEvent:Connect(function()
                    doorCount = doorCount + 1
                    if doorCount >= 4 and not spawned then
                        spawnRebound()
                    end
                end)
            end
        end

        hookDoor()
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Connect(hookDoor)
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Old Ambush",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Old Ambush",
                Asset = "rbxassetid://12304880388",
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Old Ambush spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Old Ambush started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Old Ambush started rebounding")
            else
                print("Old Ambush finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("Old Ambush despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Silence",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Silence",
                Asset = "rbxassetid://12304955388",
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
                Speed = 100,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Silence spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Silence started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("Silence despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Greed",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Greed",
                Asset = "rbxassetid://15104046330",
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Greed spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Greed started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Greed started rebounding")
            else
                print("Greed finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("Greed despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Freeze Entity",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Freeze Entity",
                Asset = "rbxassetid://132704183389744",
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
                Speed = 100,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Freeze Entity spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Freeze Entity started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("Freeze Entity despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn B-60 Rebound",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "B-60 Rebound",
                Asset = "rbxassetid://12333534287",
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
                Min = 3,
                Max = 3,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("B-60 Rebound spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("B-60 Rebound started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("B-60 Rebound started rebounding")
            else
                print("B-60 Rebound finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("B-60 Rebound despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn A-60",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "A-60",
                Asset = "rbxassetid://12304926229",
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
                Speed = 300,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("A-60 spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("A-60 started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("A-60 started rebounding")
            else
                print("A-60 finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("A-60 despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Big Games",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Big Games",
                Asset = "https://github.com/plamen6789/CustomDoorsMonsters/raw/main/BIGGAMES.rbxm",
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
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Big Games spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Big Games started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("Big Games despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Rage",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Rage",
                Asset = "rbxassetid://17613254436",
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
                Speed = 300,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = true,
                Type = "Ambush",
                Min = 50,
                Max = 50,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Rage spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Rage started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Rage started rebounding")
            else
                print("Rage finished rebounding")
            end
        end)

        entity:SetCallback("OnDamagePlayer", function(health)
            print("Rage damaged player, health: " .. health)
        end)

        entity:SetCallback("OnDespawned", function()
            print("Rage despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Surge",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Surge",
                Asset = "rbxassetid://15114507528",
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
                Min = 2,
                Max = 2,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Surge spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Surge started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Surge started rebounding")
            else
                print("Surge finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("Surge despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Specimen2",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Specimen2",
                Asset = "https://github.com/fnaclol/sussy-bois/raw/main/Specimen2.rbxm",
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
                Speed = 30,
                Delay = 2,
                Reversed = false
            },
            Rebounding = {
                Enabled = false,
                Type = "Ambush",
                Min = 1,
                Max = 1,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Specimen2 spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Specimen2 started moving")
        end)

        entity:SetCallback("OnDespawned", function()
            print("Specimen2 despawned")
        end)

        entity:Run()
    end,
})

local Button = Tab:CreateButton({
    Name = "Spawn Firebrand",
    Callback = function()
        local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/RegularVynixu/Utilities/main/Doors/Entity%20Spawner/V2/Source.lua"))()

        local entity = spawner.Create({
            Entity = {
                Name = "Firebrand",
                Asset = "https://github.com/fnaclol/sussy-bois/raw/main/FireBrand3.rbxm",
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
                Speed = 400,
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
                Hints = {"Run", "Hide"},
                Cause = ""
            }
        })

        entity:SetCallback("OnSpawned", function()
            print("Firebrand spawned")
        end)

        entity:SetCallback("OnStartMoving", function()
            print("Firebrand started moving")
        end)

        entity:SetCallback("OnRebounding", function(start)
            if start then
                print("Firebrand started rebounding")
            else
                print("Firebrand finished rebounding")
            end
        end)

        entity:SetCallback("OnDespawned", function()
            print("Firebrand despawned")
        end)

        entity:Run()
    end,
})

local Tab = Window:CreateTab("Crucifix", 0)

local Section = Tab:CreateSection("Crucifix")

local Button = Tab:CreateButton({
    Name = "Spawn Crucifix Seek",
    Callback = function()
        local tool = game:GetObjects("rbxassetid://11780280932")[1]
        tool.Name = "Custom Tool"
        tool.Parent = game.Players.LocalPlayer.Backpack
        
        local player = game.Players.LocalPlayer
        local char = player.Character or player.CharacterAdded:Wait()
        local rightArm = char:WaitForChild("RightUpperArm")
        local leftArm = char:WaitForChild("LeftUpperArm")
        local rightC1 = rightArm.RightShoulder.C1
        local leftC1 = leftArm.LeftShoulder.C1
        local equipped = false
        
        tool.Equipped:Connect(function()
            if equipped then return end
            equipped = true
            
            rightArm.Name = "R_Arm"
            leftArm.Name = "L_Arm"
            rightArm.RightShoulder.C1 = rightC1 * CFrame.Angles(math.rad(-90), math.rad(-15), 0)
            leftArm.LeftShoulder.C1 = leftC1 * CFrame.new(-0.2, -0.3, -0.5) * CFrame.Angles(math.rad(-125), math.rad(25), math.rad(25))
        end)
        
        tool.Unequipped:Connect(function()
            if not equipped then return end
            equipped = false
            
            rightArm.RightShoulder.C1 = rightC1
            leftArm.LeftShoulder.C1 = leftC1
            rightArm.Name = "RightUpperArm"
            leftArm.Name = "LeftUpperArm"
        end)
    end,
})

local Tab = Window:CreateTab("Credit", 0) -- Title, Image

local Section = Tab:NewSection("Credit")

local Label = Tab:CreateLabel("Beta", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme

local Label = Tab:CreateLabel("Credit By ScriptGaming", 4483362458, Color3.fromRGB(255, 255, 255), false) -- Title, Icon, Color, IgnoreTheme
