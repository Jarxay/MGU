-- Gui to Lua
-- Version: 3.2

-- Instances:

local Loader = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Ask = Instance.new("TextLabel")
local SynapseButton = Instance.new("TextButton")
local ArceusXButton = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local OtherButton = Instance.new("TextButton")

--Properties:

Loader.Name = "Loader"
Loader.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Loader.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Loader
Frame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Frame.BorderColor3 = Color3.fromRGB(0, 153, 255)
Frame.BorderSizePixel = 2
Frame.Position = UDim2.new(0.576034606, 0, 0.359133095, 0)
Frame.Size = UDim2.new(0, 419, 0, 242)

Ask.Name = "Ask"
Ask.Parent = Frame
Ask.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Ask.BackgroundTransparency = 1.000
Ask.Position = UDim2.new(-0.00289385323, 0, 0.0274546593, 0)
Ask.Size = UDim2.new(0, 418, 0, 24)
Ask.Font = Enum.Font.Code
Ask.Text = "Which executor are you using?"
Ask.TextColor3 = Color3.fromRGB(255, 255, 255)
Ask.TextScaled = true
Ask.TextSize = 14.000
Ask.TextWrapped = true

SynapseButton.Name = "SynapseButton"
SynapseButton.Parent = Frame
SynapseButton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
SynapseButton.BorderColor3 = Color3.fromRGB(0, 153, 255)
SynapseButton.BorderSizePixel = 2
SynapseButton.Position = UDim2.new(0.0873429105, 0, 0.233671457, 0)
SynapseButton.Size = UDim2.new(0, 341, 0, 28)
SynapseButton.Font = Enum.Font.Code
SynapseButton.Text = "Synapse"
SynapseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SynapseButton.TextScaled = true
SynapseButton.TextSize = 14.000
SynapseButton.TextWrapped = true

ArceusXButton.Name = "ArceusXButton"
ArceusXButton.Parent = Frame
ArceusXButton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
ArceusXButton.BorderColor3 = Color3.fromRGB(0, 153, 255)
ArceusXButton.BorderSizePixel = 2
ArceusXButton.Position = UDim2.new(0.0873429105, 0, 0.436150789, 0)
ArceusXButton.Size = UDim2.new(0, 341, 0, 28)
ArceusXButton.Font = Enum.Font.Code
ArceusXButton.Text = "Arceus X"
ArceusXButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ArceusXButton.TextScaled = true
ArceusXButton.TextSize = 14.000
ArceusXButton.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.00657140324, 0, 0.915821791, 0)
TextLabel.Size = UDim2.new(0, 414, 0, 21)
TextLabel.Font = Enum.Font.Code
TextLabel.Text = "https://discord.gg/362PMtCMRs"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

OtherButton.Name = "OtherButton"
OtherButton.Parent = Frame
OtherButton.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
OtherButton.BorderColor3 = Color3.fromRGB(0, 153, 255)
OtherButton.BorderSizePixel = 2
OtherButton.Position = UDim2.new(0.0873429105, 0, 0.634497941, 0)
OtherButton.Size = UDim2.new(0, 341, 0, 28)
OtherButton.Font = Enum.Font.Code
OtherButton.Text = "Other"
OtherButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OtherButton.TextScaled = true
OtherButton.TextSize = 14.000
OtherButton.TextWrapped = true

-- Scripts:

local function HHUBSIM_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	local Main = script.Parent
	Main.Active = true
	Main.Draggable = true
	
	local SynapseButton = Main.SynapseButton
	local OtherButton = Main.OtherButton
	local ArceusButton = Main.ArceusXButton
	
	local function ExecuteSynapse()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Jarxay/Temptation/main/NinjaLegendsSynapse.lua"))()
		Main:Destroy()
	end
	
	local function ExecuteArceus()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Jarxay/Temptation/main/NinjaLegendsArceusX.lua"))()
		Main:Destroy()
	end
	
	local function ExecuteOther()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Jarxay/Temptation/main/NinjaLegendsOther"))()
		Main:Destroy()
	end
	
	
	SynapseButton.MouseButton1Click:Connect(function()
		Main.Ask.Text = "Loading synapse edition..."
		ExecuteSynapse()
	end)
	
	ArceusButton.MouseButton1Click:Connect(function()
		Main.Ask.Text = "Loading Arceus edition..."
		ExecuteArceus()
	end)
	
	OtherButton.MouseButton1Click:Connect(function()
		Main.Ask.Text = "Loading other"
		ExecuteOther()
	end)
end
coroutine.wrap(HHUBSIM_fake_script)()
