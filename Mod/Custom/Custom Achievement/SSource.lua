local AchievementGiver = {}

AchievementGiver.Giver = {}

function AchievementGiver.Giver.Create(config)
    local player = game.Players.LocalPlayer
    local Unlock = require(player.PlayerGui.MainUI.Initiator.Main_Lobby.RemoteListener.Modules.AchievementUnlock)
    
    for i, v in pairs(require(game:GetService("ReplicatedStorage").Achievements)) do
        v.Title = config.Title or "Achievement"
        v.Desc = config.Desc or "Description"
        v.Reason = config.Reason or "Reason"
        v.BadgeId = 0
        v.Category = 10
        if config.Image then
            v.Image = config.Image
        end
    end
    
    Unlock(nil, "Join")
    print("Achievement unlocked: " .. (config.Title or "Achievement"))
end
