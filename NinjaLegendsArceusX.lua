-- Gui to Lua
-- Version: 3.2

-- Instances:

local MguLite = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Main = Instance.new("Frame")
local Mainowo = Instance.new("Frame")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local Autosell = Instance.new("TextButton")
local AutoSwing = Instance.new("TextButton")
local AutoswingToggle = Instance.new("Frame")
local AutosellToggle = Instance.new("Frame")
local AutobuySwordToggle = Instance.new("Frame")
local AutobuySword = Instance.new("TextButton")
local WaterMark = Instance.new("Frame")
local TextLabel_2 = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")
local Closed = Instance.new("TextButton")

--Properties:

MguLite.Name = "MguLite"
MguLite.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
MguLite.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
MguLite.ResetOnSpawn = false

MainFrame.Name = "MainFrame"
MainFrame.Parent = MguLite
MainFrame.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
MainFrame.BorderColor3 = Color3.fromRGB(38, 83, 238)
MainFrame.Position = UDim2.new(0.232841656, 0, 0.270972461, 0)
MainFrame.Size = UDim2.new(0, 420, 0, 381)
MainFrame.Visible = false

Main.Name = "Main"
Main.Parent = MainFrame
Main.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Main.Position = UDim2.new(0.0205100644, 0, 0.0223776344, 0)
Main.Size = UDim2.new(0, 402, 0, 363)

Mainowo.Name = "Mainowo"
Mainowo.Parent = Main
Mainowo.BackgroundColor3 = Color3.fromRGB(38, 83, 238)
Mainowo.BorderColor3 = Color3.fromRGB(38, 83, 238)
Mainowo.BorderSizePixel = 0
Mainowo.Position = UDim2.new(0.0217513666, 0, 0.0715937316, 0)
Mainowo.Size = UDim2.new(0, 163, 0, 3)

Frame.Parent = Mainowo
Frame.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Frame.Position = UDim2.new(0, 0, 1.25767517, 0)
Frame.Size = UDim2.new(0, 163, 0, 161)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0109891361, 0, -0.00703174295, 0)
TextLabel.Size = UDim2.new(0, 161, 0, 17)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Auto"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000

Autosell.Name = "Autosell"
Autosell.Parent = Frame
Autosell.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
Autosell.BorderColor3 = Color3.fromRGB(38, 83, 238)
Autosell.BorderSizePixel = 0
Autosell.Position = UDim2.new(0.152472556, 0, 0.271481901, 0)
Autosell.Size = UDim2.new(0, 124, 0, 15)
Autosell.Font = Enum.Font.Code
Autosell.Text = "Autosell"
Autosell.TextColor3 = Color3.fromRGB(255, 255, 255)
Autosell.TextScaled = true
Autosell.TextSize = 14.000
Autosell.TextWrapped = true

AutoSwing.Name = "AutoSwing"
AutoSwing.Parent = Frame
AutoSwing.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
AutoSwing.BorderColor3 = Color3.fromRGB(0, 153, 255)
AutoSwing.BorderSizePixel = 0
AutoSwing.Position = UDim2.new(0.146337584, 0, 0.148311257, 0)
AutoSwing.Size = UDim2.new(0, 125, 0, 15)
AutoSwing.Font = Enum.Font.Code
AutoSwing.Text = "Autoswing"
AutoSwing.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoSwing.TextScaled = true
AutoSwing.TextSize = 14.000
AutoSwing.TextWrapped = true

AutoswingToggle.Name = "AutoswingToggle"
AutoswingToggle.Parent = Frame
AutoswingToggle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
AutoswingToggle.BorderColor3 = Color3.fromRGB(45, 45, 45)
AutoswingToggle.Position = UDim2.new(0.0559329167, 0, 0.147453696, 0)
AutoswingToggle.Size = UDim2.new(0, 13, 0, 15)

AutosellToggle.Name = "AutosellToggle"
AutosellToggle.Parent = Frame
AutosellToggle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
AutosellToggle.BorderColor3 = Color3.fromRGB(45, 45, 45)
AutosellToggle.Position = UDim2.new(0.0559329167, 0, 0.271172136, 0)
AutosellToggle.Size = UDim2.new(0, 13, 0, 15)

AutobuySwordToggle.Name = "AutobuySwordToggle"
AutobuySwordToggle.Parent = Frame
AutobuySwordToggle.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
AutobuySwordToggle.BorderColor3 = Color3.fromRGB(45, 45, 45)
AutobuySwordToggle.Position = UDim2.new(0.0559329167, 0, 0.395395756, 0)
AutobuySwordToggle.Size = UDim2.new(0, 13, 0, 15)

AutobuySword.Name = "AutobuySword"
AutobuySword.Parent = Frame
AutobuySword.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
AutobuySword.BorderColor3 = Color3.fromRGB(38, 83, 238)
AutobuySword.BorderSizePixel = 0
AutobuySword.Position = UDim2.new(0.152472556, 0, 0.395705521, 0)
AutobuySword.Size = UDim2.new(0, 124, 0, 15)
AutobuySword.Font = Enum.Font.Code
AutobuySword.Text = "Autobuy Sword"
AutobuySword.TextColor3 = Color3.fromRGB(255, 255, 255)
AutobuySword.TextScaled = true
AutobuySword.TextSize = 14.000
AutobuySword.TextWrapped = true

WaterMark.Name = "WaterMark"
WaterMark.Parent = MainFrame
WaterMark.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
WaterMark.BorderSizePixel = 0
WaterMark.Position = UDim2.new(0.00238095247, 0, 0.00262467191, 0)
WaterMark.Size = UDim2.new(0, 418, 0, 17)

TextLabel_2.Parent = WaterMark
TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.BackgroundTransparency = 1.000
TextLabel_2.Position = UDim2.new(-1.64269259e-05, 0, -0.00579654472, 0)
TextLabel_2.Size = UDim2.new(0, 216, 0, 17)
TextLabel_2.Font = Enum.Font.Code
TextLabel_2.Text = "MGU Arceus X | INSERTPLR  | Release 1.0"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextWrapped = true

TextButton.Parent = MainFrame
TextButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
TextButton.BorderColor3 = Color3.fromRGB(38, 83, 238)
TextButton.Position = UDim2.new(0.844543099, 0, -0.000108333305, 0)
TextButton.Size = UDim2.new(0, 65, 0, 16)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Close"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

Closed.Name = "Closed"
Closed.Parent = MguLite
Closed.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
Closed.BorderColor3 = Color3.fromRGB(38, 83, 238)
Closed.Position = UDim2.new(0.853544652, 0, 0.898652256, 0)
Closed.Size = UDim2.new(0, 137, 0, 33)
Closed.Font = Enum.Font.SourceSans
Closed.Text = "Open"
Closed.TextColor3 = Color3.fromRGB(255, 255, 255)
Closed.TextScaled = true
Closed.TextSize = 14.000
Closed.TextWrapped = true

-- Scripts:

local function XSCA_fake_script() -- MainFrame.JARAXY 
	local script = Instance.new('LocalScript', MainFrame)

	local plr = game.Players.LocalPlayer
	local Mainframe = game.Players.LocalPlayer.PlayerGui.MguLite.MainFrame.Main.Mainowo.Frame
	local AutoswingButton = Mainframe.AutoSwing
	local AutoSellButton = Mainframe.Autosell
	local AutoBuySwordButton = Mainframe.AutobuySword
	local Autoswing = false
	local Autosell = false
	local AutobuySword = false
	local SwingArgs = {
		[1] = "swingKatana"
	}
	
	script.Parent.Active = true
	script.Parent.Draggable = true
	
	
	
	
	AutoswingButton.MouseButton1Down:Connect(function()
		if Autoswing == false then
			Autoswing = true
			Mainframe.AutoswingToggle.BackgroundColor3 = Color3.new(0.14902, 0.32549, 0.933333)
			
			while Autoswing == true do
				wait()
				game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(SwingArgs))
			end
			
			
		else
			Autoswing = false
			Mainframe.AutoswingToggle.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
		end
	end)
	
	AutoSellButton.MouseButton1Down:Connect(function()
		if Autosell == false then
			Autosell = true
			
			Mainframe.AutosellToggle.BackgroundColor3 = Color3.new(0.14902, 0.32549, 0.933333)
			
			while Autosell == true do
				plr.Character.HumanoidRootPart.CFrame = CFrame.new(83,91246,119)
				wait(0.25)
				plr.Character.HumanoidRootPart.CFrame = CFrame.new(146,91245,72)
				wait()
			end
		else
			Autosell = false
			Mainframe.AutosellToggle.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
		end
	end)
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	local AutobuySwordToggle = Mainframe.AutobuySwordToggle
	
	AutoBuySwordButton.MouseButton1Click:Connect(function()
		if AutobuySword == false then
			AutobuySword = true
			AutobuySwordToggle.BackgroundColor3 = Color3.new(0.14902, 0.32549, 0.933333)
			while AutobuySword == true do
				wait()
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons.Ground:GetChildren()) do
					print(v.Name)
					local BuySwordArgs1 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs1))
					wait(0.01)
				end
				wait(0.01)
	
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Astral Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs2 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs2))
					wait(0.01)
				end
				wait(0.01)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Space Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs3 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs3))
					wait(0.01)
				end
				wait(0.01)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Tundra Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs4 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs4))
					wait(0.01)
				end
	
				wait(0.01)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Eternal Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs5 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs5))
					wait(0.01)
				end
				wait()
	
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Sandstorm"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs6 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs6))
					wait(0.01)
				end
				wait()
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Thunderstorm"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs7 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs7))
					wait(0.01)
				end
				wait()
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Ancient Inferno Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs8 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs8))
					wait(0.01)
				end
	
				wait(0.01)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Midnight Shadow Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs9 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs9))
					wait(0.0001)
				end
				wait(0.01)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Mythical Souls Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs10 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs10))
					wait(0.0001)
				end
				wait(0.01)
	
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Winter Wonder Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs11 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs11))
					wait(0.0001)
				end
	
				wait()
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Golden Master Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs12 = {
						[1] = "buySword",
						[2] = v.Name
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs12))
					wait(0)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Dragon Legend Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs13 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs13))
					wait(0.0001)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Cybernetic Legends Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs14 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs14))
					wait(0.0001)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Skystorm Ultraus Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs15 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs15))
					wait(0.0001)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Chaos Legends Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs16 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs16))
					wait(0.0001)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Soul Fusion Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs17 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs17))
					wait(0.0001)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Dark Elements Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs18 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs18))
					wait(0.0001)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Inner Peace Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs19 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs19))
					wait(0.0001)
				end
				wait(0.15)
				for i,v in pairs(game:GetService("ReplicatedStorage").Weapons["Blazing Vortex Island"]:GetChildren()) do
					print(v.Name)
					local BuySwordArgs20 = {
						[1] = "buySword",
						[2] = v.Name,
					}
	
					game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuySwordArgs20))
					wait(0)
				end
	
				local ihateblacks = game:GetService("ReplicatedStorage").Weapons["Ancient Inferno Island"]["DW Ancient Assassin Blade"]
				local ArgsForBlackPeople = {
					[1] = "buySword",
					[2] = ihateblacks
				}
	
				game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(ArgsForBlackPeople))
				
			end
		else
			AutobuySword = false
			Mainframe.AutobuySwordToggle.BackgroundColor3 = Color3.new(0.129412, 0.129412, 0.129412)
		end
	end)
end
coroutine.wrap(XSCA_fake_script)()
local function CCVOLWW_fake_script() -- TextLabel_2.LocalScript 
	local script = Instance.new('LocalScript', TextLabel_2)

	local plr = game.Players.LocalPlayer
	
	
	script.Parent.Text = "MGU Arceus X | ".. plr.Name.. " | Release 1.0"
end
coroutine.wrap(CCVOLWW_fake_script)()
local function OTQEJON_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local Menu = game.Players.LocalPlayer.PlayerGui.MguLite.MainFrame
	script.Parent.MouseButton1Up:Connect(function()
		script.Parent.Parent.Visible = false
		script.Parent.Parent.Parent.Closed.Visible = true
	end)
end
coroutine.wrap(OTQEJON_fake_script)()
local function JZFA_fake_script() -- Closed.LocalScript 
	local script = Instance.new('LocalScript', Closed)

	local Menu = game.Players.LocalPlayer.PlayerGui.MguLite.MainFrame
	script.Parent.MouseButton1Up:Connect(function()
		Menu.Visible = true
		script.Parent.Visible = false
	end)
end
coroutine.wrap(JZFA_fake_script)()
