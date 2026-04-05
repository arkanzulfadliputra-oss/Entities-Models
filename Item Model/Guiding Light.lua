local tool = LoadCustomInstance("rbxassetid://12093585726")
tool.Parent = game:GetService("Players").LocalPlayer.Backpack

tool.Grip = CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(90), 0, 0)

local gripActive = false

spawn(function()
    while tool and tool.Parent do
        if gripActive then
            pcall(function()
                tool.Grip = CFrame.new(0, -0.5, 0) * CFrame.Angles(math.rad(90), 0, 0)
            end)
        end
        wait(0.1)
    end
end)

tool.Equipped:Connect(function()
    gripActive = true
end)

tool.Unequipped:Connect(function()
    gripActive = false
end)
