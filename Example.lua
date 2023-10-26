local Library = Library:CreateWindow("Game")

local HomeTab = Library:CreateTab("15166166316")
local FarmTab = Library:CreateTab("15166190223")
local SettingsTab = Library:CreateTab("15116914445")

HomeTab:CreateButton("button!",function()
	print("works")
end)

HomeTab:CreateSection("section!")

HomeTab:CreateLabel("label!")

HomeTab:CreateToggle("toggle!",function(state)
	print(state)
end)

HomeTab:CreateSlider("slider!",250,function(value)
	print(value)
end)

HomeTab:CreateBox("box!",function(input)
	print(input)
end)
