local Config = {
    WindowName = "LOL",
	Color = Color3.fromRGB(255,128,64),
	Keybind = Enum.KeyCode.RightBracket
}

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/AlexR32/Roblox/main/BracketV3.lua"))()
local Window = Library:CreateWindow(Config, game:GetService("CoreGui"))

local Tab1 = Window:CreateTab("Option")
local Tab2 = Window:CreateTab("UI Settings")

local Section1 = Tab1:CreateSection("LocalPlayer")
local Section12 = Tab1:CreateSection("Troll")
local Section3 = Tab2:CreateSection("Menu")
local Section4 = Tab2:CreateSection("Background")

local Label1 = Section1:CreateLabel("Label 1")
Label1:UpdateText("สคริปนี้ทำมาเพื่อเทสเท่านั้น")

local SPeed = 0
local JUup = 0

local Slider1 = Section1:CreateSlider("Set Speed", 0,100,nil,true, function(Value)
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	SPeed = Value
end)
Slider1:AddToolTip("Set Speed")
Slider1:SetValue(16)

local Slider1 = Section1:CreateSlider("Set Jump Power", 0,100,nil,true, function(Value)
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
	JUup = Value
end)
Slider1:AddToolTip("Set jump power")
Slider1:SetValue(50)

local Toggle1 = Section1:CreateToggle("Auto Set Speed and Jump", nil, function()
    while wait() do
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = SPeed
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = JUup
    end
end)
Toggle1:AddToolTip("Toggle 1 ToolTip")
Toggle1:CreateKeybind("Y", function(Key)
	print(Key)
end)

local T1 = Section12:CreateButton("บันไดรุ้ง 1", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-248.671982, 147.968628, -56.6039581, -0.666891634, -3.30371428e-08, -0.745154738, -5.77390509e-08, 1, 7.33880601e-09, 0.745154738, 4.79187143e-08, -0.666891634)
end)
local T2 = Section12:CreateButton("ทางรุ้ง 2", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(16.6794281, 147.999954, 434.743774, -0.927766562, 7.03036918e-09, 0.373161077, -1.50710253e-08, 1, -5.63101672e-08, -0.373161077, -5.78666111e-08, -0.927766562)
end)
local T3 = Section12:CreateButton("ทางรุ้ง 3", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-497.751434, 147.975662, 188.078354, 0.986935616, -2.24976038e-08, -0.16111514, 1.34069236e-08, 1, -5.75106291e-08, 0.16111514, 5.459923e-08, 0.986935616)
end)
local T4 = Section12:CreateButton("บันไดรุ้ง 4", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-251.532501, 174.999954, 100.510193, 0.0269401949, 4.50659421e-08, -0.999637067, 3.19439231e-08, 1, 4.59431924e-08, 0.999637067, -3.31700463e-08, 0.0269401949)
end)
local T5 = Section12:CreateButton("บันไดรุ้ง 5", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(152.102432, 147.998734, -6.82324266, -0.360988766, -4.25246576e-08, 0.932570159, 1.4386349e-08, 1, 5.11682359e-08, -0.932570159, 3.18874385e-08, -0.360988766)
end)
local T6 = Section12:CreateButton("บันไดรุ้ง 6", function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-231.319031, 293.966614, 366.857697, 0.0671194345, -1.58721747e-08, 0.997744977, -2.07787698e-09, 1, 1.60478297e-08, -0.997744977, -3.15031246e-09, 0.0671194345)
end)

-------------หน้า setting-----------
local Toggle3 = Section3:CreateToggle("UI Toggle", nil, function(State)
	Window:Toggle(State)
end)
Toggle3:CreateKeybind(tostring(Config.Keybind):gsub("Enum.KeyCode.", "RightControl"), function(Key)
	Config.Keybind = Enum.KeyCode[Key]
end)
Toggle3:SetState(true)

local Colorpicker3 = Section3:CreateColorpicker("UI Color", function(Color)
	Window:ChangeColor(Color)
end)
Colorpicker3:UpdateColor(Config.Color)

local Dropdown3 = Section4:CreateDropdown("Image", {"Default","Hearts","Abstract","Hexagon","Circles","Lace With Flowers","Floral"}, function(Name)
	if Name == "Default" then
		Window:SetBackground("2151741365")
	elseif Name == "Hearts" then
		Window:SetBackground("6073763717")
	elseif Name == "Abstract" then
		Window:SetBackground("6073743871")
	elseif Name == "Hexagon" then
		Window:SetBackground("6073628839")
	elseif Name == "Circles" then
		Window:SetBackground("6071579801")
	elseif Name == "Lace With Flowers" then
		Window:SetBackground("6071575925")
	elseif Name == "Floral" then
		Window:SetBackground("5553946656")
	end
end)
Dropdown3:SetOption("Default")

local Colorpicker4 = Section4:CreateColorpicker("Color", function(Color)
	Window:SetBackgroundColor(Color)
end)
Colorpicker4:UpdateColor(Color3.new(1,1,1))

local Slider3 = Section4:CreateSlider("Transparency",0,1,nil,false, function(Value)
	Window:SetBackgroundTransparency(Value)
end)
Slider3:SetValue(0)

local Slider4 = Section4:CreateSlider("Tile Scale",0,1,nil,false, function(Value)
	Window:SetTileScale(Value)
end)
Slider4:SetValue(0.5)

