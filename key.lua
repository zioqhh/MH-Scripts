local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Get They Key At .gg/", HidePremium = false,IntroText = "Loading...",IntroIcon = "", SaveConfig = false, ConfigFolder = "OrionTest"})

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

local Tab = Window:MakeTab({
	Name = "Get Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

_G.key = 'iusfyef87ewasdhua7'
_G.keycheck = ""
function key()
  if _G.keycheck == _G.key then
     OrionLib:Destroy()
     loadstring(game:HttpGet(('https://raw.githubusercontent.com/jeeuejje/MH-Scripts/main/main.lua')))()
  else
    OrionLib:MakeNotification({
        Name = "Wrong Key!",
        Content = "Get The Right Key At .gg/",
        Image = "rbxassetid://4483345998",
        Time = 5
    })
        
  end
  end

Tab:AddTextbox({
	Name = "Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
    _G.keycheck = Value
		key()
	end	  
})
OrionLib:Init()
