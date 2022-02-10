Library = loadstring(game:HttpGet('https://lindseyhost.com/UI/LinoriaLib.lua'))();
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
    plr.Character.HumanoidRootPart.CFrame = CFrame.new(85,91245,116)
end;

local function ManualSwing()
    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
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
local TestWindow = Library:CreateWindow("MGU : gg/SyRVxBdNYa");
Library:SetWatermark('MGU : '.. plr.Name.. ' : Release');
Library:Notify('Loading UI...');

local MainTab = TestWindow:AddTab('Main');
local PlayerTab = TestWindow:AddTab('Player');
local TeleportTab = TestWindow:AddTab('Teleports');
local MainTabBox1 = MainTab:AddLeftTabbox('Swing');
local MainTabBox2 = MainTab:AddRightTabbox('Sell');
local MainTabBox3 = MainTab:AddRightTabbox('Unlock all islands');
local Swing = MainTabBox1:AddTab('Swing');
local SellTabber = MainTabBox2:AddTab('Sell');
local UnlockAll = MainTabBox3:AddTab('Unlock all islands');
local MiscTab = TestWindow:AddTab('Misc');
local SettingsTab = TestWindow:AddTab('Settings');
Swing:AddButton('Manual Swing', ManualSwing)
Swing:AddToggle('Autoswing', { Text = 'Autoswing' });
SellTabber:AddButton('Manual Sell',ManualSell)
SellTabber:AddToggle('Autosell', { Text = 'Autosell' });
UnlockAll:AddButton('Unlock all islands', TeleportAll);


local TeleportBox1 = TeleportTab:AddLeftTabbox('Spawn');
local TeleportText2 = TeleportBox1:AddTab('Spawn');
TeleportText2:AddButton('Spawn', SpawnTPFunc);

local FunBox1 = MiscTab:AddLeftTabbox('Memes');
local FunText1 = FunBox1:AddTab('Memes')
FunText1:AddToggle('GroundSpamToggle', { Text = 'GroundSlam Loop' }); 

FunText1:AddToggle('ParticleSpamToggle', { Text = 'Particles spam loop'})


local FunBox2 = MiscTab:AddRightTabbox('Debug');
local FunText2 = FunBox2:AddTab('Debug')

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
UpdateTheme()
Library:Notify('Jarxay#0001 : youtube.com/c/jarxay');
