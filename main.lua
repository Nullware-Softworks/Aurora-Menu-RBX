local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local Forums = Library.new("Aurora Client")
local AuroraSettings = {}
AuroraSettings.RGB = false

--RGB Watcher
coroutine.wrap(function()
while true do
           
        if AuroraSettings.RGB then
            local SpoofedColor = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
            game.Players.LocalPlayer.Character.Head.Head1.Color = SpoofedColor
            game.Players.LocalPlayer.Character.Torso.Torso.Color = SpoofedColor
            game.Players.LocalPlayer.Character["Right Arm"].Arm1.Color = SpoofedColor
            game.Players.LocalPlayer.Character["Left Arm"].Arm2.Color = SpoofedColor
        end
        wait(0.1)  
    end
end)()


local exclusive = Forums:NewSection("Exclusive Mods")
exclusive:NewButton("Get mod stick (Stand still!)", function() 
    local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Mod Vents!"]["Moderator Stick"].EquipmentSpawner.CFrame
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastpos
end)
exclusive:NewToggle("RGB Monke", function(state)
    AuroraSettings.RGB = state
end)
exclusive:NewButton("Autofarm all coins", function() 
    for i,v in workspace.CoinSpawns:GetChildren() do
        if v:FindFirstChild("Coin") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v:FindFirstChild("Coin").CFrame
        end
        task.wait()
    end
end)
local modtp = Forums:NewSection("Moderator Stuff (Risky!)")
modtp:NewButton("TP to Cosmetic room", function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("ModCosmeticsTp").CFrame
end)
modtp:NewButton("TP to Item room", function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("ModItemsTp").CFrame
end)
modtp:NewButton("TP to Chill room", function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("ModChillTp").CFrame
end)
modtp:NewButton("TP to Arena room", function() 
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace:FindFirstChild("ModArenaTp").CFrame
end)
modtp:NewToggle("Activate Cars GUI", function(state) 
    game.Players.LocalPlayer.PlayerGui.CarGui.Enabled = state
end)
local Safety = Forums:NewSection("Recording Safety")
Safety:NewToggle("Hide your nameplate", function(state)
    game.Players.LocalPlayer.Character.Head.OverheadGui.Enabled = not state
end)
Safety:NewButton("Fake username", function(state)
    game.Players.LocalPlayer.Character.Head.OverheadGui.Enabled = not state
end)
Safety:NewButton("Client-sided color change", function()
    local SpoofedColor = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
    game.Players.LocalPlayer.Character.Head.Head1.Color = SpoofedColor
    game.Players.LocalPlayer.Character.Torso.Torso.Color = SpoofedColor
    game.Players.LocalPlayer.Character["Right Arm"].Arm1.Color = SpoofedColor
    game.Players.LocalPlayer.Character["Left Arm"].Arm2.Color = SpoofedColor
end)
