local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


local Window = OrionLib:MakeWindow({Name = "MH Scripts", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

afk2 = false

OrionLib:MakeNotification({
	Name = "MH Scripts",
	Content = "Loaded Script v1.0.0-beta",
	Image = "rbxassetid://4483345998",
	Time = 3
})

OrionLib:MakeNotification({
	Name = "AFK",
	Content = "Anti AFK Has Been Enabled!",
	Image = "rbxassetid://4483345998",
	Time = 3
})

local Tab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local Section = Tab:AddSection({
	Name = "Movement"
})


--[[
Name = <string> - The name of the section.
]]

Tab:AddSlider({
    Name = "Walkspeed",
    Min = 16,
    Max = 500,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "WS",
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
   })

Tab:AddSlider({
    Name = "Jump",
    Min = 30,
    Max = 500,
    Default = 30,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "JS",
    Callback = function(Value)
     game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end    
   })
   
local stab = Window:MakeTab({
	Name = "AutoFarm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local ssection = stab:AddSection({
	Name = "Farm"
})
t = 'Off'
function afk(t)
  if t == 'On' then
    game.MouseButton1Click:Connect(function()
    print('clicked')
  else
end)

ssection:AddToggle({
	Name = "On/Off",
	Default = 'Off',
	Callback = function(t)
		print()
	end    
})

