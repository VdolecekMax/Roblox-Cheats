--loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/dex.lua"))()

local uis = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
gui.Name = "TeleportGui"
gui.ResetOnSpawn = false
gui.Parent = plr:WaitForChild("PlayerGui")

local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 500, 0, 350)
frame.Position = UDim2.new(0.399, -100, 0.614, -250)
frame.BackgroundColor3 = Color3.fromRGB(120, 120, 120)
frame.BackgroundTransparency = 0.5
frame.Visible = false
local UIcorner = Instance.new("UICorner", frame)
UIcorner.CornerRadius = UDim.new(0, 15)
local UIstroke = Instance.new("UIStroke", frame)
UIstroke.ApplyStrokeMode = "Border"
UIstroke.Color = Color3.fromRGB(0, 0, 0)
UIstroke.Thickness = 3

local title = Instance.new("TextLabel", frame)
title.BackgroundTransparency = 1
title.Position = UDim2.new(0.3, 0, 0, 0)
title.Size = UDim2.new(0, 200, 0, 50)
title.Text = "Teleport Menu"
title.Font = Enum.Font.FredokaOne
title.TextScaled = true
title.TextColor3 = Color3.fromRGB(0, 0, 0)

local v = Instance.new("TextLabel", frame)
v.BackgroundTransparency = 1
v.Position = UDim2.new(0.674, 0, 0.874, 0)
v.Size = UDim2.new(0, 200, 0, 50)
v.Text = "Version 1.0"
v.Font = Enum.Font.FredokaOne
v.TextSize = 20
v.TextColor3 = Color3.fromRGB(0, 0, 0)

-- Reusable function for button creation
local function createButton(text, position, parent)
	local btn = Instance.new("TextLabel", parent)
	btn.BackgroundTransparency = 0.5
	btn.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
	btn.Position = position
	btn.Size = UDim2.new(0, 150, 0, 50)
	btn.Text = text
	btn.Font = Enum.Font.FredokaOne
	btn.TextSize = 18
	btn.TextColor3 = Color3.fromRGB(0, 0, 0)
	local stroke = Instance.new("UIStroke", btn)
	stroke.ApplyStrokeMode = "Border"
	stroke.Color = Color3.fromRGB(0, 0, 0)
	stroke.Thickness = 2
	local corner = Instance.new("UICorner", btn)
	corner.CornerRadius = UDim.new(0, 8)
	return btn
end

local criminal_option = createButton("Place 1 [C]", UDim2.new(0.026, 0, 0.163, 0), frame)
local policeStation_option = createButton("Place 2 [P]", UDim2.new(0.35, 0, 0.163, 0), frame)
local hero_option = createButton("Place 3 [H]", UDim2.new(0.674, 0, 0.163, 0), frame)
local bank_option = createButton("Place 4 [B]", UDim2.new(0.026, 0, 0.354, 0), frame)
local jewelry_option = createButton("Place 5 [J]", UDim2.new(0.35, 0, 0.354, 0), frame)
local casino_option = createButton("Place 6 [S]", UDim2.new(0.674, 0, 0.354, 0), frame)
local club_option = createButton("Place 7 [L]", UDim2.new(0.026, 0, 0.54, 0), frame)
local pyramid_option = createButton("Place 8 [P]", UDim2.new(0.35, 0, 0.54, 0), frame)
local weapons_option = createButton("Place 9 [N]", UDim2.new(0.674, 0, 0.54, 0), frame)
local garage_option = createButton("Place 10 [G]", UDim2.new(0.026, 0, 0.731, 0), frame)
local airport_option = createButton("Place 11 [I]", UDim2.new(0.35, 0, 0.731, 0), frame)
local center_optio = createButton("Place 12 [T]", UDim2.new(0.674, 0, 0.731, 0), frame)

-- Fix corner assignment typo
-- Corrected: casino_corner.CornerRadius = UDim.new(0, 8)
-- Was previously accidentally assigned inside club_option

local location = game.Workspace:WaitForChild("location")
local location2 = game.Workspace:WaitForChild("location2")

local isFrameOpen = false

uis.InputBegan:Connect(function(input, gameProcessed)
	if gameProcessed then return end

	if input.KeyCode == Enum.KeyCode.T then
		isFrameOpen = not isFrameOpen
		frame.Visible = isFrameOpen
	end

	if isFrameOpen then
		local hrp = plr.Character and plr.Character:FindFirstChild("HumanoidRootPart")
		if not hrp then return end

		if input.KeyCode == Enum.KeyCode.C then
			hrp.CFrame = location.CFrame + Vector3.new(0.1, 3, 0.1)
			frame.Visible = false
			isFrameOpen = false
		elseif input.KeyCode == Enum.KeyCode.P then
			hrp.CFrame = location2.CFrame + Vector3.new(0.1, 3, 0.1)
			frame.Visible = false
			isFrameOpen = false
		end
	end
end)
