local uis = game:GetService("UserInputService")
local plr = game.Players.LocalPlayer
--local location = game.Workspace.Location
local gui = Instance.new("ScreenGui", plr:WaitForChild("PlayerGui"))
gui.Name = "TeleportGui"
gui.ResetOnSpawn = false


local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0, 500, 0, 350)
frame.Position = UDim2.new(0.399, -100,0.614, -250)
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
v.Position = UDim2.new(0.674, 0,0.874, 0)
v.Size = UDim2.new(0, 200, 0, 50)
v.Text = "Version 1.0"
v.Font = Enum.Font.FredokaOne
v.TextSize = 20
v.TextColor3 = Color3.fromRGB(0, 0, 0)

local criminal_option = Instance.new("TextLabel", frame)
criminal_option.BackgroundTransparency = 0.5
criminal_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
criminal_option.Position = UDim2.new(0.026, 0,0.163, 0)
criminal_option.Size = UDim2.new(0, 150, 0, 50)
criminal_option.Text = "Place 1 [C]"
criminal_option.Font = Enum.Font.FredokaOne
criminal_option.TextSize = 18
criminal_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local criminal_stroke = Instance.new("UIStroke", criminal_option)
criminal_stroke.ApplyStrokeMode = "Border"
criminal_stroke.Color = Color3.fromRGB(0, 0, 0)
criminal_stroke.Thickness = 2
local criminal_corner = Instance.new("UICorner", criminal_option)
criminal_corner.CornerRadius = UDim.new(0, 8)

local policeStation_option = Instance.new("TextLabel", frame)
policeStation_option.BackgroundTransparency = 0.5
policeStation_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
policeStation_option.Position = UDim2.new(0.35, 0,0.163, 0)
policeStation_option.Size = UDim2.new(0, 150, 0, 50)
policeStation_option.Text = "Place 2 [P]"
policeStation_option.Font = Enum.Font.FredokaOne
policeStation_option.TextSize = 18
policeStation_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local policeStation_stroke = Instance.new("UIStroke", policeStation_option)
policeStation_stroke.ApplyStrokeMode = "Border"
policeStation_stroke.Color = Color3.fromRGB(0, 0, 0)
policeStation_stroke.Thickness = 2
local policeStation_corner = Instance.new("UICorner", policeStation_option)
policeStation_corner.CornerRadius = UDim.new(0, 8)

local hero_option = Instance.new("TextLabel", frame)
hero_option.BackgroundTransparency = 0.5
hero_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
hero_option.Position = UDim2.new(0.674, 0,0.163, 0)
hero_option.Size = UDim2.new(0, 150, 0, 50)
hero_option.Text = "Place 3 [H]"
hero_option.Font = Enum.Font.FredokaOne
hero_option.TextSize = 18
hero_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local hero_stroke = Instance.new("UIStroke", hero_option)
hero_stroke.ApplyStrokeMode = "Border"
hero_stroke.Color = Color3.fromRGB(0, 0, 0)
hero_stroke.Thickness = 2
local hero_corner = Instance.new("UICorner", hero_option)
hero_corner.CornerRadius = UDim.new(0, 8)

local bank_option = Instance.new("TextLabel", frame)
bank_option.BackgroundTransparency = 0.5
bank_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
bank_option.Position = UDim2.new(0.026, 0,0.354, 0)
bank_option.Size = UDim2.new(0, 150, 0, 50)
bank_option.Text = "Place 4 [B]"
bank_option.Font = Enum.Font.FredokaOne
bank_option.TextSize = 18
bank_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local bank_stroke = Instance.new("UIStroke", bank_option)
bank_stroke.ApplyStrokeMode = "Border"
bank_stroke.Color = Color3.fromRGB(0, 0, 0)
bank_stroke.Thickness = 2
local bank_corner = Instance.new("UICorner", bank_option)
bank_corner.CornerRadius = UDim.new(0, 8)

local jewelry_option = Instance.new("TextLabel", frame)
jewelry_option.BackgroundTransparency = 0.5
jewelry_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
jewelry_option.Position = UDim2.new(0.35, 0,0.354, 0)
jewelry_option.Size = UDim2.new(0, 150, 0, 50)
jewelry_option.Text = "Place 5 [J]"
jewelry_option.Font = Enum.Font.FredokaOne
jewelry_option.TextSize = 18
jewelry_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local jewelry_stroke = Instance.new("UIStroke", jewelry_option)
jewelry_stroke.ApplyStrokeMode = "Border"
jewelry_stroke.Color = Color3.fromRGB(0, 0, 0)
jewelry_stroke.Thickness = 2
local jewelry_corner = Instance.new("UICorner", jewelry_option)
jewelry_corner.CornerRadius = UDim.new(0, 8)

local casino_option = Instance.new("TextLabel", frame)
casino_option.BackgroundTransparency = 0.5
casino_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
casino_option.Position = UDim2.new(0.674, 0,0.354, 0)
casino_option.Size = UDim2.new(0, 150, 0, 50)
casino_option.Text = "Place 6 [S]"
casino_option.Font = Enum.Font.FredokaOne
casino_option.TextSize = 18
casino_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local casino_stroke = Instance.new("UIStroke", casino_option)
casino_stroke.ApplyStrokeMode = "Border"
casino_stroke.Color = Color3.fromRGB(0, 0, 0)
casino_stroke.Thickness = 2
local casino_corner = Instance.new("UICorner", casino_option)
casino_corner.CornerRadius = UDim.new(0, 8)

local club_option = Instance.new("TextLabel", frame)
club_option.BackgroundTransparency = 0.5
club_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
club_option.Position = UDim2.new(0.026, 0,0.54, 0)
club_option.Size = UDim2.new(0, 150, 0, 50)
club_option.Text = "Place 7 [L]"
club_option.Font = Enum.Font.FredokaOne
club_option.TextSize = 18
club_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local club_stroke = Instance.new("UIStroke", club_option)
club_stroke.ApplyStrokeMode = "Border"
club_stroke.Color = Color3.fromRGB(0, 0, 0)
club_stroke.Thickness = 2
local club_corner = Instance.new("UICorner", club_option)
casino_corner.CornerRadius = UDim.new(0, 8)

local pyramid_option = Instance.new("TextLabel", frame)
pyramid_option.BackgroundTransparency = 0.5
pyramid_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
pyramid_option.Position = UDim2.new(0.35, 0,0.54, 0)
pyramid_option.Size = UDim2.new(0, 150, 0, 50)
pyramid_option.Text = "Place 8 [P]"
pyramid_option.Font = Enum.Font.FredokaOne
pyramid_option.TextSize = 18
pyramid_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local pyramid_stroke = Instance.new("UIStroke", pyramid_option)
pyramid_stroke.ApplyStrokeMode = "Border"
pyramid_stroke.Color = Color3.fromRGB(0, 0, 0)
pyramid_stroke.Thickness = 2
local pyramid_corner = Instance.new("UICorner", pyramid_option)
pyramid_corner.CornerRadius = UDim.new(0, 8)

local weapons_option = Instance.new("TextLabel", frame)
weapons_option.BackgroundTransparency = 0.5
weapons_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
weapons_option.Position = UDim2.new(0.674, 0,0.54, 0)
weapons_option.Size = UDim2.new(0, 150, 0, 50)
weapons_option.Text = " Place 9 [N]"
weapons_option.Font = Enum.Font.FredokaOne
weapons_option.TextSize = 18
weapons_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local weapons_stroke = Instance.new("UIStroke", weapons_option)
weapons_stroke.ApplyStrokeMode = "Border"
weapons_stroke.Color = Color3.fromRGB(0, 0, 0)
weapons_stroke.Thickness = 2
local weapons_corner = Instance.new("UICorner", weapons_option)
weapons_corner.CornerRadius = UDim.new(0, 8)

local garage_option = Instance.new("TextLabel", frame)
garage_option.BackgroundTransparency = 0.5
garage_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
garage_option.Position = UDim2.new(0.026, 0,0.731, 0)
garage_option.Size = UDim2.new(0, 150, 0, 50)
garage_option.Text = "Place 10 [G]"
garage_option.Font = Enum.Font.FredokaOne
garage_option.TextSize = 18
garage_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local garage_stroke = Instance.new("UIStroke", garage_option)
garage_stroke.ApplyStrokeMode = "Border"
garage_stroke.Color = Color3.fromRGB(0, 0, 0)
garage_stroke.Thickness = 2
local garage_corner = Instance.new("UICorner", garage_option)
garage_corner.CornerRadius = UDim.new(0, 8)

local airport_option = Instance.new("TextLabel", frame)
airport_option.BackgroundTransparency = 0.5
airport_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
airport_option.Position = UDim2.new(0.35, 0,0.731, 0)
airport_option.Size = UDim2.new(0, 150, 0, 50)
airport_option.Text = "Place 11 [I]"
airport_option.Font = Enum.Font.FredokaOne
airport_option.TextSize = 18
airport_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local airport_stroke = Instance.new("UIStroke", airport_option)
airport_stroke.ApplyStrokeMode = "Border"
airport_stroke.Color = Color3.fromRGB(0, 0, 0)
airport_stroke.Thickness = 2
local airport_corner = Instance.new("UICorner", airport_option)
airport_corner.CornerRadius = UDim.new(0, 8)

local center_option = Instance.new("TextLabel", frame)
center_option.BackgroundTransparency = 0.5
center_option.BackgroundColor3 = Color3.fromRGB(90, 90, 90)
center_option.Position = UDim2.new(0.674, 0,0.731, 0)
center_option.Size = UDim2.new(0, 150, 0, 50)
center_option.Text = "Place 12 [T]"
center_option.Font = Enum.Font.FredokaOne
center_option.TextSize = 18
center_option.TextColor3 = Color3.fromRGB(0, 0, 0)
local center_stroke = Instance.new("UIStroke", center_option)
center_stroke.ApplyStrokeMode = "Border"
center_stroke.Color = Color3.fromRGB(0, 0, 0)
center_stroke.Thickness = 2
local center_corner = Instance.new("UICorner", center_option)
center_corner.CornerRadius = UDim.new(0, 8)

local part = game.Workspace:WaitForChild("Part")

uis.InputBegan:Connect(function(input, gameProcessed)
	if input.KeyCode == Enum.KeyCode.T then
		if frame.Visible == false then
			frame.Visible = true
			
			if frame.Visible == true then
				uis.InputBegan:Connect(function(input, gameProcessed)
					if input.KeyCode == Enum.KeyCode.C then
						plr.Character.HumanoidRootPart.CFrame = CFrame.new(part.CFrame.Position) + Vector3.new(0.1, 3, 0.1)
						frame.Visible = false
					end
				end)
			end
			
		else
			frame.Visible = false
		end
	end
end)
