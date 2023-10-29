local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")

local Library = {}
function Library:CreateWindow(Game)
	
	if game.CoreGui:FindFirstChild("BruteLibrary") then
		game.CoreGui:FindFirstChild("BruteLibrary"):Destroy()
	end
	
	local BruteLibrary = Instance.new("ScreenGui")
	local Main_1 = Instance.new("Frame")
	local UIStroke_1 = Instance.new("UIStroke")
	local TopBar_1 = Instance.new("Frame")
	local UICorner_1 = Instance.new("UICorner")
	local UIStroke_2 = Instance.new("UIStroke")
	local Title_1 = Instance.new("TextLabel")
	local UIPadding_1 = Instance.new("UIPadding")
	local Game_1 = Instance.new("TextLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local UICorner_2 = Instance.new("UICorner")
	local ElementsHolder_1 = Instance.new("Frame")
	local CloseBtn_1 = Instance.new("ImageButton")
	local UI_1 = Instance.new("Frame")
	local UICorner_16 = Instance.new("UICorner")
	local UIStroke_15 = Instance.new("UIStroke")
	local UIBtn_1 = Instance.new("TextButton")
	local TabHolder_1 = Instance.new("Frame")
	local UICorner_15 = Instance.new("UICorner")
	local UIStroke_14 = Instance.new("UIStroke")
	local Tabs_1 = Instance.new("ScrollingFrame")
	local UIListLayout_2 = Instance.new("UIListLayout")
	local UIPadding_10 = Instance.new("UIPadding")
	local CloseBtn_1 = Instance.new("ImageButton")
	
	
	local UI_1 = Instance.new("Frame")
	local UICorner_16 = Instance.new("UICorner")
	local UIStroke_15 = Instance.new("UIStroke")
	local UIBtn_1 = Instance.new("TextButton")
	
	
	
	-- OPEN GUI BTN
	local targetOpenOn = Color3.fromRGB(200,200,200)
	local targetOpenOff = Color3.fromRGB(255,255,255)
	local tweenInfo = TweenInfo.new(0.2)
	local tweengon = TweenService:Create(UIBtn_1, tweenInfo, {TextColor3 = targetOpenOn})
	local tweengoff = TweenService:Create(UIBtn_1, tweenInfo, {TextColor3 = targetOpenOff})


	-- CLOSE GUI BTN
	local targetGOpenOn = Color3.fromRGB(210,210,210)
	local targetGOpenOff = Color3.fromRGB(178,178,178)
	local tweenInfo = TweenInfo.new(0.2)
	local tweengbon = TweenService:Create(CloseBtn_1, tweenInfo, {ImageColor3 = targetGOpenOn})
	local tweengboff = TweenService:Create(CloseBtn_1, tweenInfo, {ImageColor3 = targetGOpenOff})

	-- OPEN GUI
	local targetPositionOpen = UDim2.new(0.5, 0, 0.5, 0)
	local tweenInfoOpen = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local tweenOpen = TweenService:Create(Main_1, tweenInfoOpen, { Position = targetPositionOpen })


	-- CLOSE GUI
	local targetPositionClose = UDim2.new(0.5, 0, 1.5, 0)
	local tweenInfoClose = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local tweenClose = TweenService:Create(Main_1, tweenInfoClose, { Position = targetPositionClose })


	-- OPEN BTN
	local targetPositionOpenBtn = UDim2.new(0.5, 0,0.07, 0)
	local tweenInfoOpenBtn = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local tweenOpenBtn = TweenService:Create(UI_1, tweenInfoOpenBtn, { Position = targetPositionOpenBtn })


	-- CLOSE BTN
	local targetPositionCloseBtn = UDim2.new(0.5, 0, -0.5, 0)
	local tweenInfoCloseBtn = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)
	local tweenCloseBtn = TweenService:Create(UI_1, tweenInfoCloseBtn, { Position = targetPositionCloseBtn })
	
	-- Dragging
	local gui = Main_1

	local dragging
	local dragInput
	local dragStart
	local startPos

	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end

	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
	BruteLibrary.Name = "BruteLibrary"
	BruteLibrary.Parent = game.CoreGui

	Main_1.Name = "Main"
	Main_1.Parent = BruteLibrary
	Main_1.AnchorPoint = Vector2.new(0.5, 0.5)
	Main_1.BackgroundColor3 = Color3.fromRGB(25,25,25)
	Main_1.BackgroundTransparency = 0.10000000149011612
	Main_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Main_1.BorderSizePixel = 0
	Main_1.Position = UDim2.new(0.5, 0, 1.5, 0)
	Main_1.Size = UDim2.new(0, 390,0, 289)
	
	UIStroke_1.Parent = Main_1
	UIStroke_1.Color = Color3.fromRGB(178,178,178)
	UIStroke_1.Thickness = 1

	TopBar_1.Name = "TopBar"
	TopBar_1.Parent = Main_1
	TopBar_1.BackgroundColor3 = Color3.fromRGB(57,57,57)
	TopBar_1.BackgroundTransparency = 0.30000001192092896
	TopBar_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TopBar_1.BorderSizePixel = 0
	TopBar_1.Position = UDim2.new(0.0230769236, 0,0.0346020758, 0)
	TopBar_1.Size = UDim2.new(0, 304,0, 46)

	UICorner_1.Parent = TopBar_1

	UIStroke_2.Parent = TopBar_1
	UIStroke_2.Color = Color3.fromRGB(178,178,178)
	UIStroke_2.Thickness = 1

	Title_1.Name = "Title"
	Title_1.Parent = TopBar_1
	Title_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Title_1.BackgroundTransparency = 1
	Title_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Title_1.BorderSizePixel = 0
	Title_1.Position = UDim2.new(0, 0,0.00395268993, 0)
	Title_1.Size = UDim2.new(0, 102,0, 44)
	Title_1.Font = Enum.Font.FredokaOne
	Title_1.Text = "Brute Hub |"
	Title_1.TextColor3 = Color3.fromRGB(255,255,255)
	Title_1.TextSize = 20
	Title_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_1.Parent = Title_1
	UIPadding_1.PaddingLeft = UDim.new(0,8)

	Game_1.Name = "Game"
	Game_1.Parent = TopBar_1
	Game_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Game_1.BackgroundTransparency = 1
	Game_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Game_1.BorderSizePixel = 0
	Game_1.Position = UDim2.new(0.325657904, 0,0.00395268993, 0)
	Game_1.Size = UDim2.new(0, 102,0, 44)
	Game_1.Font = Enum.Font.FredokaOne
	Game_1.Text = Game
	Game_1.TextColor3 = Color3.fromRGB(128,128,128)
	Game_1.TextSize = 20
	Game_1.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding_2.Parent = Game_1
	UIPadding_2.PaddingLeft = UDim.new(0,5)

	UICorner_2.Parent = Main_1

	ElementsHolder_1.Name = "ElementsHolder"
	ElementsHolder_1.Parent = Main_1
	ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	ElementsHolder_1.BackgroundTransparency = 1
	ElementsHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	ElementsHolder_1.BorderSizePixel = 0
	ElementsHolder_1.Position = UDim2.new(0.0230769236, 0,0.224913493, 0)
	ElementsHolder_1.Size = UDim2.new(0, 304,0, 214)
	
	TabHolder_1.Name = "TabHolder"
	TabHolder_1.Parent = Main_1
	TabHolder_1.BackgroundColor3 = Color3.fromRGB(57,57,57)
	TabHolder_1.BackgroundTransparency = 0.30000001192092896
	TabHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
	TabHolder_1.BorderSizePixel = 0
	TabHolder_1.Position = UDim2.new(0.825641036, 0,0.0346020758, 0)
	TabHolder_1.Size = UDim2.new(0, 60,0, 269)

	UICorner_15.Parent = TabHolder_1

	UIStroke_14.Parent = TabHolder_1
	UIStroke_14.Color = Color3.fromRGB(178,178,178)
	UIStroke_14.Thickness = 1

	Tabs_1.Name = "Tabs"
	Tabs_1.Parent = TabHolder_1
	Tabs_1.Active = true
	Tabs_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	Tabs_1.BackgroundTransparency = 1
	Tabs_1.BorderColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.BorderSizePixel = 0
	Tabs_1.Position = UDim2.new(0, 0,0.204460964, 0)
	Tabs_1.Size = UDim2.new(0, 60,0, 214)
	Tabs_1.ClipsDescendants = true
	Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
	Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
	Tabs_1.CanvasPosition = Vector2.new(0, 0)
	Tabs_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
	Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never
	Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	Tabs_1.ScrollBarImageColor3 = Color3.fromRGB(0,0,0)
	Tabs_1.ScrollBarImageTransparency = 1
	Tabs_1.ScrollBarThickness = 1
	Tabs_1.ScrollingDirection = Enum.ScrollingDirection.Y
	Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
	Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
	Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

	UIListLayout_2.Parent = Tabs_1
	UIListLayout_2.Padding = UDim.new(0,8)
	UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

	UIPadding_10.Parent = Tabs_1
	UIPadding_10.PaddingBottom = UDim.new(0,3)
	UIPadding_10.PaddingLeft = UDim.new(0,8)
	
	CloseBtn_1.Name = "CloseBtn"
	CloseBtn_1.Parent = TabHolder_1
	CloseBtn_1.Active = true
	CloseBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	CloseBtn_1.BackgroundTransparency = 1
	CloseBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	CloseBtn_1.BorderSizePixel = 0
	CloseBtn_1.Position = UDim2.new(0.233333334, 0,0.0260223057, 0)
	CloseBtn_1.Size = UDim2.new(0, 32,0, 32)
	CloseBtn_1.Image = "rbxassetid://15116921249"
	CloseBtn_1.ImageColor3 = Color3.fromRGB(178,178,178)
	CloseBtn_1.MouseButton1Click:Connect(function()
		tweengbon:Play()
		wait(0.1)
		tweengboff:Play()
		wait(0.1)
		tweenClose:Play()
		tweenOpenBtn:Play()
	end)
		
	UI_1.Name = "UI"
	UI_1.Parent = BruteLibrary
	UI_1.AnchorPoint = Vector2.new(0.5, 0.5)
	UI_1.BackgroundColor3 = Color3.fromRGB(25,25,25)
	UI_1.BackgroundTransparency = 0.10000000149011612
	UI_1.BorderColor3 = Color3.fromRGB(0,0,0)
	UI_1.BorderSizePixel = 0
	UI_1.Position = UDim2.new(0.5, 0,0.0799999982, 0)
	UI_1.Size = UDim2.new(0, 54,0, 54)

	UICorner_16.Parent = UI_1

	UIStroke_15.Parent = UI_1
	UIStroke_15.Color = Color3.fromRGB(178,178,178)
	UIStroke_15.Thickness = 1

	UIBtn_1.Name = "UIBtn"
	UIBtn_1.Parent = UI_1
	UIBtn_1.Active = true
	UIBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
	UIBtn_1.BackgroundTransparency = 1
	UIBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
	UIBtn_1.BorderSizePixel = 0
	UIBtn_1.Size = UDim2.new(0, 54,0, 54)
	UIBtn_1.Font = Enum.Font.FredokaOne
	UIBtn_1.Text = "</>"
	UIBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
	UIBtn_1.TextSize = 16
	UIBtn_1.MouseButton1Click:Connect(function()
		tweengon:Play()
		wait(0.1)
		tweengoff:Play()
		wait(0.1)
		tweenCloseBtn:Play()
		tweenOpen:Play()
	end)
	
	local Tabs = {}	
	local first = true
	local currentTab = nil
	function Tabs:CreateTab(TabImage)
		local targetTabColorOn = Color3.fromRGB(255,255,255)
		local targetTabColorOff = Color3.fromRGB(180,180,180)
		
		local Elements_1 = Instance.new("Frame")
		local UICorner_3 = Instance.new("UICorner")
		local UIStroke_3 = Instance.new("UIStroke")
		local ScrollingFrame_1 = Instance.new("ScrollingFrame")
		local TabBtn_1 = Instance.new("ImageButton")
		local UIListLayout_1 = Instance.new("UIListLayout")
		local UIPadding_3 = Instance.new("UIPadding")
		
		Elements_1.Name = "Elements"
		Elements_1.Parent = ElementsHolder_1
		Elements_1.BackgroundColor3 = Color3.fromRGB(57,57,57)
		Elements_1.BackgroundTransparency = 0.30000001192092896
		Elements_1.BorderColor3 = Color3.fromRGB(0,0,0)
		Elements_1.BorderSizePixel = 0
		Elements_1.Size = UDim2.new(0, 304,0, 214)

		UICorner_3.Parent = Elements_1

		UIStroke_3.Parent = Elements_1
		UIStroke_3.Color = Color3.fromRGB(178,178,178)
		UIStroke_3.Thickness = 1

		ScrollingFrame_1.Name = "ScrollingFrame"
		ScrollingFrame_1.Parent = Elements_1
		ScrollingFrame_1.Active = true
		ScrollingFrame_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
		ScrollingFrame_1.BackgroundTransparency = 1
		ScrollingFrame_1.BorderColor3 = Color3.fromRGB(0,0,0)
		ScrollingFrame_1.BorderSizePixel = 0
		ScrollingFrame_1.Position = UDim2.new(0.00986842066, 0,0.0186915882, 0)
		ScrollingFrame_1.Size = UDim2.new(0, 298,0, 206)
		ScrollingFrame_1.ClipsDescendants = true
		ScrollingFrame_1.AutomaticCanvasSize = Enum.AutomaticSize.Y
		ScrollingFrame_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"
		ScrollingFrame_1.CanvasPosition = Vector2.new(0, 51)
		ScrollingFrame_1.CanvasSize = UDim2.new(0, 0,0.5, 0)
		ScrollingFrame_1.ElasticBehavior = Enum.ElasticBehavior.Never
		ScrollingFrame_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None
		ScrollingFrame_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
		ScrollingFrame_1.ScrollBarImageTransparency = 0
		ScrollingFrame_1.ScrollBarThickness = 2
		ScrollingFrame_1.ScrollingDirection = Enum.ScrollingDirection.Y
		ScrollingFrame_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"
		ScrollingFrame_1.VerticalScrollBarInset = Enum.ScrollBarInset.None
		ScrollingFrame_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right

		TabBtn_1.Name = "TabBtn"
		TabBtn_1.Parent = Tabs_1
		TabBtn_1.Active = true
		TabBtn_1.BackgroundColor3 = Color3.fromRGB(180,180,180)
		TabBtn_1.BackgroundTransparency = 1
		TabBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
		TabBtn_1.BorderSizePixel = 0
		TabBtn_1.Size = UDim2.new(0, 44,0, 44)
		TabBtn_1.Image = "rbxassetid://"..TabImage
		TabBtn_1.ImageColor3 = Color3.fromRGB(180,180,180)
		
		UIListLayout_1.Parent = ScrollingFrame_1
		UIListLayout_1.Padding = UDim.new(0,8)
		UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder

		UIPadding_3.Parent = ScrollingFrame_1
		UIPadding_3.PaddingBottom = UDim.new(0,7)
		UIPadding_3.PaddingLeft = UDim.new(0,7)
		UIPadding_3.PaddingTop = UDim.new(0,7)
		
		local tweenInfo = TweenInfo.new(0.2)

		local tweenton = TweenService:Create(TabBtn_1, tweenInfo, {ImageColor3 = targetTabColorOn})
		local tweentoff = TweenService:Create(TabBtn_1, tweenInfo, {ImageColor3 = targetTabColorOff})

		if first then
			first = false
			Elements_1.Visible = true
			currentTab = TabBtn_1 -- Set the first tab as the current tab
			tweenton:Play()
		else
			Elements_1.Visible = false
		end

		TabBtn_1.MouseButton1Click:Connect(function()
			if currentTab then
				tweentoff:Play() -- Turn off color for the previous tab
			end

			tweenton:Play() -- Turn on color for the new tab

			if currentTab and currentTab ~= TabBtn_1 then
				currentTab.ImageColor3 = targetTabColorOff -- Set the color of the previously selected tab to off
			end

			currentTab = TabBtn_1 -- Update the current tab
			for i, v in next, ElementsHolder_1:GetChildren() do
				v.Visible = false
			end

			Elements_1.Visible = true
		end)
		
		local Elements = {}
		function Elements:CreateSection(SectionText)
			local Section_1 = Instance.new("Frame")
			local SectionText_1 = Instance.new("TextLabel")
			
			Section_1.Name = "Section"
			Section_1.Parent = ScrollingFrame_1
			Section_1.BackgroundColor3 = Color3.fromRGB(39,39,39)
			Section_1.BackgroundTransparency = 1
			Section_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Section_1.BorderSizePixel = 0
			Section_1.Position = UDim2.new(0, 0,0.572164953, 0)
			Section_1.Size = UDim2.new(0, 283,0, 15)

			SectionText_1.Name = "SectionText"
			SectionText_1.Parent = Section_1
			SectionText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SectionText_1.BackgroundTransparency = 1
			SectionText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SectionText_1.BorderSizePixel = 0
			SectionText_1.Size = UDim2.new(0, 283,0, 15)
			SectionText_1.Font = Enum.Font.FredokaOne
			SectionText_1.Text = SectionText
			SectionText_1.TextColor3 = Color3.fromRGB(255,255,255)
			SectionText_1.TextSize = 14
		end
		function Elements:CreateLabel(LabelText)
			local Label_1 = Instance.new("Frame")
			local UICorner_9 = Instance.new("UICorner")
			local UIStroke_9 = Instance.new("UIStroke")
			local LabelText_1 = Instance.new("TextLabel")
			
			Label_1.Name = "Label"
			Label_1.Parent = ScrollingFrame_1
			Label_1.BackgroundColor3 = Color3.fromRGB(39,39,39)
			Label_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Label_1.BorderSizePixel = 0
			Label_1.Position = UDim2.new(0, 0,0.572164953, 0)
			Label_1.Size = UDim2.new(0, 283,0, 15)

			UICorner_9.Parent = Label_1
			UICorner_9.CornerRadius = UDim.new(0,7)

			UIStroke_9.Parent = Label_1
			UIStroke_9.Color = Color3.fromRGB(178,178,178)
			UIStroke_9.Thickness = 1

			LabelText_1.Name = "LabelText"
			LabelText_1.Parent = Label_1
			LabelText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			LabelText_1.BackgroundTransparency = 1
			LabelText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			LabelText_1.BorderSizePixel = 0
			LabelText_1.Size = UDim2.new(0, 283,0, 15)
			LabelText_1.Font = Enum.Font.FredokaOne
			LabelText_1.Text = LabelText
			LabelText_1.TextColor3 = Color3.fromRGB(255,255,255)
			LabelText_1.TextSize = 12
		end
		function Elements:CreateButton(ButtonText,Callback)
			Callback = Callback or function()
			end

			local targetButtonColorOn = Color3.fromRGB(70,70,70)
			local targetButtonColorOff = Color3.fromRGB(39,39,39)
			
			local Button_1 = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")
			local UIStroke_4 = Instance.new("UIStroke")
			local ButtonBtn_1 = Instance.new("TextButton")
			
			Button_1.Name = "Button"
			Button_1.Parent = ScrollingFrame_1
			Button_1.BackgroundColor3 = Color3.fromRGB(39,39,39)
			Button_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Button_1.BorderSizePixel = 0
			Button_1.Position = UDim2.new(-0.0100671137, 0,-0.00485436898, 0)
			Button_1.Size = UDim2.new(0, 283,0, 29)

			UICorner_4.Parent = Button_1
			UICorner_4.CornerRadius = UDim.new(0,7)

			UIStroke_4.Parent = Button_1
			UIStroke_4.Color = Color3.fromRGB(178,178,178)
			UIStroke_4.Thickness = 1

			ButtonBtn_1.Name = "ButtonBtn"
			ButtonBtn_1.Parent = Button_1
			ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ButtonBtn_1.BackgroundTransparency = 1
			ButtonBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ButtonBtn_1.BorderSizePixel = 0
			ButtonBtn_1.Size = UDim2.new(0, 283,0, 29)
			ButtonBtn_1.Font = Enum.Font.FredokaOne
			ButtonBtn_1.Text = ButtonText
			ButtonBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
			ButtonBtn_1.TextSize = 16
			
			local tweenInfo = TweenInfo.new(0.1)

			local tweenbon = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOn})
			local tweenboff = TweenService:Create(Button_1, tweenInfo, {BackgroundColor3 = targetButtonColorOff})

			ButtonBtn_1.MouseButton1Click:Connect(function()
				tweenbon:Play()
				wait(0.1)
				tweenboff:Play()
				Callback()
			end)
		end
		function Elements:CreateSlider(SliderText,max,Callback)
			local Slider_1 = Instance.new("Frame")
			local UICorner_10 = Instance.new("UICorner")
			local UIStroke_10 = Instance.new("UIStroke")
			local SliderText_1 = Instance.new("TextLabel")
			local UIPadding_6 = Instance.new("UIPadding")
			local SliderValue_1 = Instance.new("TextLabel")
			local UIPadding_7 = Instance.new("UIPadding")
			local SliderHolder_1 = Instance.new("Frame")
			local UICorner_11 = Instance.new("UICorner")
			local UIStroke_11 = Instance.new("UIStroke")
			local SliderBtn_1 = Instance.new("TextButton")
			local SliderInner_1 = Instance.new("Frame")
			local UICorner_12 = Instance.new("UICorner")
			
			Slider_1.Name = "Slider"
			Slider_1.Parent = ScrollingFrame_1
			Slider_1.BackgroundColor3 = Color3.fromRGB(39,39,39)
			Slider_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Slider_1.BorderSizePixel = 0
			Slider_1.Position = UDim2.new(0, 0,0.760416687, 0)
			Slider_1.Size = UDim2.new(0, 283,0, 49)

			UICorner_10.Parent = Slider_1
			UICorner_10.CornerRadius = UDim.new(0,7)

			UIStroke_10.Parent = Slider_1
			UIStroke_10.Color = Color3.fromRGB(178,178,178)
			UIStroke_10.Thickness = 1

			SliderText_1.Name = "SliderText"
			SliderText_1.Parent = Slider_1
			SliderText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SliderText_1.BackgroundTransparency = 1
			SliderText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderText_1.BorderSizePixel = 0
			SliderText_1.Size = UDim2.new(0, 209,0, 22)
			SliderText_1.Font = Enum.Font.FredokaOne
			SliderText_1.Text = SliderText
			SliderText_1.TextColor3 = Color3.fromRGB(255,255,255)
			SliderText_1.TextSize = 16
			SliderText_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_6.Parent = SliderText_1
			UIPadding_6.PaddingLeft = UDim.new(0,7)
			UIPadding_6.PaddingTop = UDim.new(0,3)

			SliderValue_1.Name = "SliderValue"
			SliderValue_1.Parent = Slider_1
			SliderValue_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SliderValue_1.BackgroundTransparency = 1
			SliderValue_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderValue_1.BorderSizePixel = 0
			SliderValue_1.Position = UDim2.new(0.738515913, 0,0, 0)
			SliderValue_1.Size = UDim2.new(0, 74,0, 22)
			SliderValue_1.Font = Enum.Font.FredokaOne
			SliderValue_1.Text = "0"
			SliderValue_1.TextColor3 = Color3.fromRGB(255,255,255)
			SliderValue_1.TextSize = 16
			SliderValue_1.TextXAlignment = Enum.TextXAlignment.Right

			UIPadding_7.Parent = SliderValue_1
			UIPadding_7.PaddingRight = UDim.new(0,7)
			UIPadding_7.PaddingTop = UDim.new(0,3)

			SliderHolder_1.Name = "SliderHolder"
			SliderHolder_1.Parent = Slider_1
			SliderHolder_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SliderHolder_1.BackgroundTransparency = 1
			SliderHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderHolder_1.BorderSizePixel = 0
			SliderHolder_1.Position = UDim2.new(0.0250000004, 0,0.550000012, 0)
			SliderHolder_1.Size = UDim2.new(0, 269,0, 15)

			UICorner_11.Parent = SliderHolder_1
			UICorner_11.CornerRadius = UDim.new(0,7)

			UIStroke_11.Parent = SliderHolder_1
			UIStroke_11.Color = Color3.fromRGB(178,178,178)
			UIStroke_11.Thickness = 1

			SliderBtn_1.Name = "SliderBtn"
			SliderBtn_1.Parent = SliderHolder_1
			SliderBtn_1.Active = true
			SliderBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			SliderBtn_1.BackgroundTransparency = 1
			SliderBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderBtn_1.BorderSizePixel = 0
			SliderBtn_1.Size = UDim2.new(0, 269,0, 15)
			SliderBtn_1.Font = Enum.Font.SourceSans
			SliderBtn_1.Text = ""
			SliderBtn_1.TextSize = 14

			SliderInner_1.Name = "SliderInner"
			SliderInner_1.Parent = SliderBtn_1
			SliderInner_1.BackgroundColor3 = Color3.fromRGB(128,128,128)
			SliderInner_1.BorderColor3 = Color3.fromRGB(0,0,0)
			SliderInner_1.BorderSizePixel = 0
			SliderInner_1.Position = UDim2.new(-2.26896489e-07, 0,0, 0)
			SliderInner_1.Size = UDim2.new(0, 0,0, 15)

			UICorner_12.Parent = SliderInner_1
			UICorner_12.CornerRadius = UDim.new(0,7)
			
			local isDragging = false

			SliderBtn_1.InputBegan:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					isDragging = true
				end
			end)

			game:GetService("UserInputService").InputEnded:Connect(function(input)
				if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
					isDragging = false
				end
			end)

			game:GetService("RunService").RenderStepped:Connect(function()
				if isDragging then
					local mousePosition = game:GetService("UserInputService"):GetMouseLocation()
					local sliderPosition = SliderBtn_1.AbsolutePosition
					local sliderWidth = SliderBtn_1.AbsoluteSize.X
					local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)
					SliderInner_1.Size = UDim2.new(0, fillWidth, 1, 0)

					-- Calculate and display value label
					local value = fillWidth / sliderWidth
					local minValue = 0
					local maxValue = max
					local displayValue = math.floor(minValue + (maxValue - minValue) * value, 2)
					SliderValue_1.Text = tostring(displayValue)
					Callback(displayValue)
				end
			end)
		end
		function Elements:CreateBox(BoxText,Callback)
			local Box_1 = Instance.new("Frame")
			local UICorner_13 = Instance.new("UICorner")
			local UIStroke_12 = Instance.new("UIStroke")
			local BoxText_1 = Instance.new("TextLabel")
			local UIPadding_8 = Instance.new("UIPadding")
			local BoxHolder_1 = Instance.new("Frame")
			local UICorner_14 = Instance.new("UICorner")
			local UIStroke_13 = Instance.new("UIStroke")
			local TextBox_1 = Instance.new("TextBox")
			local UIPadding_9 = Instance.new("UIPadding")
			
			Box_1.Name = "Box"
			Box_1.Parent = ScrollingFrame_1
			Box_1.BackgroundColor3 = Color3.fromRGB(39,39,39)
			Box_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Box_1.BorderSizePixel = 0
			Box_1.Position = UDim2.new(-0.0100671137, 0,-0.00485436898, 0)
			Box_1.Size = UDim2.new(0, 283,0, 29)

			UICorner_13.Parent = Box_1
			UICorner_13.CornerRadius = UDim.new(0,7)

			UIStroke_12.Parent = Box_1
			UIStroke_12.Color = Color3.fromRGB(178,178,178)
			UIStroke_12.Thickness = 1

			BoxText_1.Name = "BoxText"
			BoxText_1.Parent = Box_1
			BoxText_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			BoxText_1.BackgroundTransparency = 1
			BoxText_1.BorderColor3 = Color3.fromRGB(0,0,0)
			BoxText_1.BorderSizePixel = 0
			BoxText_1.Size = UDim2.new(0, 191,0, 29)
			BoxText_1.Font = Enum.Font.FredokaOne
			BoxText_1.Text = BoxText
			BoxText_1.TextColor3 = Color3.fromRGB(255,255,255)
			BoxText_1.TextSize = 16
			BoxText_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_8.Parent = BoxText_1
			UIPadding_8.PaddingLeft = UDim.new(0,7)

			BoxHolder_1.Name = "BoxHolder"
			BoxHolder_1.Parent = Box_1
			BoxHolder_1.BackgroundColor3 = Color3.fromRGB(25,25,25)
			BoxHolder_1.BorderColor3 = Color3.fromRGB(0,0,0)
			BoxHolder_1.BorderSizePixel = 0
			BoxHolder_1.Position = UDim2.new(0.674911678, 0,0.206896558, 0)
			BoxHolder_1.Size = UDim2.new(0, 84,0, 16)

			UICorner_14.Parent = BoxHolder_1
			UICorner_14.CornerRadius = UDim.new(0,7)

			UIStroke_13.Parent = BoxHolder_1
			UIStroke_13.Color = Color3.fromRGB(178,178,178)
			UIStroke_13.Thickness = 1

			TextBox_1.Parent = BoxHolder_1
			TextBox_1.Active = true
			TextBox_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			TextBox_1.BackgroundTransparency = 1
			TextBox_1.BorderColor3 = Color3.fromRGB(0,0,0)
			TextBox_1.BorderSizePixel = 0
			TextBox_1.Size = UDim2.new(0, 84,0, 16)
			TextBox_1.ClipsDescendants = true
			TextBox_1.Font = Enum.Font.FredokaOne
			TextBox_1.PlaceholderColor3 = Color3.fromRGB(255,255,255)
			TextBox_1.PlaceholderText = ""
			TextBox_1.Text = "..."
			TextBox_1.TextColor3 = Color3.fromRGB(255,255,255)
			TextBox_1.TextSize = 13

			UIPadding_9.Parent = TextBox_1
			UIPadding_9.PaddingLeft = UDim.new(0,3)
			UIPadding_9.PaddingRight = UDim.new(0,3)
			
			TextBox_1.FocusLost:Connect(function()
				print(TextBox_1.Text)
			end)
		end
		function Elements:CreateToggle(ToggleText,Callback)
			Callback = Callback or function()
			end

			local toggled = false
			local debounce = false

			local targetToggleColorOn = Color3.fromRGB(128,128,128)
			local targetToggleColorOff = Color3.fromRGB(25,25,25)
			
			local Toggle_1 = Instance.new("Frame")
			local UICorner_5 = Instance.new("UICorner")
			local UIStroke_5 = Instance.new("UIStroke")
			local ToggleBtn_1 = Instance.new("TextButton")
			local UIPadding_4 = Instance.new("UIPadding")
			local Toggler_1 = Instance.new("Frame")
			local UICorner_6 = Instance.new("UICorner")
			local UIStroke_6 = Instance.new("UIStroke")
			
			Toggle_1.Name = "Toggle"
			Toggle_1.Parent = ScrollingFrame_1
			Toggle_1.BackgroundColor3 = Color3.fromRGB(39,39,39)
			Toggle_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Toggle_1.BorderSizePixel = 0
			Toggle_1.Position = UDim2.new(-0.0100671137, 0,-0.00485436898, 0)
			Toggle_1.Size = UDim2.new(0, 283,0, 29)

			UICorner_5.Parent = Toggle_1
			UICorner_5.CornerRadius = UDim.new(0,7)

			UIStroke_5.Parent = Toggle_1
			UIStroke_5.Color = Color3.fromRGB(178,178,178)
			UIStroke_5.Thickness = 1

			ToggleBtn_1.Name = "ToggleBtn"
			ToggleBtn_1.Parent = Toggle_1
			ToggleBtn_1.BackgroundColor3 = Color3.fromRGB(255,255,255)
			ToggleBtn_1.BackgroundTransparency = 1
			ToggleBtn_1.BorderColor3 = Color3.fromRGB(0,0,0)
			ToggleBtn_1.BorderSizePixel = 0
			ToggleBtn_1.Size = UDim2.new(0, 283,0, 29)
			ToggleBtn_1.Font = Enum.Font.FredokaOne
			ToggleBtn_1.Text = ToggleText
			ToggleBtn_1.TextColor3 = Color3.fromRGB(255,255,255)
			ToggleBtn_1.TextSize = 16
			ToggleBtn_1.TextXAlignment = Enum.TextXAlignment.Left

			UIPadding_4.Parent = ToggleBtn_1
			UIPadding_4.PaddingLeft = UDim.new(0,7)

			Toggler_1.Name = "Toggler"
			Toggler_1.Parent = Toggle_1
			Toggler_1.BackgroundColor3 = Color3.fromRGB(25,25,25)
			Toggler_1.BorderColor3 = Color3.fromRGB(0,0,0)
			Toggler_1.BorderSizePixel = 0
			Toggler_1.Position = UDim2.new(0.91166079, 0,0.206896558, 0)
			Toggler_1.Size = UDim2.new(0, 17,0, 17)

			UICorner_6.Parent = Toggler_1

			UIStroke_6.Parent = Toggler_1
			UIStroke_6.Color = Color3.fromRGB(178,178,178)
			UIStroke_6.Thickness = 1
			
			local tweenInfo = TweenInfo.new(0.2)

			local tweentcon = TweenService:Create(Toggler_1, tweenInfo, {BackgroundColor3 = targetToggleColorOn})
			local tweentcoff = TweenService:Create(Toggler_1, tweenInfo, {BackgroundColor3 = targetToggleColorOff})

			ToggleBtn_1.MouseButton1Click:Connect(function()
				if debounce == false then
					if toggled == false then
						debounce = true
						tweentcon:Play()
						debounce = false
						toggled = true
						pcall(Callback, toggled)
					elseif toggled == true then
						debounce = true
						tweentcoff:Play()
						debounce = false
						toggled = false
						pcall(Callback, toggled)
					end
				end
			end)
		end
		return Elements
	end
	return Tabs
end
  return Library
