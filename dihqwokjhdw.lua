local USI = game:GetService("UserInputService")

workspace.Gravity = 196.2





local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Cutsences inc", HidePremium = false, SaveConfig = true, ConfigFolder = "eatFat"})




local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "General"
})

Tab:AddTextbox({
	Name = "Key",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		
        
        if Value == "dx$ZNVB@855Rme6h" then
           

		

			

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Cutsences inc", HidePremium = false, SaveConfig = true, ConfigFolder = "eatFat"})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "General"
})

Tab:AddButton({
	Name = "remove ac",
	Callback = function()
        function breakFunction(func)
			for i,v in pairs(getconstants(func)) do
				pcall(function()
					setconstant(func, i, 'game.Workspace')
				end)
			end
			for i,v in pairs(getupvalues(func)) do
				pcall(function()
					setconstant(func, i, game.Workspace)
				end)
			end
		 end
		 
		 
		 for i,v in pairs(getgc()) do
			if type(v) == 'function' and islclosure(v) then
				if string.match(getinfo(v).source, 'BubbleChat') then
					breakFunction(v)
				end
			end
		
			
		end
  	end    
})


Tab:AddTextbox({
	Name = "Jump Power",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	end	  
})

Tab:AddButton({
	Name = "jump",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
  	end    
})







Tab:AddButton({
	Name = "Getcha ladder",
	Callback = function()
        
    
        game.Players.LocalPlayer.Backpack.Ladder.Parent = game.Players.LocalPlayer.Character
        CF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").playerPlaced[game.Players.LocalPlayer.Name.."_ladder"]:FindFirstChildOfClass("Part").CFrame
        
        wait(.2)
        
        workspace.live[game.Players.LocalPlayer.Name].Ladder.Event:FireServer("Destroy", game:GetService("Workspace").playerPlaced[game.Players.LocalPlayer.Name.."_ladder"])
        
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CF
        game.Players.LocalPlayer.Character.Humanoid:ChangeState(7)
       
  	end    
})



Tab:AddToggle({
	Name = "AutoFarm Wins (reset to stop)",
	Default = false,
	Callback = function(Value)
		
        local CFrameEnd = CFrame.new(-893.2362060546875, 3572.6328125, -988.5921020507812) -- Place your coords in here
local Time = 0 -- Time in seconds
local tween =  game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(Time), {CFrame = CFrameEnd})
while Value == true do

tween:Play()
tween.Completed:Wait()
fireproximityprompt(game:GetService("Workspace").questItems.EndGame.ProximityPrompt)


end
	end 
})

Tab:AddButton({
	Name = "Remove display names",
	Callback = function()
        local Players = game:FindService("Players")

require(game:GetService("Chat"):WaitForChild("ClientChatModules").ChatSettings).PlayerDisplayNamesEnabled = false

local function rename(character,name)
    repeat task.wait() until character:FindFirstChildWhichIsA("Humanoid")
    character:FindFirstChildWhichIsA("Humanoid").DisplayName = name
end

for i,v in next, Players:GetPlayers() do
    if v.Character then
        v.DisplayName = v.Name
        rename(v.Character,v.Name)
    end
    v.CharacterAdded:Connect(function(char)
        rename(char,v.Name)
    end)
end

Players.PlayerAdded:Connect(function(plr)
    plr.DisplayName = plr.Name
    plr.CharacterAdded:Connect(function(char)
        rename(char,plr.Name)
    end)
end)
  	end    
})




Tab:AddButton({
	Name = "remove fog",
	Callback = function()
        game.Lighting.Fog:Destroy()
  	end    
})



Tab:AddSlider({
	Name = "Gravity",
	Min = 0,
	Max = 196.2,
	Default = 196.2,
	Color = Color3.fromRGB(231, 33, 33),
	Increment = 1,
	ValueName = "Gravity",
	Callback = function(Value)
		
        workspace.Gravity = Value
        
	end    
})



Tab:AddSlider({
	Name = "Walkspeed",
	Min = 0,
	Max = 400,
	Default = 16,
	Color = Color3.fromRGB(231, 33, 33),
	Increment = 1,
	ValueName = "speed",
	Callback = function(Value)
		
        local walkSpeed = Value
 
 
 
local gmt = getrawmetatable(game)
 
setreadonly(gmt, false)
 
local oldindex = gmt.__index
 
gmt.__index = newcclosure(function(self,b)
 
if b == "WalkSpeed" then
 
return 16
 
end
 
return oldindex(self,b)
 
end)
 
 
 
game:GetService("Players").LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
        
	end    
})

Tab:AddToggle({
	Name = "Infinite Jump",
	Default = false,
	Callback = function(Value)
		if Value == true then
            infiniteJump = true
            USI.JumpRequest:Connect(function()
		if infiniteJump == true then
			game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping")
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
		end
	end)
        elseif Value == false then
            infiniteJump = false
        
        end
	end 
})






local Tab = Window:MakeTab({
	Name = "Stats",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "General"
})


local sesawdsawds = game:GetService("Players").LocalPlayer.Data.wins
Tab:AddLabel("You have "..sesawdsawds.Value.. " wins")



Tab:AddTextbox({
	Name = "See Player wins",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		
		
	
		local w = game:GetService("Players")[Value].Data.wins
		OrionLib:MakeNotification({
	Name = "Stat Checker 3000",
	Content = Value.." Has "..w.Value.." Wins",
	Image = "rbxassetid://4483345998",
	Time = 9
})


	end

})  


local Tab = Window:MakeTab({
	Name = "GUI",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "General"
})

Tab:AddButton({
	Name = "ladder shop",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Menu.Shop.Visible = true
  	end    
})


Tab:AddButton({
	Name = "reset progress gui",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Menu.ResetProgress.Visible = true
  	end    
})

Tab:AddButton({
	Name = "current lives",
	Callback = function()
        game:GetService("Players").LocalPlayer.PlayerGui.Menu.CurrentLives.Visible = true
  	end    
})


Tab:AddTextbox({
	Name = "Change click sound",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game:GetService("Players").LocalPlayer.PlayerGui.Menu.click.SoundId = Value
	end	  
})



local Tab = Window:MakeTab({
	Name = "Delete",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "General"
})

Tab:AddButton({
	Name = "kill yourself",
	Callback = function()
        game.Players.LocalPlayer.Character.Head:Destroy()
  	end    
})


local Tab = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "General"
})

Tab:AddButton({
	Name = "Gravity gun",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Cutsences/gravitygun/main/New%20Text%20Document.txt"))()


  	end    
})





Tab:AddButton({
	Name = "infinite yield",
	Callback = function()
		
		loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()

  	end    
})





Tab:AddButton({
	Name = "CMD X",
	Callback = function()
		
		loadstring(game:HttpGet('https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source', true))()

  	end    
})







OrionLib:Init()
            
          
            
          
            
        else
            OrionLib:MakeNotification({
                Name = "ALERT!",
                Content = "Invaild key",
                Image = "rbxassetid://4483345998",
                Time = 10
            })
        end
    end  
})

Tab:AddButton({
	Name = "Copy and join discord server for key",
	Callback = function()
        setclipboard("https://discord.gg/8bJygbpUWk")
    
     
       
  	end    
})



OrionLib:Init()
