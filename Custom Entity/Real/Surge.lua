local Reboundcolor = Instance.new("ColorCorrectionEffect",game.Lighting) 
game.Debris:AddItem(Reboundcolor,24)
Reboundcolor.Name = "Warn"
Reboundcolor.TintColor = Color3.fromRGB(120, 255, 120) -- Hijau muda terang tapi gak terlalu
Reboundcolor.Saturation = -0.7 
Reboundcolor.Contrast = 0.2
game.TweenService:Create(Reboundcolor,TweenInfo.new(15),{TintColor = Color3.fromRGB(255, 255, 255),Saturation = 0, Contrast = 0}):Play()
local TweenService = game:GetService("TweenService")
local TW = TweenService:Create(game.Lighting.MainColorCorrection, TweenInfo.new(5),{TintColor = Color3.fromRGB(255, 255, 255)})
TW:Play()
TW.Completed:Connect(function()
    Reboundcolor:Destroy()
    TW:Destroy()
end)

function GitAud(soundgit, filename)
    local url = soundgit
    local FileName = filename
    
    local SoundName = tostring(filename)
    
    writefile(FileName..".mp3", game:HttpGet(url))
    
    local getasset = getcustomasset or getsynasset or gethuiasset
    return getasset(FileName..".mp3")
end

function CustomGitSound(soundlink, vol, filename)
    local sound = Instance.new("Sound")
    sound.SoundId = GitAud(soundlink, filename)
    sound.Parent = workspace
    sound.Volume = vol
    sound.PlaybackSpeed = 1
    sound.Name = filename
    
    sound:Play()
end

CustomGitSound(
    "https://github.com/arkanzulfadliputra-oss/Entities-Models/raw/refs/heads/main/Sound/Threat%20Spawn.mp3?raw=true", 
       1, 
     "Spawn"
)
wait(2.8)
---====== Load spawner ======---

local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/Utilities/refs/heads/patch-1/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
	Entity = {
		Name = "Surge",
		Asset = "rbxassetid://15114507528",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = false,
			Duration = 1
		},
		Shatter = true,
		Repair = false,
		ColorCorrection = {
		    Enabled = false,
		    Color = Color3.fromRGB(255, 0, 0), -- Color3.new
		    CameraShake = {10, 5, 2, 5}, -- Magnitude, Roughness, FadeIn, FadeOut
		    Sound = {
		        SoundId = "rbxassetid://0",
		        Volume = 1
		    },
		    Duration = 5,
		    FadeIn = 1,
		    FadeOut = 2
		}
	},
	Earthquake = {
		Enabled = false
	},
	CameraShake = {
		Enabled = true,
		Range = 100,
		Values = {1.5, 20, 0.1, 1} -- Magnitude, Roughness, FadeIn, FadeOut
	},
	Movement = {
		Speed = 200   ,
		Delay = 2,
		Reversed = false
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 5,
		Delay = 2
	},
	Damage = {
		Enabled = false,
		Killed = false,
		Range = 40,
		Amount = 125,
		Withered = false, -- If true, it take damages to MaxHealth (1~inf)
		Random = {
		    Enabled = false,
		    Min = 1,
		    Max = 200
		}
	},
	Jumpscare = {
	    Enabled = false,
	    Face = "rbxassetid://0",
	    FacePosition = UDim2.new(0.5, 0, 0.5, 0),
	    FaceSize = UDim2.new(0, 150, 0, 150),
	    BackgroundColor = Color3.new(1, 1, 1), -- Color3.fromRGB
	    BackgroundColor2 = Color3.new(0, 0, 0), -- Color3.fromRGB
	    Sound = "rbxassetid://10483790459",
	    SoundVolume = 5
	},
	Achievements = {
	    Survive = {
	        Enabled = true,
	        Once = false,
	        Title = "Out My Surge Power",
	        Desc = "I Want to Go Here!",
	        Reason = "Successfully survive Surge.",
	        Image = "rbxassetid://99002424743674",
	        Prize = {
                Revives = {
                    Visible = false,
                    Amount = 1
                },
                Knobs = {
                    Visible = false,
                    Amount = 100
                },
                Stardust = {
                    Visible = false,
                    Amount = 20
                }
            }
	    },
	    Crucifix = {
	        Enabled = true,
	        Once = true,
	        Title = "Surge Banished",
	        Desc = "Rawrrrr Gusy",
	        Reason = "Use a Crucifix against Surge.",
	        Image = "rbxassetid://75909838727200",
	        Prize = {
                Revives = {
                    Visible = false,
                    Amount = 1
                },
                Knobs = {
                    Visible = false,
                    Amount = 100
                },
                Stardust = {
                    Visible = false,
                    Amount = 20
                }
            }
	    },
	    Death = {
	        Enabled = false,
	        Once = false,
	        Title = "Death Title",
	        Desc = "Death Description",
	        Reason = "Death Reason",
	        Image = "rbxassetid://12309073114",
	        Prize = {
                Revives = {
                    Visible = false,
                    Amount = 1
                },
                Knobs = {
                    Visible = false,
                    Amount = 100
                },
                Stardust = {
                    Visible = false,
                    Amount = 20
                }
            }
	    }
	},
	Crucifixion = {
	    Type = "Guiding", -- "Curious"
		Enabled = true,
		Range = 40,
		Resist = false,
		Break = true
	},
	Death = {
	    IsolationFloors = false,
		Type = "Guiding", -- "Curious"
		Hints = {"Death", "Hints", "Go", "Here"}, -- *Required!
        Cause = "",
        Floors = {
            Hotel = {
                Type = "Guiding", -- "Curious"
		        Hints = {"Death", "Hints", "Go", "Here"},
                Cause = ""
            },
            Mines = {
                Type = "Guiding", -- "Curious"
		        Hints = {"Death", "Hints", "Go", "Here"},
                Cause = ""
            }
        },
        Subfloors = {
            Backdoor = {
                Type = "Curious", -- "Guiding"
		        Hints = {"Death", "Hints", "Go", "Here"},
                Cause = ""
            },
            Rooms = {
                Type = "Curious", -- "Guiding"
		        Hints = {"Death", "Hints", "Go", "Here"},
                Cause = ""
            },
            Outdoors = {
                Type = "Curious", -- "Guiding"
		        Hints = {"Death", "Hints", "Go", "Here"},
                Cause = ""
            }
        }
	}
})

---====== Debug entity ======---

entity:SetCallback("OnSpawned", function()
    print("Entity has spawned")
end)

entity:SetCallback("OnStartMoving", function()
    print("Entity has started moving")
end)

entity:SetCallback("OnEnterRoom", function(room, firstTime)
    if firstTime == true then
        print("Entity has entered room: ".. room.Name.. " for the first time")
    else
        print("Entity has entered room: ".. room.Name.. " again")
    end
end)

entity:SetCallback("OnLookAt", function(lineOfSight)
	if lineOfSight == true then
		print("Player is looking at entity")
	else
		print("Player view is obstructed by something")
	end
end)

entity:SetCallback("OnRebounding", function(startOfRebound)
    if startOfRebound == true then
        print("Entity has started rebounding")
	else
        print("Entity has finished rebounding")
	end
end)

entity:SetCallback("OnDespawning", function()
    print("Entity is despawning")
end)

entity:SetCallback("OnDespawned", function()
    print("Entity has despawned")
end)

entity:SetCallback("OnDamagePlayer", function(newHealth)
	if newHealth == 0 then
		print("Entity has killed the player")
	else
		print("Entity has damaged the player")
	end
end)

entity:SetCallback("OnCrucified", function(stateResist)
    print("Entity was crucified")
    task.wait(3)
	if stateResist == true then
	    print("Entity is resisting the crucifixion")
	else
		print("The entity has been breaking by the crucifixion")
	end
end)

--[[

DEVELOPER NOTE:
By overwriting 'CrucifixionOverwrite' the default crucifixion callback will be replaced with your custom callback.

entity:SetCallback("CrucifixionOverwrite", function()
    print("Custom crucifixion callback")
end)

]]--

---====== Run entity ======---

entity:Run()
