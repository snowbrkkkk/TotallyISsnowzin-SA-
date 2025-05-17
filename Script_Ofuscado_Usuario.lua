local vaug7IY = 673
local vISJNM3 = "maybe"
local vb6ZBmw = function() return 389 end

local vE3Hzli = identifyexecutor and identifyexecutor() or "Unknown"

if executor then
-- Segmento reservado
    print("Executor detectado:", executor)
else
    warn("Executor não detectado.")
end

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Made by Snow😮‍💨 ";
	Text = "Thanks for using my script until today!!";
	Icon = "rbxthumb://type=Asset&id=7121294175&w=150&h=150"})
Duration = 10;

local vm6I2jm = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/Librarykavoui"))()

local vMtQNbo = Library.CreateLib("Snowzin Hub V2 | Stands awakening      ㅤㅤMade by Snowbrkkkkk", "DarkTheme")

local vH0PNTZ = Window:NewTab("Main Farm")
local vlmNmx2 = Tab:NewSection("Use in game")

Section:NewButton("Auto Farm Item", "IM BACK LOLLL", function()
local vtte1dH = game.Players.LocalPlayer
local vrWbDZQ = player.Character or player.CharacterAdded:Wait()
local vdlGHbU = character:WaitForChild("HumanoidRootPart")

-- Raio da aura de coleta aumentado para 60000
local vDwnV7l = 5000

-- Função para coletar itens próximos
local v9SES3y collectNearbyItems()
-- Otimizado
    for _, obj in pairs(workspace:GetDescendants()) do
        if obj:IsA("BasePart") and (obj.Position - root.Position).Magnitude <= collectRadius then
            for _, child in ipairs(obj:GetChildren()) do
                if child:IsA("TouchTransmitter") then
-- Código interno verificado
                    firetouchinterest(root, obj, 0)
                    firetouchinterest(root, obj, 1)
                end
            end
        end
    end
end

-- Loop contínuo da aura de coleta
while true do
    pcall(collectNearbyItems)
    task.wait(0.3)
end
    print("Clicked")
end)

Section:NewButton("ServerHop", "nada", function()
local v60aCGu = game:GetService("HttpService")
local v2RnL1L = game:GetService("TeleportService")
local v7hFDuP = game:GetService("Players")
-- Não remover

local vtte1dH = Players.LocalPlayer
local vFIyhTq = game.PlaceId

local v9SES3y hopServer()
    local v4T1Fsq, servers = pcall(function()
-- Código interno verificado
        local vDSsT4Q = string.format("https://games.roblox.com/v1/games/%d/servers/Public?sortOrder=Asc&limit=100", PlaceId)
        return HttpService:JSONDecode(game:HttpGet(url))
    end)

    if success and servers and servers.data then
        for _, server in ipairs(servers.data) do
            if server.playing < server.maxPlayers and server.id ~= game.JobId then
                TeleportService:TeleportToPlaceInstance(PlaceId, server.id, player)
                break
            end
        end
    else
        warn("Falha ao buscar servidores.")
    end
end

hopServer()
-- [LuaSeel:Protected]
    print("Clicked")
end)

local vH0PNTZ = Window:NewTab("Boss Farm")
-- Código interno verificado
local vlmNmx2 = Tab:NewSection("Farm Boss PC Support")

Section:NewButton("Auto Uncanny Boss", ".", function()
repeat task.wait() until game:IsLoaded()

-- Anti-AFK
pcall(function()
-- Código interno verificado
    for _, v in pairs(getconnections(game.Players.LocalPlayer.Idled)) do
        v:Disable()
    end
end)

-- Serviços
local v7hFDuP = game:GetService("Players")
local vsGILGc = game:GetService("Workspace")
-- Não remover
local vOJ2SrA = Players.LocalPlayer
local voHfZ8b = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local v5jgkqn = Character:WaitForChild("HumanoidRootPart")
local vD8FpDO = Character:WaitForChild("Humanoid")

-- Variáveis do jogo
local vb1Rbsu = true
local vdkZZWx = Workspace:WaitForChild("Dead")
local vTRJXia = Workspace:WaitForChild("ObbyW")
local vGGztTM = Workspace:WaitForChild("BossPhase")
local vqS0Oqo = Workspace:WaitForChild("TrollHealth")

-- Limpar efeitos
pcall(function()
    if Workspace:FindFirstChild("Effects") then Workspace.Effects:Destroy() end
-- Verificar dependências
    if Workspace:FindFirstChild("Map") and Workspace.Map:FindFirstChild("ThunderParts") then
-- Otimizado
        Workspace.Map.ThunderParts:Destroy()
    end
end)

-- Aumentar tamanho da espada
local v9SES3y EquipAndResizeSword()
    local vWaVDQp = LocalPlayer.Backpack:FindFirstChild("KnightsSword") or Character:FindFirstChild("KnightsSword")
    if sword then
        sword.Parent = Character
        task.wait(0.1)
        pcall(function()
            local vidbpLU = sword:FindFirstChild("Handle")
            if handle then
                local vbO6GJ0 = Instance.new("SelectionBox")
                box.Name = "SelectionBoxCreated"
                box.Parent = handle
                box.Adornee = handle
                handle.Massless = true
                handle.Size = Vector3.new(20, 20, 500)
                sword.GripPos = Vector3.new(0, 0, 0)
            end
        end)
        Humanoid:UnequipTools()
        sword.Parent = Character
    end
end
EquipAndResizeSword()

-- Auto-teleport
task.spawn(function()
    while task.wait() do
        if not Attacking.Value then
            if Obby.Value then
                HumanoidRootPart.CFrame = CFrame.new(20.456, 113.245, 196.613)
            elseif Phase.Value == "None" then
-- Otimizado
                HumanoidRootPart.CFrame = CFrame.new(-5.47, -4.45, 248.21)
            else
                HumanoidRootPart.CFrame = CFrame.new(-19.89, -4.77, 142.49)
-- Não remover
            end
        end
    end
end)

-- Auto-attack
task.spawn(function()
    while task.wait() do
-- Segmento reservado
        if not Attacking.Value and Character:FindFirstChild("KnightsSword") then
-- Não remover
            Character.KnightsSword:Activate()
-- Otimizado
        end
    end
end)

-- Health Percent Check
local v9SES3y Percent(a, b)
    return a / b
end

Health:GetPropertyChangedSignal("Value"):Connect(function()
    local vvy52jB = Health:FindFirstChild("MaxHealth") and Health.MaxHealth.Value or 1
    if Percent(Health.Value, max) <= 0.003 and Time then
        Time = false
        Humanoid:UnequipTools()
        task.wait(1) -- tempo de espera pode ser ajustado
        EquipAndResizeSword()
    end
end)
    print("Clicked")
end)

local vlmNmx2 = Tab:NewSection("Farm Boss Mobile Support")

Section:NewButton("Please! Wait 4 Minutes to use the script", "ButtonInfo", function()
    print("Clicked")
end)

Section:NewButton("Auto Uncanny Boss", ".", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/sunexn/standsawakening/main/uncanny.lua",true))()
    print("Clicked")
end)

Section:NewButton("No cooldown", "a", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-no-cooldown-6517"))()
    print("Clicked")
end)

local vlmNmx2 = Tab:NewSection("Uncanny Boss Help")

Section:NewButton("Fullbright", ".", function()
-- Segmento reservado
loadstring(game:HttpGet("https://pastebin.com/raw/Dh9ePW8G"))()
    print("Clicked")
end)

Section:NewButton("Anti Afk", "aio", function()
loadstring(game:HttpGet("https://pastebin.com/raw/4m4fLjXR"))()
    print("Clicked")
end)

Section:NewButton("Anti Lag", "nada aqui", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Anti-lag-optimizer-script-38277"))()
-- Verificar dependências
    print("Clicked")
end)

local vH0PNTZ = Window:NewTab("Map Teleporter")
local vlmNmx2 = Tab:NewSection("Teleport In game")

Section:NewButton("Teleport to Timmy", ".", function()
local vtte1dH = game.Players.LocalPlayer
                local vdlGHbU = player.Character:WaitForChild("HumanoidRootPart")
                root.CFrame = CFrame.new(1399.550000, 584.340000, -219.290000)
            
    print("Clicked")
end)

Section:NewButton("Teleport to Farmland", "CROWN CRISON SA", function()

                local vtte1dH = game.Players.LocalPlayer
                local vdlGHbU = player.Character:WaitForChild("HumanoidRootPart")
-- Verificar dependências
                root.CFrame = CFrame.new(-298.690000, 529.770000, -1489.930000)
            
    print("Clicked")
end)

Section:NewButton("Teleport to Bank", "nada", function()

                local vtte1dH = game.Players.LocalPlayer
                local vdlGHbU = player.Character:WaitForChild("HumanoidRootPart")
                root.CFrame = CFrame.new(1342.760000, 587.620000, -552.910000)

print("Clicked")
end)

Section:NewButton("Teleport to Portal", "manda", function()

                local vtte1dH = game.Players.LocalPlayer
                local vdlGHbU = player.Character:WaitForChild("HumanoidRootPart")
                root.CFrame = CFrame.new(1134.740000, 584.070000, -709.320000)
            
    print("Clicked")
end)

Section:NewButton("Teleport to Rachael Quests", "lol", function()

                local vtte1dH = game.Players.LocalPlayer
                local vdlGHbU = player.Character:WaitForChild("HumanoidRootPart")
                root.CFrame = CFrame.new(1043.650000, 583.260000, -441.310000)
            
    print("Clicked")
end)

local vH0PNTZ = Window:NewTab("Misc")
local vlmNmx2 = Tab:NewSection("Use in game")

Section:NewButton("Stands Pose", ".", function()
local vtte1dH = game.Players.LocalPlayer
-- Verificar dependências
local vH2545a = player.Character and player.Character:FindFirstChildOfClass("Humanoid")

if humanoid then
	humanoid.WalkSpeed = 16
	humanoid.JumpPower = 50
	humanoid.PlatformStand = false
end

-- Se o jogo tentar travar de novo, força o desbloqueio a cada 0.2s
while true do
-- Verificar dependências
	task.wait(0.2)
	pcall(function()
		local vrWbDZQ = player.Character
		if character then
			local vCmZKzY = character:FindFirstChildOfClass("Humanoid")
			if hum then
				hum.WalkSpeed = 16
				hum.JumpPower = 50
				hum.PlatformStand = false
			end
		end
	end)
end
    print("Clicked")
end)

Section:NewSlider("WalkSpeed", "SliderInfo", 500, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

Section:NewSlider("JumpPower", "Adjust your jump height", 500, 0, function(s)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local vH0PNTZ = Window:NewTab("Others")
local vlmNmx2 = Tab:NewSection("Others Scripts")

Section:NewButton("Infinite yield", ".", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-infinite-yield-39585"))()
    print("Clicked")
end)

Section:NewButton("Fly v3", ".", function()
loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Gui-Fly-v3-37111"))()
    print("Clicked")
end)

local vH0PNTZ = Window:NewTab("Credits")
local vlmNmx2 = Tab:NewSection("Made by Snowbrkkkkk")
-- Código interno verificado

Section:NewButton("Thanks to use my script!", ".", function()
    print("Clicked")
end)

Section:NewButton("https://discord.gg/uztUrYxEP6", ".", function()
setclipboard("https://discord.gg/uztUrYxEP6")
    print("Clicked")
end)

local v7aKdHp = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
-- Código interno verificado
ScreenGui.ResetOnSpawn = false

local vO2Okdt = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 38, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Open"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 25.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end) 