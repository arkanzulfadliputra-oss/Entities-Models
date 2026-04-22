require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Darkness Hardcore (Beta) God Mode", true)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded Sound", true)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded Entity", true)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Loaded Fog", true)
require(game.Players.LocalPlayer.PlayerGui.MainUI.Initiator.Main_Game).caption("Credit By ScripterGaming", true)

local soundId = "rbxassetid://4988580646"
local distortionLevel = 0.53

local function applyToDoor(room)
    local doorModel = room:FindFirstChild("Door")
    if doorModel then
        local realDoor = doorModel:FindFirstChild("Door")
        if realDoor then
            local openSound = realDoor:FindFirstChild("Open")
            if openSound and openSound:IsA("Sound") then
                openSound.SoundId = soundId

                local distort = openSound:FindFirstChildOfClass("DistortionSoundEffect")
                if not distort then
                    distort = Instance.new("DistortionSoundEffect")
                    distort.Parent = openSound
                end
                distort.Level = distortionLevel
            end
        end
    end
end

local function scanRooms()
    local currentRooms = workspace:FindFirstChild("CurrentRooms") or workspace:FindFirstChild("CurrentRoom")
    if not currentRooms then return end

    for _, room in pairs(currentRooms:GetChildren()) do
        applyToDoor(room)
    end
end

coroutine.wrap(function()
    while true do
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(200)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Depth%20Plamen.lua"))()
    end
end)()

coroutine.wrap(function()
    while true do
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(400)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Firebrand.lua"))()
    end
end)()

coroutine.wrap(function()
    while true do
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        wait(400)
        game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Custom%20Entities%20Models/Matcher.lua"))()
    end
end)()

local function replaceWardrobeWithMetal()
    local currentRooms = workspace:FindFirstChild("CurrentRooms") or workspace:FindFirstChild("CurrentRoom")
    if not currentRooms then return end
    
    for _, room in pairs(currentRooms:GetChildren()) do
        local asset = room:FindFirstChild("Asset")
        if asset then
            for _, obj in pairs(asset:GetChildren()) do
                if obj.Name == "Wardrobe" or obj.Name == "Toolshed" then
                    if obj:IsA("Model") then
                        for _, part in pairs(obj:GetDescendants()) do
                            if part:IsA("BasePart") then
                                part.Material = Enum.Material.Metal
                                part.Reflectance = 0.3
                                part.Metallic = 1
                            end
                        end
                    elseif obj:IsA("BasePart") then
                        obj.Material = Enum.Material.Metal
                        obj.Reflectance = 0.3
                        obj.Metallic = 1
                    end
                end
            end
        end
    end
end

while true do
    game.ReplicatedStorage.GameData.LatestRoom.Changed:Wait()
    wait(0.5)
    replaceWardrobeWithMetal()
end
