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
		
        
        if Value == "tEI5nXy%d&a6qAm8q" then
           


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


local Players = game:GetService("Players")
local plr = Players.LocalPlayer
local char = plr.Character
local humr = char:WaitForChild("HumanoidRootPart")
local hum = char:WaitForChild("Humanoid")
local BlockedRemotes = {
   "AC",
}

local Events = {
   Fire = true,
   Invoke = true,
   FireServer = true,
   InvokeServer = true,
   InvokeOnClient = true,
   OnClientEvent = true,
}
local function GET_NAME(P)
   if tostring(P):match("BubbleChat") then
       return true
   end
end
   task.wait(3)
   local success,error = pcall(function()
   for i,v in pairs(getgc()) do
       if getfenv(v).script and GET_NAME(getfenv(v).script) then
           if typeof(v) == "function" and BlockedRemotes and "BubbleChat" then
               for x,c in pairs(debug.getupvalues(v)) do
                   debug.setupvalue(v,x,nil)
               end
               for x,c in pairs(debug.getconstants(v)) do
                   debug.setconstant(v,x,game.Workspace)
               end
               for x,c in pairs(debug.getconstants(v)) do
                   debug.setupvalue(v,1,game.Workspace)
               end
           end
       end
   end
end)

local gameMeta = getrawmetatable(game)
local psuedoEnv = {
   ["__index"] = gameMeta.__index,
   ["__namecall"] = gameMeta.__namecall;
}
setreadonly(gameMeta, false)
gameMeta.__index, gameMeta.__namecall = newcclosure(function(self, index, ...)
   if Events[index] then
       for i,v in pairs(BlockedRemotes) do
           if v == self.Name and not checkcaller() and getcallingscripts() then
           return nil and game.workspace:waitForChild("never gonna exist")
       end
       end
   end
   return psuedoEnv.__index(self, index, ...)
end)
setreadonly(gameMeta, true)
local ToBypass = {
   getconnections(hum.Changed),
   getconnections(hum:GetPropertyChangedSignal("WalkSpeed")),
   getconnections(hum:GetPropertyChangedSignal("JumpPower")),
   getconnections(char.DescendantAdded),
   getconnections(humr.DescendantAdded),
   getconnections(humr.ChildAdded),
}
local function BypassConnections()
   for i,v in pairs(ToBypass) do
       for i,v in pairs(v) do
           v:Disable()
       end
   end
end
plr.CharacterAdded:Connect(function(newChar)
   char = newChar
   humr = newChar:WaitForChild("HumanoidRootPart")
   hum = newChar:WaitForChild("Humanoid")
   BypassConnections()
end)

BypassConnections()


Tab:AddTextbox({
	Name = "Jump Power",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
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

Tab:AddButton({
	Name = "jump",
	Callback = function()
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
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

Tab:AddTextbox({
	Name = "Fling, kick, or crash player (by Sw1ndler)",
	Default = "Player name",
	TextDisappear = true,
	Callback = function(Value)
        local Pan = "Create"

        game:GetService("Players").LocalPlayer.Backpack.Ladder.Event:FireServer(Pan)
        wait(1)
        local target = game.Players[Value] -- replace "Username Here" with the person you want to kick


local spin = Instance.new("BodyAngularVelocity")
spin.AngularVelocity = Vector3.new(99999,99999,99999)
spin.MaxTorque = Vector3.new(math.huge,math.huge,0)
spin.P = math.huge

local plr = game.Players.LocalPlayer

for i,v in pairs(game:GetService("Workspace").playerPlaced[plr.Name .. "_ladder"]:GetChildren()) do
   if isnetworkowner(v) then
       local x = spin:Clone()
       x.Parent = v

       task.spawn(function()
           while isnetworkowner(v) and task.wait() do
               v.CFrame = target.Character.HumanoidRootPart.CFrame
           end
       end)
   end
end
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



Tab:AddSlider({
	Name = "Walkspeed",
	Min = 1,
	Max = 150,
	Default = 16,
	Color = Color3.fromRGB(223, 25, 25),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
       
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
	Name = "Loop Fling (made by: digitality)",
	Callback = function()
		
		loadstring(game:HttpGet('https://github.com/DigitalityScripts/roblox-scripts/raw/main/loop%20fling%20all'))()

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