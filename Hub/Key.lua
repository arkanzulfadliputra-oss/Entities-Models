local function rainbow(stroke)
    task.spawn(function()
        while stroke and stroke.Parent do
            for hue = 0, 1, 0.01 do
                stroke.Color = Color3.fromHSV(hue, 1, 1)
                task.wait()
            end
        end
    end)
end

local screenGui = Instance.new("ScreenGui", game.CoreGui)

local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(1, 0, 1, 0)
frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

local strokeLoading = Instance.new("UIStroke")
strokeLoading.Parent = frame
strokeLoading.Thickness = 6
strokeLoading.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
rainbow(strokeLoading)

local textLabel = Instance.new("TextLabel", frame)
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.TextColor3 = Color3.new(1, 1, 1)
textLabel.TextScaled = true

for i = 1, 3 do
    textLabel.Text = "Loading" .. string.rep(".", i)
    task.wait(0.7)
end

task.wait(0.5)
screenGui:Destroy()

local correctKey = "SupportMe"
local discordLink = "https://discord.gg/PbTndt4Gz"
local scriptUrl = "https://raw.githubusercontent.com/arkanzulfadliputra-oss/Entities-Models/refs/heads/main/Hub/Rayfield%20Normal.lua"

local keySystemGui = Instance.new("ScreenGui", game.CoreGui)

local keyFrame = Instance.new("Frame", keySystemGui)
keyFrame.Size = UDim2.new(0, 380, 0, 220)
keyFrame.Position = UDim2.new(0.5, -190, 0.5, -110)
keyFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)

local strokeKey = Instance.new("UIStroke")
strokeKey.Parent = keyFrame
strokeKey.Thickness = 4
strokeKey.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
rainbow(strokeKey)

local titleLabel = Instance.new("TextLabel", keyFrame)
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "KEY SYSTEM"
titleLabel.TextColor3 = Color3.new(1, 1, 1)
titleLabel.TextScaled = true

local keyTextBox = Instance.new("TextBox", keyFrame)
keyTextBox.Size = UDim2.new(0.8, 0, 0, 40)
keyTextBox.Position = UDim2.new(0.1, 0, 0.3, 0)
keyTextBox.PlaceholderText = "Enter Key..."
keyTextBox.PlaceholderColor3 = Color3.fromRGB(255, 255, 255)
keyTextBox.TextScaled = true

local getKeyButton = Instance.new("TextButton", keyFrame)
getKeyButton.Size = UDim2.new(0.4, 0, 0, 40)
getKeyButton.Position = UDim2.new(0.05, 0, 0.75, 0)
getKeyButton.Text = "Get Key"
getKeyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
getKeyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
getKeyButton.TextScaled = true

local submitButton = Instance.new("TextButton", keyFrame)
submitButton.Size = UDim2.new(0.4, 0, 0, 40)
submitButton.Position = UDim2.new(0.55, 0, 0.75, 0)
submitButton.Text = "Submit"
submitButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
submitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
submitButton.TextScaled = true

local statusLabel = Instance.new("TextLabel", keyFrame)
statusLabel.Size = UDim2.new(1, 0, 0, 25)
statusLabel.Position = UDim2.new(0, 0, 1, -25)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.new(1, 1, 1)
statusLabel.TextScaled = true

getKeyButton.MouseButton1Click:Connect(function()
    if setclipboard then
        setclipboard(discordLink)
        statusLabel.Text = "Link Copied!"
    else
        statusLabel.Text = "Clipboard Not Supported"
    end
end)

submitButton.MouseButton1Click:Connect(function()
    if keyTextBox.Text == correctKey then
        statusLabel.Text = "Access Granted!"
        task.wait(0.3)
        keySystemGui:Destroy()
        loadstring(game:HttpGet(scriptUrl))()
    else
        statusLabel.Text = "Invalid Key!"
    end
end)
