local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/forumsLib/main/source.lua"))()
local Forums = Library.new("Aurora Client")
_G.AuroraSettings = {}
_G.AuroraSettings.RGB = false

--RGB Watcher
coroutine.wrap(function()
while true do
           
        if _G.AuroraSettings.RGB then
            for i,v in workspace["Computer 2"].Colors:GetChildren() do
                fireclickdetector(v.ClickDetector)
                wait(0.1)
            end
        end
        wait(0.1)  
    end
end)()

local function generateranstring(charamount)
    local randlowercase = ""
    for i = charamount,1,-1 do
        randlowercase = randlowercase .. string.char(math.random(97, 97 + 25))
    end
    return randlowercase
end

local exclusive = Forums:NewSection("Exclusive Mods")
exclusive:NewButton("Get mod stick (Stand still!)", function() 
    local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Mod Vents!"]["Moderator Stick"].EquipmentSpawner.CFrame
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastpos
end)
exclusive:NewButton("Get Kick Hammer", function() 
    local lastpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace["Mod Vents!"]["Kick Hammer"].EquipmentSpawner.CFrame
    wait(0.1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = lastpos
end)
exclusive:NewToggle("RGB Monke", function(state)
    _G.AuroraSettings.RGB = state
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
modtp:NewToggle("Activate Touchey Gui", function(state) 
    game.Players.LocalPlayer.PlayerGui["My Guis"].Enabled = state
end)
local Safety = Forums:NewSection("Recording Safety")
Safety:NewToggle("Hide your nameplate", function(state)
    game.Players.LocalPlayer.Character.Head.OverheadGui.Enabled = not state
end)

Safety:NewButton("Fake username", function()
     local name = generateranstring(20)
     game.Players.LocalPlayer.Character.Head.OverheadGui.Username.Text = "[FakeName]\n" .. tostring(name)
end)
Safety:NewButton("Client-sided color change", function()
    local SpoofedColor = Color3.new(math.random(1,255),math.random(1,255),math.random(1,255))
    game.Players.LocalPlayer.Character.Head.Head1.Color = SpoofedColor
    game.Players.LocalPlayer.Character.Torso.Torso.Color = SpoofedColor
    game.Players.LocalPlayer.Character["Right Arm"].Arm1.Color = SpoofedColor
    game.Players.LocalPlayer.Character["Left Arm"].Arm2.Color = SpoofedColor
end)
