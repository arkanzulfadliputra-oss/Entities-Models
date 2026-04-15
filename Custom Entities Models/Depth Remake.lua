local spawner = loadstring(game:HttpGet("https://raw.githubusercontent.com/Focuslol666/Utilities/refs/heads/patch-1/Doors/Entity%20Spawner/V2/Source.lua"))()

---====== Create entity ======---

local entity = spawner.Create({
	Entity = {
		Name = "Depth Remake",
		Asset = "https://github.com/arkanzulfadliputra-oss/Entities-Models/raw/main/Entity%20Model/Depth%20Remake.rbxm",
		HeightOffset = 0
	},
	Lights = {
		Flicker = {
			Enabled = true,
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
		Speed = 200,
		Delay = 4,
		Reversed = false
	},
	Rebounding = {
		Enabled = true,
		Type = "Ambush", -- "Blitz"
		Min = 1,
		Max = 1,
		Delay = 2
	},
	Damage = {
		Enabled = true,
		Killed = true,
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
	    Face = "rbxassetid://5263560566",
	    FacePosition = UDim2.new(0.5, 0, 0.5, 0),
	    FaceSize = UDim2.new(0, 150, 0, 150),
	    BackgroundColor = Color3.new( 0, 0, 255), -- Color3.fromRGB
	    BackgroundColor2 = Color3.new( 0, 0, 255), -- Color3.fromRGB
	    Sound = "rbxassetid://10483790459",
	    SoundVolume = 5
	},
	Achievements = {
	    Survive = {
	        Enabled = true,
	        Once = false,
	        Title = "Depth of Rooms",
	        Desc = "You Have Been Safe From the Depth !",
	        Reason = "Successfully survive Depth.",
	        Image = "rbxassetid://70886569360519",
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
	        Enabled = false,
	        Once = true,
	        Title = "Stay Out Of My Way",
	        Desc = "You're not that guy, pal.",
	        Reason = "Use a Crucifix against Rush.",
	        Image = "rbxassetid://12307726692",
	        Prize = {
                Revives = {
                    Visible = true,
                    Amount = 1
                },
                Knobs = {
                    Visible = true,
                    Amount = 100
                },
                Stardust = {
                    Visible = true,
                    Amount = 20
                }
            }
	    },
	    Death = {
	        Enabled = true,
	        Once = false,
	        Title = "Depth of Destruction",
	        Desc = "You're Dead By Depth",
	        Reason = "Encounter Depth",
	        Image = "rbxassetid://10840981856",
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
		Hints = {"You Dead By Depth", "If There Is Strange Flicker And Sound, Hide", "Go Revive For Survive", "Thanks For Playing"}, -- *Required!
        Cause = "Depth",
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
