
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("MGU - V01", "BloodTheme")

local Main = Window:NewTab("Main")
local Main = Main:NewSection("Main")

local TeleportTab = Window:NewTab("Teleport")


local TeleportSection = TeleportTab:NewSection("Teleport")
--Settings>
Autoswing = false
Autosell = false
--Setttings<

local plr = game.Players.LocalPlayer

Main:NewButton("Autoswing", "AutoSell", function()
    if Autoswing == false then
        Autoswing = true
        while Autoswing == true do

            local args = {
                [1] = "swingKatana"
            }
            
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait()
        end
        else if Autoswing == true then
            Autoswing = false
        end
    end
end)


Main:NewButton("AutoSell", "AutoSell", function()
    if Autosell == false then
        Autosell = true
        while Autosell == true do
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(90.4008789, 91245, 119)
            wait(0.3)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(146,91245,88)
            wait(0.5)
        end
        else if Autosell == true then
            Autosell = false
        end
    end
end)

Main:NewButton("Unlock all islands", "Unlock all islands", function()
    for i,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
        plr.Character.HumanoidRootPart.CFrame = v.CFrame
        wait()
        print("Success")
    end
end)

TeleportSection:NewButton("Spawn", "Unlock all islands", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(0,10,-0)
end)

TeleportSection:NewButton("Astral Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(208,2013,252)
end)

TeleportSection:NewButton("Mystical Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(163,4047,63)
end)

TeleportSection:NewButton("Space Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(112,5656,90)
end)

TeleportSection:NewButton("Tundra Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(112,9284,90)
end)

TeleportSection:NewButton("Eternal Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(112,13679,90)
end)

TeleportSection:NewButton("Sandstorm Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(112,17687,90)
end)

TeleportSection:NewButton("Thunderstorm Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(112,24076,90)
end)

TeleportSection:NewButton("Acient Inferno Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021, 28364.7, 88.9619)
end)


TeleportSection:NewButton("Midnight shadow Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 33315.3867, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)


TeleportSection:NewButton("Mythical souls Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 39425.9766, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)


TeleportSection:NewButton("Golden Master Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 52716.168, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)


TeleportSection:NewButton("Cybernetic Legends Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 59703.0859, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)

TeleportSection:NewButton("Skystorm Ultraus Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 70379.5703, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)

TeleportSection:NewButton("Chaos Legends Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 74551.2656, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)

TeleportSection:NewButton("Soul Fusion Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 79855.3984, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)

TeleportSection:NewButton("Dark Elements Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 83307.3984, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)

TeleportSection:NewButton("Inner peace Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 87159.4844, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)

TeleportSection:NewButton("Blazing Vortex Island", "", function()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(144.021057, 91354.4844, 88.9619141, 0.342042685, -0, -0.939684391, 0, 1, -0, 0.939684391, 0, 0.342042685)
end)


