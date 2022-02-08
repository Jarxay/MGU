local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("MGU", "BloodTheme")

local Main = Window:NewTab("Main")


--Settings>
Autoswing = false
Autosell = false
--Setttings<

local plr = game.Players.LocalPlayer
local Main = Main:NewSection("Main")

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
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(72,7,-37)
            wait(0.1)
            plr.Character.HumanoidRootPart.CFrame = CFrame.new(0,10,-0)
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
