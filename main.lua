local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()


_G.colour = Color3.fromRGB(255, 0, 0)

local Window = OrionLib:MakeWindow({Name = "Miner's Haven", IntroText = 'Success!', HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

-- Notos

OrionLib:MakeNotification({
	Name = "Support",
	Content = "If you need help join the discord! .gg/",
	Image = "rbxassetid://4483345998",
	Time = 60
})

-- Tabs

local farmtab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local playertab = Window:MakeTab({
	Name = "Player",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local othertab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


-- yea yea

function CountBricks()
    local c = 0
      for i,v in pairs(workspace:GetChildren()) do
        for x in string.gmatch(v.Name, "Crate") do
          wait(0.2)
              c = c + 1
          end
        end
      return c
      end

_G.tpcratez = false
  
function spawn()
  while _G.tpcratez == true do
    NumberOfBoxes.Text = CountBricks()
      if _G.tpcratez == true then
        local children = game.Workspace:GetChildren()
          for i =1, #children do
            wait(0.1)
              if children[i] ~= nil then
                for x in string.gmatch(children[i].Name, "Crate") do
             if children[i].ClassName == "Part" then
               children[i].Anchored = true
                 children[i].CanCollide = false
                 children[i].CFrame = CFrame.new(game.Players.LocalPlayer.Character.Head.Position)
    wait(0.3)
      end
end
end
end
end
end
end

-- end of yea yea

-- Values

_G.tpcratez = true
_G.autoreb = false
_G.auto = false
_G.equiprate1 = 1
_G.equiprate2 = 1
_G.equiprate3 = 1
_G.autoopen = false
_G.autodrop = false

-- Functions

function autodrop()
	while _G.autodrop == true do
		game:GetService("ReplicatedStorage").RemoteDrop:FireServer()
		wait (.000000000000000000001)
	 end
	end

function autoopen()
		while _G.autoopen == true do
			local args = {
				[1] = "Regular",
				[2] = "Unreal"
			}
			game:GetService("ReplicatedStorage").MysteryBox:InvokeServer(unpack(args))
			local args = {
				[1] = "Unreal"
			}
			game:GetService("ReplicatedStorage").MysteryBox:InvokeServer(unpack(args))
			wait (.000000000000000000001)
			local args = {
				[1] = "Inferno"
			}
			game:GetService("ReplicatedStorage").MysteryBox:InvokeServer(unpack(args))
			wait (.000000000000000000001)
		 end
		end

function auto()
    while _G.auto == true do
      wait (2)
      local args = {
        [1] = "Load",
        [2] = "Layout1"
      }
      game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
      wait (_G.equiprate1)
     end
    end

function auto2()
    while _G.auto2 == true do
      wait (2)
      local args = {
        [1] = "Load",
        [2] = "Layout2"
      }
      game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
      wait (_G.equiprate2)
     end
    end


function auto3()
    while _G.auto3 == true do
      wait (2)
      local args = {
        [1] = "Load",
        [2] = "Layout3"
      }
      game:GetService("ReplicatedStorage").Layouts:InvokeServer(unpack(args))
      wait (_G.equiprate3)
     end
    end


function autoreb()
    while _G.autoreb == true do
      local args = {
        [1] = 26
      }
      game:GetService("ReplicatedStorage").Rebirth:InvokeServer(unpack(args))

      wait (.1)
     end
    end

-- Toggles

farmtab:AddToggle({
	Name = "Auto Layout 1",
	Default = false,
	Callback = function(Value)
	    _G.auto = Value
		auto()
	end    
})

farmtab:AddToggle({
	Name = "Auto Layout 2",
	Default = false,
	Callback = function(Value)
	    _G.auto2 = Value
		auto2()
	end    
})

farmtab:AddToggle({
	Name = "Auto Layout 3",
	Default = false,
	Callback = function(Value)
	    _G.auto3 = Value
		auto3()
	end    
})

farmtab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
	    _G.autoreb = Value
		autoreb()
	end    
})

farmtab:AddToggle({
	Name = "Auto Drop Remote Mines",
	Default = false,
	Callback = function(Value)
	    _G.autodrop = Value
		autodrop()
	end    
})

farmtab:AddToggle({
	Name = "Auto Farm Boxes ( Not Working )",
	Default = false,
	Callback = function(Value)
	    _G.tpcratez = Value
		spawn()
	end    
})

farmtab:AddToggle({
	Name = "Auto Open Boxes",
	Default = false,
	Callback = function(Value)
	    _G.autoopen = Value
		autoopen()
	end    
})

othertab:AddColorpicker({
	Name = "Colorpicker",
	Default = Color3.fromRGB(255, 0, 0),
	Callback = function(Value)
		_G.colour = Value
	end	  
})

-- dropdowns 

-- Sliders 

farmtab:AddSlider({
	Name = "Layout 1 Timer",
	Min = 1,
	Max = 500,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Seconds",
	Callback = function(Value)
		_G.equiprate1 = Value
	end    
})

playertab:AddSlider({
	Name = "Speed",
	Min = 16,
	Max = 500,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walk Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end    
})

farmtab:AddSlider({
	Name = "Layout 2 Timer",
	Min = 1,
	Max = 500,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Seconds",
	Callback = function(Value)
		_G.equiprate2 = Value
	end    
})

farmtab:AddSlider({
	Name = "Layout 3 Timer",
	Min = 1,
	Max = 500,
	Default = 1,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Seconds",
	Callback = function(Value)
		_G.equiprate3 = Value
	end    
})

playertab:AddSlider({
	Name = "Jump Power",
	Min = 30,
	Max = 500,
	Default = 30,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Jump Power",
	Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end    
})



-- Cleanup
OrionLib:Init()


-- simplespy loadstring(game:HttpGet("https://github.com/exxtremestuffs/SimpleSpySource/raw/master/SimpleSpy.lua"))()
