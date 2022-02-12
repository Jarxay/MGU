--MGU Made by jarxay

local DiscordInvite = "https://discord.gg/7XFnezqGc3"
local Version = 2.1
Library = loadstring(game:HttpGet('https://lindseyhost.com/UI/LinoriaLib.lua'))();
Library:Notify('e')
local plr = game:GetService("Players").LocalPlayer
local mouse = plr:GetMouse()
local Fonts = {};
for Font, _ in next, Drawing.Fonts do
	table.insert(Fonts, Font);
end;


local JumpStuffArgs = {
    [1] = "multiJump",
    [2] = "rightLeg"
}


local function PrintIslands()
    for i,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
        print(v.Name)
        wait()
    end
end

local GroundSlamargs = {
    [1] = "groundSlam"
}


local args = {
    [1] = "swingKatana"
}

local function TeleportAll()
    print("Function: TeleportAll - Success")
    for i,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
        plr.Character.HumanoidRootPart.CFrame = v.CFrame
        wait()
    end
end;

local function SpawnTPFunc()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(26,4,34)
end;


local function BlazingVortexFunc()
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(143,91249,112)
end;

local function ManualSell()
    local ManCurrentPos = plr.Character.HumanoidRootPart.CFrame
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(85,91245,116)
    wait(0.2)
    plr.Character.HumanoidRootPart.CFrame = ManCurrentPos
end;


local function DebugFunc()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Jarxay/SimpleSpy/main/main.lua"))()
end;

local function PrintPosFunc()
    print(plr.Character.HumanoidRootPart.CFrame)
end;

local function KickPLR()
    plr:Kick("Why'd you even click this lol")
end;
local TestWindow = Library:CreateWindow("MGU  "..DiscordInvite);
Library:SetWatermark('MGU | '..Version ' | '.. plr.Name.. ' | Release');
Library:Notify('Loading UI...');

local MainTab = TestWindow:AddTab('Main');
local PlayerTab = TestWindow:AddTab('Player');
local TeleportTab = TestWindow:AddTab('Teleports');
local MainTabBox1 = MainTab:AddLeftTabbox('Auto');
local MainTabBox2 = MainTab:AddRightTabbox('Unlock all islands');
local SellTabber = MainTabBox1:AddTab('Auto');
local UnlockAll = MainTabBox2:AddTab('Unlock all islands');
local MiscTab = TestWindow:AddTab('Misc');
local SettingsTab = TestWindow:AddTab('Settings');

SellTabber:AddToggle('Autoswing', { Text = 'Autoswing' });
SellTabber:AddToggle('Autosell', { Text = 'Autosell' });
SellTabber:AddToggle('AutoBuySword', {Text = 'Autobuy sword'});
SellTabber:AddToggle('AutoBuyBelt', {Text = 'Autobuy belts'})
SellTabber:AddToggle('AutoRebirth', {Text = 'Auto Rebirth'})
UnlockAll:AddButton('Unlock all islands', TeleportAll)
local TeleportBox1 = TeleportTab:AddLeftTabbox('Spawn');
local TeleportText2 = TeleportBox1:AddTab('Spawn');
TeleportText2:AddButton('Spawn', SpawnTPFunc);

local FunBox1 = MiscTab:AddLeftTabbox('Memes');
local FunText1 = FunBox1:AddTab('Memes')
FunText1:AddToggle('GroundSpamToggle', { Text = 'GroundSlam Loop' }); 

FunText1:AddToggle('ParticleSpamToggle', { Text = 'Particles spam loop'})


local FunBox2 = MiscTab:AddRightTabbox('Debug');
local FunText2 = FunBox2:AddTab('Debug')

UnlockAll:AddButton('Manual sell', ManualSell)
FunText2:AddButton('RemoteEvents',DebugFunc);
FunText2:AddButton('PrintPos', PrintPosFunc);
FunText2:AddButton('KickPLR', KickPLR)

local TeleportBox2 = TeleportTab:AddRightTabbox('Blazing Vortex Island');
local TeleportText2 = TeleportBox2:AddTab('Blazing Vortex Island');
TeleportText2:AddButton('Blazing Vortex Island',BlazingVortexFunc);

local PlayerTabBox1 = PlayerTab:AddLeftTabbox('Speed');
local PlayerTabBox2 = PlayerTab:AddRightTabbox('High Jump');
local PlayerTabBox3 = PlayerTab:AddRightTabbox('No Gravity');

local Speed = PlayerTabBox1:AddTab('Speed');
Speed:AddToggle('Speed', { Text = "Speed"})

local HighJump = PlayerTabBox2:AddTab('High Jump');
HighJump:AddToggle('HighJump', { Text = "HighJump"})

local NoGravity = PlayerTabBox3:AddTab('No Gravity');
NoGravity:AddToggle('NoGravity', { Text = "NoGravity"})



local function UpdateTheme()
    Library.BackgroundColor = Options.BackgroundColor.Value;
    Library.MainColor = Options.MainColor.Value;
    Library.AccentColor = Options.AccentColor.Value;
    Library.AccentColorDark = Library:GetDarkerColor(Library.AccentColor);
    Library.OutlineColor = Options.OutlineColor.Value;
    Library.FontColor = Options.FontColor.Value;

    Library:UpdateColorsUsingRegistry();
end;

local function SetDefault()
    Options.FontColor:SetValueRGB(Color3.fromRGB(255, 255, 255));
    Options.MainColor:SetValueRGB(Color3.fromRGB(28, 28, 28));
    Options.BackgroundColor:SetValueRGB(Color3.fromRGB(20, 20, 20));
    Options.AccentColor:SetValueRGB(Color3.fromRGB(0, 85, 255));
    Options.OutlineColor:SetValueRGB(Color3.fromRGB(50, 50, 50));
    Toggles.Rainbow:SetValue(false);

    UpdateTheme();
end;

local Theme = SettingsTab:AddLeftGroupbox('Theme');
Theme:AddLabel('Background Color'):AddColorPicker('BackgroundColor', { Default = Library.BackgroundColor });
Theme:AddLabel('Main Color'):AddColorPicker('MainColor', { Default = Library.MainColor });
Theme:AddLabel('Accent Color'):AddColorPicker('AccentColor', { Default = Library.AccentColor });
Theme:AddToggle('Rainbow', { Text = 'Rainbow Accent Color' });
Theme:AddLabel('Outline Color'):AddColorPicker('OutlineColor', { Default = Library.OutlineColor });
Theme:AddLabel('Font Color'):AddColorPicker('FontColor', { Default = Library.FontColor });
Theme:AddButton('Default Theme', SetDefault);
Theme:AddToggle('Watermark', { Text = 'Show Watermark', Default = true }):OnChanged(function()
    Library:SetWatermarkVisibility(Toggles.Watermark.Value);
end);

local GlobalSettings = SettingsTab:AddRightGroupbox('Global Settings');
GlobalSettings:AddToggle('DuelTimer', { Text = 'Duel Timer' });

task.spawn(function()
    while game:GetService('RunService').RenderStepped:Wait() do
        if Toggles.Rainbow.Value then
            local Registry = TestWindow.Holder.Visible and Library.Registry or Library.HudRegistry;

            for Idx, Object in next, Registry do
                for Property, ColorIdx in next, Object.Properties do
                    if ColorIdx == 'AccentColor' or ColorIdx == 'AccentColorDark' then
                        local Instance = Object.Instance;
                        local yPos = Instance.AbsolutePosition.Y;

                        local Mapped = Library:MapValue(yPos, 0, 1080, 0, 0.5) * 1.5;
                        local Color = Color3.fromHSV((Library.CurrentRainbowHue - Mapped) % 1, 0.8, 1);

                        if ColorIdx == 'AccentColorDark' then
                            Color = Library:GetDarkerColor(Color);
                        end;

                        Instance[Property] = Color;
                    end;
                end;
            end;
        end;
    end;
end);

Toggles.Rainbow:OnChanged(function()
    if not Toggles.Rainbow.Value then
        UpdateTheme();
    end;
end);

Options.BackgroundColor:OnChanged(UpdateTheme);
Options.MainColor:OnChanged(UpdateTheme);
Options.AccentColor:OnChanged(UpdateTheme);
Options.OutlineColor:OnChanged(UpdateTheme);
Options.FontColor:OnChanged(UpdateTheme);
Library:Notify('Loaded UI!');
-- Script generated by SimpleSpy - credits to exx#9394

Toggles.Autoswing:OnChanged(function()
    if Toggles.Autoswing.Value then
        while Toggles.Autoswing.Value do
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait()
        end
    end
end)



Toggles.Autosell:OnChanged(function()
   if Toggles.Autosell.Value then
       while Toggles.Autosell.Value do
          plr.Character.HumanoidRootPart.CFrame = CFrame.new(83,91246,119)
          wait(0.25)
          plr.Character.HumanoidRootPart.CFrame = CFrame.new(146,91245,72)
          wait()
       end
   end
end)



Toggles.Speed:OnChanged(function()
   if Toggles.Speed.Value then
       print("MGU : SUPERSPEED")
       plr.Character.Humanoid.WalkSpeed = 145
       
       else
           plr.Character.Humanoid.WalkSpeed = 16
    end   
end)


Toggles.HighJump:OnChanged(function()
    if Toggles.HighJump.Value then
        print("MGU : HIGHJUMP")
        plr.Character.Humanoid.JumpPower = 350
        
    else
        plr.Character.Humanoid.JumpPower = 50 
    end
end)

Toggles.NoGravity:OnChanged(function()
    if Toggles.NoGravity.Value then
        game.Workspace.Gravity = 0 
        else
            game.Workspace.Gravity = 196
    end
end)

Toggles.GroundSpamToggle:OnChanged(function()
    while Toggles.GroundSpamToggle.Value do
        wait()
       game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(GroundSlamargs)) 
    end
end)

local partcount = 0
Toggles.ParticleSpamToggle:OnChanged(function()
    while Toggles.ParticleSpamToggle.Value do
        wait()
        partcount = partcount + 1
        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(JumpStuffArgs))
        print(partcount)
        
        if partcount >= 75 then
            wait(3)
            partcount = 0
        end
    end
end)

Toggles.DuelTimer:OnChanged(function()
    while Toggles.DuelTimer.Value do
        while game:GetService("ReplicatedStorage").duelTimer.Value > 1 do
            wait(1.01)
            Library:Notify('Duel Timer: '.. game:GetService("ReplicatedStorage").duelTimer.Value)
        end
    end
end)



Toggles.AutoBuySword:OnChanged(function()
    while Toggles.AutoBuySword.Value == true do
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
end)

Toggles.AutoBuyBelt:OnChanged(function()
    while Toggles.AutoBuyBelt.Value == true do
        wait()
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts.Ground:GetChildren()) do
            local BuyBeltArgs1 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs1))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Astral Island"]:GetChildren()) do
            local BuyBeltArgs2 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs2))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Space Island"]:GetChildren()) do
            local BuyBeltArgs3 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs3))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Tundra Island"]:GetChildren()) do
            local BuyBeltArgs4 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs4))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Eternal Island"]:GetChildren()) do
            local BuyBeltArgs5 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs5))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Sandstorm"]:GetChildren()) do
            local BuyBeltArgs6 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs6))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Thunderstorm"]:GetChildren()) do
            local BuyBeltArgs7 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs7))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Ancient Inferno Island"]:GetChildren()) do
            local BuyBeltArgs8 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs8))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Midnight Shadow Island"]:GetChildren()) do
            local BuyBeltArgs9 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs9))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Mythical Souls Island"]:GetChildren()) do
            local BuyBeltArgs10 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs10))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Winter Wonder Island"]:GetChildren()) do
            local BuyBeltArgs11 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs11))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Golden Master Island"]:GetChildren()) do
            local BuyBeltArgs12 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs12))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Dragon Legend Island"]:GetChildren()) do
            local BuyBeltArgs13 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs13))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Cybernetic Legends Island"]:GetChildren()) do
            local BuyBeltArgs14 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs14))
        end

        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Skystorm Ultraus Island"]:GetChildren()) do
            local BuyBeltArgs15 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs15))
        end

        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Soul Fusion Island"]:GetChildren()) do
            local BuyBeltArgs16 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs16))
        end
        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Chaos Legends Island"]:GetChildren()) do
            local BuyBeltArgs15 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs15))
        end
        wait(0.1)

        wait(0.1)
        for i,v in pairs(game:GetService("ReplicatedStorage").Belts["Dark Elements Island"]:GetChildren()) do
            local BuyBeltArgs17 = {
            [1] = "buyBelt",
            [2] = v.Name
            }
        
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(BuyBeltArgs17))
        end


    end
end)

Toggles.AutoRebirth:OnChanged(function()
    while Toggles.AutoRebirth.Value == true do
        wait(0.01)
        for i,v in pairs(game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()) do
            local args = {
                [1] = "buyRank",
                [2] = v.Name
            }
            
            game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
            wait(0.001)
        end
    end
end)
UpdateTheme()
Library:Notify('Made by Jarxay#0001 | '.. DiscordInvite);




