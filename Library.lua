-- by 018x27
-- dont skid without permissions

local TweenService = game:GetService("TweenService")





local Library = {}



function Library:CreateWindow(GameName)

     if game.CoreGui:FindFirstChild("BruteHub") then

          game.CoreGui:FindFirstChild("BruteHub"):Destroy()

     end



     local BruteHub = Instance.new("ScreenGui")

     local MainHolder_1 = Instance.new("Frame")

     local UICorner_1 = Instance.new("UICorner")

     local ElementsHolder_1 = Instance.new("Frame")

     local UICorner_2 = Instance.new("UICorner")

     local CloseBtnHolder_1 = Instance.new("Frame")

     local CloseBtn_1 = Instance.new("TextButton")

     local TopBar_1 = Instance.new("Frame")

     local UICorner_11 = Instance.new("UICorner")

     local TitleTxt_1 = Instance.new("TextLabel")

     local UIPadding_6 = Instance.new("UIPadding")

     local GameNameTxt_1 = Instance.new("TextLabel")

     local UIPadding_7 = Instance.new("UIPadding")

     local InBetweenTxt_1 = Instance.new("TextLabel")

     local UIPadding_8 = Instance.new("UIPadding")

     local ToggleGUIHolder_1 = Instance.new("Frame")

     local UICorner_12 = Instance.new("UICorner")

     local ToggleGUI_1 = Instance.new("TextButton")

     local UIPadding_9 = Instance.new("UIPadding")

     local TabsHolder_1 = Instance.new("Frame")

     local UICorner_10 = Instance.new("UICorner")

     local Tabs_1 = Instance.new("ScrollingFrame")

     local UIPadding_5 = Instance.new("UIPadding")

     local UIListLayout_2 = Instance.new("UIListLayout")



     -- OPEN GUI

     local targetPositionOpen = UDim2.new(0.5, 0, 0.5, 0)

     local tweenInfoOpen = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

     local tweenOpen = TweenService:Create(MainHolder_1, tweenInfoOpen, { Position = targetPositionOpen })





     -- CLOSE GUI

     local targetPositionClose = UDim2.new(0.5, 0, 1.5, 0)

     local tweenInfoClose = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

     local tweenClose = TweenService:Create(MainHolder_1, tweenInfoClose, { Position = targetPositionClose })





     -- OPEN BTN

     local targetPositionOpenBtn = UDim2.new(0.5, 0, 0.02, 0)

     local tweenInfoOpenBtn = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

     local tweenOpenBtn = TweenService:Create(ToggleGUIHolder_1, tweenInfoOpenBtn, { Position = targetPositionOpenBtn })





     -- CLOSE BTN

     local targetPositionCloseBtn = UDim2.new(0.5, 0, -0.5, 0)

     local tweenInfoCloseBtn = TweenInfo.new(0.5, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out)

     local tweenCloseBtn = TweenService:Create(ToggleGUIHolder_1, tweenInfoCloseBtn, { Position = targetPositionCloseBtn })



     -- OPEN BTN ANIM

     local targetColorClickOn = Color3.fromRGB(80,80,80)

     local targetColorClickOff = Color3.fromRGB(10,10,10)

     local tweenInfoOpen = TweenInfo.new(0.2)

     local targetClickOn = TweenService:Create(ToggleGUIHolder_1, tweenInfoOpen, {BackgroundColor3 = targetColorClickOn})

     local targetClickOff = TweenService:Create(ToggleGUIHolder_1, tweenInfoOpen, {BackgroundColor3 = targetColorClickOff})



     -- CLOSE BTN ANIM

     local targetColorClickOn = Color3.fromRGB(40,40,40)

     local targetColorClickOff = Color3.fromRGB(110,110,110)

     local tweenInfoClose = TweenInfo.new(0.2)

     local targetClickCloseOn = TweenService:Create(CloseBtn_1, tweenInfoClose, {TextColor3 = targetColorClickOn})

     local targetClickCloseOff = TweenService:Create(CloseBtn_1, tweenInfoClose, {TextColor3 = targetColorClickOff})



     BruteHub.Name = "BruteHub"

     BruteHub.Parent = game.CoreGui

     BruteHub.Enabled = true

     BruteHub.ResetOnSpawn = false



     MainHolder_1.Name = "MainHolder"

     MainHolder_1.Parent = BruteHub

     MainHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)

     MainHolder_1.BackgroundColor3 = Color3.fromRGB(20,20,20)

     MainHolder_1.BackgroundTransparency = 0.2

     MainHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     MainHolder_1.Position = UDim2.new(0.5, 0, 1.5, 0)

     MainHolder_1.Size = UDim2.new(0, 319, 0, 234)

     MainHolder_1.Visible = true

     MainHolder_1.Active = true

     MainHolder_1.Draggable = true



     UICorner_1.Parent = MainHolder_1

     UICorner_1.CornerRadius = UDim.new(0, 10)



     ElementsHolder_1.Name = "ElementsHolder"

     ElementsHolder_1.Parent = MainHolder_1

     ElementsHolder_1.BackgroundColor3 = Color3.fromRGB(20,20,20)

     ElementsHolder_1.BackgroundTransparency = 1

     ElementsHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     ElementsHolder_1.Position = UDim2.new(0.031347964, 0, 0.205128208, 0)

     ElementsHolder_1.Size = UDim2.new(0, 254, 0, 174)



     CloseBtnHolder_1.Name = "CloseBtnHolder"

     CloseBtnHolder_1.Parent = TabsHolder_1

     CloseBtnHolder_1.BackgroundColor3 = Color3.fromRGB(20,20,20)

     CloseBtnHolder_1.BackgroundTransparency = 1

     CloseBtnHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     CloseBtnHolder_1.Position = UDim2.new(0.0290167388, 0, 0.00632980652, 0)

     CloseBtnHolder_1.Size = UDim2.new(0, 37, 0, 34)



     CloseBtn_1.Name = "CloseBtn"

     CloseBtn_1.Parent = CloseBtnHolder_1

     CloseBtn_1.Active = true

     CloseBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)

     CloseBtn_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     CloseBtn_1.BackgroundTransparency = 1

     CloseBtn_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     CloseBtn_1.BorderSizePixel = 0

     CloseBtn_1.Position = UDim2.new(0.5, 0, 0.5, 0)

     CloseBtn_1.Size = UDim2.new(0, 39, 0, 36)

     CloseBtn_1.Font = Enum.Font.FredokaOne

     CloseBtn_1.Text = "X"

     CloseBtn_1.TextColor3 = Color3.fromRGB(110,110,110)

     CloseBtn_1.TextSize = 36

     CloseBtn_1.MouseButton1Click:Connect(

     function()

          targetClickCloseOn:Play()

          wait(0.1)

          targetClickCloseOff:Play()

          wait(0.1)

          tweenClose:Play()

          tweenOpenBtn:Play()

     end

     )



     TopBar_1.Name = "TopBar"

     TopBar_1.Parent = MainHolder_1

     TopBar_1.BackgroundColor3 = Color3.fromRGB(10,10,10)

     TopBar_1.BackgroundTransparency = 0.2

     TopBar_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     TopBar_1.Position = UDim2.new(0.031347964, 0, 0.051282052, 0)

     TopBar_1.Size = UDim2.new(0, 254, 0, 30)



     UICorner_11.Parent = TopBar_1

     UICorner_11.CornerRadius = UDim.new(0, 10)



     TitleTxt_1.Name = "TitleTxt"

     TitleTxt_1.Parent = TopBar_1

     TitleTxt_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     TitleTxt_1.BackgroundTransparency = 1

     TitleTxt_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     TitleTxt_1.BorderSizePixel = 0

     TitleTxt_1.Position = UDim2.new(0, 0, 0.13333334, 0)

     TitleTxt_1.Size = UDim2.new(0, 93, 0, 22)

     TitleTxt_1.Font = Enum.Font.FredokaOne

     TitleTxt_1.Text = "Brute Hub"

     TitleTxt_1.TextColor3 = Color3.fromRGB(180,180,180)

     TitleTxt_1.TextSize = 14

     TitleTxt_1.TextXAlignment = Enum.TextXAlignment.Left



     UIPadding_6.Parent = TitleTxt_1

     UIPadding_6.PaddingLeft = UDim.new(0, 5)



     GameNameTxt_1.Name = "GameNameTxt"

     GameNameTxt_1.Parent = TopBar_1

     GameNameTxt_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     GameNameTxt_1.BackgroundTransparency = 1

     GameNameTxt_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     GameNameTxt_1.BorderSizePixel = 0

     GameNameTxt_1.Position = UDim2.new(0.30, 0, 0.13, 0)

     GameNameTxt_1.Size = UDim2.new(0, 180, 0, 22)

     GameNameTxt_1.Font = Enum.Font.FredokaOne

     GameNameTxt_1.Text = GameName

     GameNameTxt_1.TextColor3 = Color3.fromRGB(180,180,180)

     GameNameTxt_1.TextSize = 14

     GameNameTxt_1.TextXAlignment = Enum.TextXAlignment.Left



     UIPadding_7.Parent = GameNameTxt_1

     UIPadding_7.PaddingRight = UDim.new(0, 5)



     InBetweenTxt_1.Name = "InBetweenTxt"

     InBetweenTxt_1.Parent = TopBar_1

     InBetweenTxt_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     InBetweenTxt_1.BackgroundTransparency = 1

     InBetweenTxt_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     InBetweenTxt_1.BorderSizePixel = 0

     InBetweenTxt_1.Position = UDim2.new(0.25,0, 0.1, 0)

     InBetweenTxt_1.Size = UDim2.new(0, 11, 0, 22)

     InBetweenTxt_1.Font = Enum.Font.FredokaOne

     InBetweenTxt_1.Text = "|"

     InBetweenTxt_1.TextColor3 = Color3.fromRGB(180,180,180)

     InBetweenTxt_1.TextSize = 14

     InBetweenTxt_1.TextXAlignment = Enum.TextXAlignment.Left



     UIPadding_8.Parent = InBetweenTxt_1

     UIPadding_8.PaddingLeft = UDim.new(0, 5)



     ToggleGUIHolder_1.Name = "ToggleGUIHolder"

     ToggleGUIHolder_1.Parent = BruteHub

     ToggleGUIHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)

     ToggleGUIHolder_1.BackgroundColor3 = Color3.fromRGB(10,10,10)

     ToggleGUIHolder_1.BackgroundTransparency = 0

     ToggleGUIHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     ToggleGUIHolder_1.Position = UDim2.new(0.5, 0, 0.02, 0)

     ToggleGUIHolder_1.Size = UDim2.new(0, 26, 0, 26)

     ToggleGUIHolder_1.Visible = true

     ToggleGUIHolder_1.Active = true



     UICorner_12.Parent = ToggleGUIHolder_1

     UICorner_12.CornerRadius = UDim.new(0, 10)



     ToggleGUI_1.Name = "ToggleGUI"

     ToggleGUI_1.Parent = ToggleGUIHolder_1

     ToggleGUI_1.Active = true

     ToggleGUI_1.AnchorPoint = Vector2.new(0.5, 0.5)

     ToggleGUI_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     ToggleGUI_1.BackgroundTransparency = 1

     ToggleGUI_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     ToggleGUI_1.BorderSizePixel = 0

     ToggleGUI_1.Position = UDim2.new(0.5, 0, 0.5, 0)

     ToggleGUI_1.Size = UDim2.new(0, 26, 0, 26)

     ToggleGUI_1.Font = Enum.Font.FredokaOne

     ToggleGUI_1.Text = ""

     ToggleGUI_1.TextColor3 = Color3.fromRGB(180,180,180)

     ToggleGUI_1.TextScaled = true

     ToggleGUI_1.TextSize = 50

     ToggleGUI_1.TextWrapped = true

     ToggleGUI_1.MouseButton1Click:Connect(

     function()

          targetClickOn:Play()

          wait(0.1)

          targetClickOff:Play()

          wait(0.1)

          tweenCloseBtn:Play()

          tweenOpen:Play()

     end

     )



     UIPadding_9.Parent = ToggleGUI_1

     UIPadding_9.PaddingBottom = UDim.new(0, 7)



     TabsHolder_1.Name = "TabsHolder"

     TabsHolder_1.Parent = MainHolder_1

     TabsHolder_1.BackgroundColor3 = Color3.fromRGB(10,10,10)

     TabsHolder_1.BackgroundTransparency = 0.2

     TabsHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     TabsHolder_1.Position = UDim2.new(0.849529803, 0, 0.0427350439, 0)

     TabsHolder_1.Size = UDim2.new(0, 39, 0, 212)



     UICorner_10.Parent = TabsHolder_1

     UICorner_10.CornerRadius = UDim.new(0, 10)



     Tabs_1.Name = "Tabs"

     Tabs_1.Parent = TabsHolder_1

     Tabs_1.Active = true

     Tabs_1.AnchorPoint = Vector2.new(0.5, 0.5)

     Tabs_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     Tabs_1.BackgroundTransparency = 1

     Tabs_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     Tabs_1.BorderSizePixel = 0

     Tabs_1.Position = UDim2.new(0.5, 0, 0.589622617, 0)

     Tabs_1.Size = UDim2.new(0, 39, 0, 172)

     Tabs_1.ClipsDescendants = true

     Tabs_1.AutomaticCanvasSize = Enum.AutomaticSize.Y

     Tabs_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"

     Tabs_1.CanvasPosition = Vector2.new(0, 0)

     Tabs_1.CanvasSize = UDim2.new(0, 0, 0.5, 0)

     Tabs_1.ElasticBehavior = Enum.ElasticBehavior.Never

     Tabs_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None

     Tabs_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

     Tabs_1.ScrollBarImageColor3 = Color3.fromRGB(20,20,20)

     Tabs_1.ScrollBarImageTransparency = 1

     Tabs_1.ScrollBarThickness = 1

     Tabs_1.ScrollingDirection = Enum.ScrollingDirection.Y

     Tabs_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"

     Tabs_1.VerticalScrollBarInset = Enum.ScrollBarInset.None

     Tabs_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right



     UIPadding_5.Parent = Tabs_1

     UIPadding_5.PaddingBottom = UDim.new(0, 2)

     UIPadding_5.PaddingTop = UDim.new(0, 2)



     UIListLayout_2.Parent = Tabs_1

     UIListLayout_2.Padding = UDim.new(0, 7)

     UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder



     function Library:CreatePopup(Title, Text)

          local PopupHolder_1 = Instance.new("Frame")

          local UICorner_1 = Instance.new("UICorner")

          local PopupTitleHolder_1 = Instance.new("Frame")

          local UICorner_2 = Instance.new("UICorner")

          local PopupTitle_1 = Instance.new("TextLabel")

          local UIPadding_1 = Instance.new("UIPadding")

          local PopupTextHolder_1 = Instance.new("Frame")

          local UICorner_3 = Instance.new("UICorner")

          local PopupText_1 = Instance.new("TextLabel")

          local UIPadding_2 = Instance.new("UIPadding")



          local targetPosition1 = UDim2.new(0.85, 0, 0.86, 0)

          local tweenInfo1 = TweenInfo.new(2, Enum.EasingStyle.Exponential)

          local tween1 = TweenService:Create(PopupHolder_1, tweenInfo1, {Position = targetPosition1})

          local targetPosition2 = UDim2.new(1.2, 0, 0.86, 0)

          local tweenInfo2 = TweenInfo.new(2, Enum.EasingStyle.Exponential)

          local tween2 = TweenService:Create(PopupHolder_1, tweenInfo2, {Position = targetPosition2})



          PopupHolder_1.Name = "PopupHolder"

          PopupHolder_1.Parent = BruteHub

          PopupHolder_1.AnchorPoint = Vector2.new(0.5, 0.5)

          PopupHolder_1.BackgroundColor3 = Color3.fromRGB(0,0,0)

          PopupHolder_1.BackgroundTransparency = 0.2

          PopupHolder_1.BorderColor3 = Color3.fromRGB(20,20,20)

          PopupHolder_1.BorderSizePixel = 0

          PopupHolder_1.Position = UDim2.new(1.2, 0, 0.86, 0)

          PopupHolder_1.Size = UDim2.new(0, 210, 0, 85)

          PopupHolder_1.Active = true

          PopupHolder_1.Visible = true



          UICorner_1.Parent = PopupHolder_1

          UICorner_1.CornerRadius = UDim.new(0, 10)



          PopupTitleHolder_1.Name = "PopupTitleHolder"

          PopupTitleHolder_1.Parent = PopupHolder_1

          PopupTitleHolder_1.BackgroundColor3 = Color3.fromRGB(10,10,10)

          PopupTitleHolder_1.BackgroundTransparency = 0.2

          PopupTitleHolder_1.BorderColor3 = Color3.fromRGB(20,20,20)

          PopupTitleHolder_1.BorderSizePixel = 0

          PopupTitleHolder_1.Position = UDim2.new(0.0270281732, 0, 0.0742662847, 0)

          PopupTitleHolder_1.Size = UDim2.new(0, 197, 0, 26)



          UICorner_2.Parent = PopupTitleHolder_1

          UICorner_2.CornerRadius = UDim.new(0, 10)



          PopupTitle_1.Name = "PopupTitle"

          PopupTitle_1.Parent = PopupTitleHolder_1

          PopupTitle_1.AnchorPoint = Vector2.new(0.5, 0.5)

          PopupTitle_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

          PopupTitle_1.BackgroundTransparency = 1

          PopupTitle_1.BorderColor3 = Color3.fromRGB(20,20,20)

          PopupTitle_1.BorderSizePixel = 0

          PopupTitle_1.Position = UDim2.new(0.5, 0, 0.5, 0)

          PopupTitle_1.Size = UDim2.new(0, 197, 0, 26)

          PopupTitle_1.Font = Enum.Font.FredokaOne

          PopupTitle_1.Text = Title

          PopupTitle_1.TextColor3 = Color3.fromRGB(180,180,180)

          PopupTitle_1.TextSize = 14

          PopupTitle_1.TextXAlignment = Enum.TextXAlignment.Left



          UIPadding_1.Parent = PopupTitle_1

          UIPadding_1.PaddingLeft = UDim.new(0, 6)



          PopupTextHolder_1.Name = "PopupTextHolder"

          PopupTextHolder_1.Parent = PopupHolder_1

          PopupTextHolder_1.BackgroundColor3 = Color3.fromRGB(10,10,10)

          PopupTextHolder_1.BackgroundTransparency = 0.2

          PopupTextHolder_1.BorderColor3 = Color3.fromRGB(20,20,20)

          PopupTextHolder_1.BorderSizePixel = 0

          PopupTextHolder_1.Position = UDim2.new(0.0270000007, 0, 0.449999988, 0)

          PopupTextHolder_1.Size = UDim2.new(0, 197, 0, 40)



          UICorner_3.Parent = PopupTextHolder_1

          UICorner_3.CornerRadius = UDim.new(0, 10)



          PopupText_1.Name = "PopupText"

          PopupText_1.Parent = PopupTextHolder_1

          PopupText_1.AnchorPoint = Vector2.new(0.5, 0.5)

          PopupText_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

          PopupText_1.BackgroundTransparency = 1

          PopupText_1.BorderColor3 = Color3.fromRGB(10,10,10)

          PopupText_1.BorderSizePixel = 0

          PopupText_1.Position = UDim2.new(0.5, 0, 0.5, 0)

          PopupText_1.Size = UDim2.new(0, 197, 0, 40)

          PopupText_1.Font = Enum.Font.FredokaOne

          PopupText_1.Text = Text

          PopupText_1.TextColor3 = Color3.fromRGB(180,180,180)

          PopupText_1.TextSize = 12

          PopupText_1.TextWrapped = true

          PopupText_1.TextXAlignment = Enum.TextXAlignment.Left

          PopupText_1.TextYAlignment = Enum.TextYAlignment.Top



          UIPadding_2.Parent = PopupText_1

          UIPadding_2.PaddingBottom = UDim.new(0, 6)

          UIPadding_2.PaddingLeft = UDim.new(0, 6)

          UIPadding_2.PaddingRight = UDim.new(0, 6)

          UIPadding_2.PaddingTop = UDim.new(0, 6)



          local targetPosition1 = UDim2.new(0.85, 0, 0.86, 0)

          local tweenInfo1 = TweenInfo.new(2, Enum.EasingStyle.Exponential)

          local tween1 = TweenService:Create(PopupHolder_1, tweenInfo1, {Position = targetPosition1})

          local targetPosition2 = UDim2.new(1.2, 0, 0.86, 0)

          local tweenInfo2 = TweenInfo.new(2, Enum.EasingStyle.Exponential)

          local tween2 = TweenService:Create(PopupHolder_1, tweenInfo2, {Position = targetPosition2})



          tween1:Play()

          wait(3.5)

          tween2:Play()

     end



     local Tabs = {}



     local first = true

     local currentTab = nil



     function Tabs:CreateTab(ImageID)

          local targetTabColorOn = Color3.fromRGB(40,40,40)

          local targetTabColorOff = Color3.fromRGB(180,180,180)



          local Elements_1 = Instance.new("Frame")

          local UICorner_3 = Instance.new("UICorner")

          local Items_1 = Instance.new("ScrollingFrame")

          local TabBtnHolder_1 = Instance.new("Frame")

          local TabBtn_1 = Instance.new("ImageButton")

          local UIListLayout_1 = Instance.new("UIListLayout")

          local UIPadding_1 = Instance.new("UIPadding")



          Elements_1.Name = "Elements"

          Elements_1.Parent = ElementsHolder_1

          Elements_1.AnchorPoint = Vector2.new(0.5, 0.5)

          Elements_1.BackgroundColor3 = Color3.fromRGB(10,10,10)

          Elements_1.BackgroundTransparency = 0.2

          Elements_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

          Elements_1.Position = UDim2.new(0.5, 0, 0.5, 0)

          Elements_1.Size = UDim2.new(0, 253, 0, 174)



          UICorner_3.Parent = Elements_1

          UICorner_3.CornerRadius = UDim.new(0, 10)



          Items_1.Name = "Items"

          Items_1.Parent = Elements_1

          Items_1.Active = true

          Items_1.AnchorPoint = Vector2.new(0.5, 0.5)

          Items_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

          Items_1.BackgroundTransparency = 1

          Items_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

          Items_1.BorderSizePixel = 0

          Items_1.Position = UDim2.new(0.5, 0, 0.5, 0)

          Items_1.Size = UDim2.new(0, 253, 0, 174)

          Items_1.ClipsDescendants = true

          Items_1.AutomaticCanvasSize = Enum.AutomaticSize.Y

          Items_1.BottomImage = "rbxasset://textures/ui/Scroll/scroll-bottom.png"

          Items_1.CanvasPosition = Vector2.new(0, 0)

          Items_1.CanvasSize = UDim2.new(0, 0, 0.5, 0)

          Items_1.ElasticBehavior = Enum.ElasticBehavior.Never

          Items_1.HorizontalScrollBarInset = Enum.ScrollBarInset.None

          Items_1.MidImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"

          Items_1.ScrollBarImageColor3 = Color3.fromRGB(20,20,20)

          Items_1.ScrollBarImageTransparency = 1

          Items_1.ScrollBarThickness = 1

          Items_1.ScrollingDirection = Enum.ScrollingDirection.Y

          Items_1.TopImage = "rbxasset://textures/ui/Scroll/scroll-top.png"

          Items_1.VerticalScrollBarInset = Enum.ScrollBarInset.None

          Items_1.VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Right



          TabBtnHolder_1.Name = "TabBtnHolder"

          TabBtnHolder_1.Parent = Tabs_1

          TabBtnHolder_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

          TabBtnHolder_1.BackgroundTransparency = 1

          TabBtnHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

          TabBtnHolder_1.BorderSizePixel = 0

          TabBtnHolder_1.Size = UDim2.new(0, 39, 0, 36)



          TabBtn_1.Name = "TabBtn"

          TabBtn_1.Parent = TabBtnHolder_1

          TabBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)

          TabBtn_1.BackgroundColor3 = Color3.fromRGB(20,20,20)

          TabBtn_1.BackgroundTransparency = 1

          TabBtn_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

          TabBtn_1.Position = UDim2.new(0.5, 0, 0.5, 0)

          TabBtn_1.Size = UDim2.new(0, 39, 0, 36)

          TabBtn_1.Image = ImageID

          TabBtn_1.ImageColor3 = Color3.fromRGB(180,180,180)



          UIListLayout_1.Parent = Items_1

          UIListLayout_1.Padding = UDim.new(0, 4)

          UIListLayout_1.SortOrder = Enum.SortOrder.LayoutOrder



          UIPadding_1.Parent = Items_1

          UIPadding_1.PaddingBottom = UDim.new(0, 5)

          UIPadding_1.PaddingLeft = UDim.new(0, 5)

          UIPadding_1.PaddingTop = UDim.new(0, 5)



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



          TabBtn_1.MouseButton1Click:Connect(

          function()

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

          end

          )



          local Elements = {}

          function Elements:CreateLabel(LabName)

               local LabelHolder_1 = Instance.new("Frame")

               local UICorner_7 = Instance.new("UICorner")

               local LabelTxt_1 = Instance.new("TextLabel")



               LabelHolder_1.Name = "LabelHolder"

               LabelHolder_1.Parent = Items_1

               LabelHolder_1.BackgroundColor3 = Color3.fromRGB(60,60,60)

               LabelHolder_1.BackgroundTransparency = 1

               LabelHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

               LabelHolder_1.Position = UDim2.new(0.0197628457, 0, 0.339080453, 0)

               LabelHolder_1.Size = UDim2.new(0, 244, 0, 17)



               UICorner_7.Parent = LabelHolder_1

               UICorner_7.CornerRadius = UDim.new(0, 10)



               LabelTxt_1.Name = "LabelTxt"

               LabelTxt_1.Parent = LabelHolder_1

               LabelTxt_1.Active = true

               LabelTxt_1.AnchorPoint = Vector2.new(0.5, 0.5)

               LabelTxt_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

               LabelTxt_1.BackgroundTransparency = 1

               LabelTxt_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

               LabelTxt_1.BorderSizePixel = 0

               LabelTxt_1.Position = UDim2.new(0.5, 0, 0.456521749, 0)

               LabelTxt_1.Size = UDim2.new(0, 244, 0, 17)

               LabelTxt_1.Font = Enum.Font.FredokaOne

               LabelTxt_1.Text = LabName

               LabelTxt_1.TextColor3 = Color3.fromRGB(180,180,180)

               LabelTxt_1.TextSize = 14

          end

          function Elements:CreateButton(ButName, Callback)

               Callback = Callback or function()

          end



          local targetButtonColorOn = Color3.fromRGB(180,180,180)

          local targetButtonColorOff = Color3.fromRGB(40,40,40)



          local ButtonHolder_1 = Instance.new("Frame")

          local UICorner_4 = Instance.new("UICorner")

          local ButtonBtn_1 = Instance.new("TextButton")



          ButtonHolder_1.Name = "ButtonHolder"

          ButtonHolder_1.Parent = Items_1

          ButtonHolder_1.BackgroundColor3 = Color3.fromRGB(40,40,40)

          ButtonHolder_1.BackgroundTransparency = 0.4

          ButtonHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

          ButtonHolder_1.Position = UDim2.new(0.0197628457, 0, 0.0287356321, 0)

          ButtonHolder_1.Size = UDim2.new(0, 244, 0, 23)



          UICorner_4.Parent = ButtonHolder_1

          UICorner_4.CornerRadius = UDim.new(0, 10)



          ButtonBtn_1.Name = "ButtonBtn"

          ButtonBtn_1.Parent = ButtonHolder_1

          ButtonBtn_1.Active = true

          ButtonBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)

          ButtonBtn_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

          ButtonBtn_1.BackgroundTransparency = 1

          ButtonBtn_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

          ButtonBtn_1.BorderSizePixel = 0

          ButtonBtn_1.Position = UDim2.new(0.5, 0, 0.456521749, 0)

          ButtonBtn_1.Size = UDim2.new(0, 244, 0, 21)

          ButtonBtn_1.Font = Enum.Font.FredokaOne

          ButtonBtn_1.Text = ButName

          ButtonBtn_1.TextColor3 = Color3.fromRGB(180,180,180)

          ButtonBtn_1.TextSize = 16



          local tweenInfo = TweenInfo.new(0.2)



          local tweenbon = TweenService:Create(ButtonHolder_1, tweenInfo, {BackgroundColor3 = targetButtonColorOn})

          local tweenboff = TweenService:Create(ButtonHolder_1, tweenInfo, {BackgroundColor3 = targetButtonColorOff})



          ButtonBtn_1.MouseButton1Click:Connect(

          function()

               tweenbon:Play()

               wait(0.1)

               tweenboff:Play()

               Callback()

          end

          )

     end

     function Elements:CreateToggle(TogName, Callback)

          Callback = Callback or function()

     end



     local toggled = false

     local debounce = false



     local targetToggleColorOn = Color3.fromRGB(180,180,180)

     local targetToggleColorOff = Color3.fromRGB(10,10,10)



     local ToggleHolder_1 = Instance.new("Frame")

     local UICorner_5 = Instance.new("UICorner")

     local ToggleBtn_1 = Instance.new("TextButton")

     local UIPadding_2 = Instance.new("UIPadding")

     local Toggler_1 = Instance.new("Frame")

     local UICorner_6 = Instance.new("UICorner")

     local UIPadding_3 = Instance.new("UIPadding")



     ToggleHolder_1.Name = "ToggleHolder"

     ToggleHolder_1.Parent = Items_1

     ToggleHolder_1.BackgroundColor3 = Color3.fromRGB(40,40,40)

     ToggleHolder_1.BackgroundTransparency = 0.4

     ToggleHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     ToggleHolder_1.Position = UDim2.new(0.0197628457, 0, 0.0287356321, 0)

     ToggleHolder_1.Size = UDim2.new(0, 244, 0, 23)



     UICorner_5.Parent = ToggleHolder_1

     UICorner_5.CornerRadius = UDim.new(0, 10)



     ToggleBtn_1.Name = "ToggleBtn"

     ToggleBtn_1.Parent = ToggleHolder_1

     ToggleBtn_1.Active = true

     ToggleBtn_1.AnchorPoint = Vector2.new(0.5, 0.5)

     ToggleBtn_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     ToggleBtn_1.BackgroundTransparency = 1

     ToggleBtn_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     ToggleBtn_1.BorderSizePixel = 0

     ToggleBtn_1.Position = UDim2.new(0.5, 0, 0.456521749, 0)

     ToggleBtn_1.Size = UDim2.new(0, 244, 0, 21)

     ToggleBtn_1.Font = Enum.Font.FredokaOne

     ToggleBtn_1.Text = TogName

     ToggleBtn_1.TextColor3 = Color3.fromRGB(180,180,180)

     ToggleBtn_1.TextSize = 16

     ToggleBtn_1.TextXAlignment = Enum.TextXAlignment.Left



     UIPadding_2.Parent = ToggleBtn_1

     UIPadding_2.PaddingLeft = UDim.new(0, 10)



     Toggler_1.Name = "Toggler"

     Toggler_1.Parent = ToggleHolder_1

     Toggler_1.BackgroundColor3 = Color3.fromRGB(10,10,10)

     Toggler_1.BackgroundTransparency = 0.2

     Toggler_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     Toggler_1.Position = UDim2.new(0.942986131, 0, 0.130434781, 0)

     Toggler_1.Size = UDim2.new(0, 17, 0, 17)



     UICorner_6.Parent = Toggler_1

     UICorner_6.CornerRadius = UDim.new(0, 10)



     UIPadding_3.Parent = ToggleHolder_1

     UIPadding_3.PaddingRight = UDim.new(0, 7)



     local tweenInfo = TweenInfo.new(0.2)



     local tweentcon = TweenService:Create(Toggler_1, tweenInfo, {BackgroundColor3 = targetToggleColorOn})

     local tweentcoff = TweenService:Create(Toggler_1, tweenInfo, {BackgroundColor3 = targetToggleColorOff})



     ToggleBtn_1.MouseButton1Click:Connect(

     function()

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

     end

     )

end

function Elements:CreateBox(BoxName, Callback)

     local BoxHolder_1 = Instance.new("Frame")

     local UICorner_8 = Instance.new("UICorner")

     local ButtonBtn_2 = Instance.new("TextLabel")

     local UIPadding_4 = Instance.new("UIPadding")

     local BoxHolder_2 = Instance.new("Frame")

     local UICorner_9 = Instance.new("UICorner")

     local BoxInput_1 = Instance.new("TextBox")



     BoxHolder_1.Name = "BoxHolder"

     BoxHolder_1.Parent = Items_1

     BoxHolder_1.BackgroundColor3 = Color3.fromRGB(40,40,40)

     BoxHolder_1.BackgroundTransparency = 0.4

     BoxHolder_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     BoxHolder_1.Position = UDim2.new(0.0197628457, 0, 0.0287356321, 0)

     BoxHolder_1.Size = UDim2.new(0, 244, 0, 23)



     UICorner_8.Parent = BoxHolder_1

     UICorner_8.CornerRadius = UDim.new(0, 10)



     ButtonBtn_2.Name = "ButtonBtn"

     ButtonBtn_2.Parent = BoxHolder_1

     ButtonBtn_2.Active = true

     ButtonBtn_2.AnchorPoint = Vector2.new(0.5, 0.5)

     ButtonBtn_2.BackgroundColor3 = Color3.fromRGB(180,180,180)

     ButtonBtn_2.BackgroundTransparency = 1

     ButtonBtn_2.BorderColor3 = Color3.fromRGB(27, 42, 53)

     ButtonBtn_2.BorderSizePixel = 0

     ButtonBtn_2.Position = UDim2.new(0.323770493, 0, 0.456521749, 0)

     ButtonBtn_2.Size = UDim2.new(0, 158, 0, 21)

     ButtonBtn_2.Font = Enum.Font.FredokaOne

     ButtonBtn_2.Text = BoxName

     ButtonBtn_2.TextColor3 = Color3.fromRGB(180,180,180)

     ButtonBtn_2.TextSize = 16

     ButtonBtn_2.TextXAlignment = Enum.TextXAlignment.Left



     UIPadding_4.Parent = ButtonBtn_2

     UIPadding_4.PaddingLeft = UDim.new(0, 7)



     BoxHolder_2.Name = "BoxHolder"

     BoxHolder_2.Parent = BoxHolder_1

     BoxHolder_2.BackgroundColor3 = Color3.fromRGB(10,10,10)

     BoxHolder_2.BackgroundTransparency = 0.2

     BoxHolder_2.BorderColor3 = Color3.fromRGB(27, 42, 53)

     BoxHolder_2.Position = UDim2.new(0.676229537, 0, 0.0869565234, 0)

     BoxHolder_2.Size = UDim2.new(0, 75, 0, 17)



     UICorner_9.Parent = BoxHolder_2

     UICorner_9.CornerRadius = UDim.new(0, 10)



     BoxInput_1.Name = "BoxInput"

     BoxInput_1.Parent = BoxHolder_2

     BoxInput_1.Active = true

     BoxInput_1.AnchorPoint = Vector2.new(0.5, 0.5)

     BoxInput_1.BackgroundColor3 = Color3.fromRGB(180,180,180)

     BoxInput_1.BackgroundTransparency = 1

     BoxInput_1.BorderColor3 = Color3.fromRGB(27, 42, 53)

     BoxInput_1.BorderSizePixel = 0

     BoxInput_1.CursorPosition = -1

     BoxInput_1.Position = UDim2.new(0.5, 0, 0.5, 0)

     BoxInput_1.Size = UDim2.new(0, 75, 0, 17)

     BoxInput_1.Font = Enum.Font.FredokaOne

     BoxInput_1.PlaceholderColor3 = Color3.fromRGB(180,180,180)

     BoxInput_1.PlaceholderText = ""

     BoxInput_1.Text = ""

     BoxInput_1.TextColor3 = Color3.fromRGB(180,180,180)

     BoxInput_1.TextSize = 12



     BoxInput_1.FocusLost:Connect(

     function(enterpressed)

          if enterpressed then

               Callback(BoxInput_1.Text)

          end

     end

     )

end

function Elements:CreateSlider(SliderName, max, Callback)

     local SliderHolder = Instance.new("Frame")

     local UICorner = Instance.new("UICorner")

     local SliderBtn = Instance.new("TextButton")

     local SliderFill = Instance.new("Frame")

     local UICornerFill = Instance.new("UICorner")

     local LabelHolder = Instance.new("Frame")

     local UICornerLabel = Instance.new("UICorner")

     local SliderNameLabel = Instance.new("TextLabel")

     local ValueLabel = Instance.new("TextLabel")



     SliderHolder.Name = "SliderHolder"

     SliderHolder.Parent = Items_1 -- You need to set this parent to your UI properly

     SliderHolder.BackgroundColor3 = Color3.fromRGB(40,40,40)

     SliderHolder.BackgroundTransparency = 0.4

     SliderHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)

     SliderHolder.Position = UDim2.new(0.0197628457, 0, 0.339080453, 0)

     SliderHolder.Size = UDim2.new(0, 244, 0, 40) -- Adjust the height to fit labels and slider



     UICorner.Parent = SliderHolder

     UICorner.CornerRadius = UDim.new(0, 10)



     LabelHolder.Name = "LabelHolder"

     LabelHolder.Parent = SliderHolder

     LabelHolder.BackgroundColor3 = Color3.fromRGB(0, 0, 0)

     LabelHolder.AnchorPoint = Vector2.new(0.5, 0.5)

     LabelHolder.BackgroundTransparency = 1

     LabelHolder.BorderColor3 = Color3.fromRGB(27, 42, 53)

     LabelHolder.Position = UDim2.new(0.5,0,0.3,0)

     LabelHolder.Size = UDim2.new(1, 0, 0, 12)



     UICornerLabel.Parent = LabelHolder

     UICornerLabel.CornerRadius = UDim.new(0, 10)



     SliderNameLabel.Name = "SliderNameLabel"

     SliderNameLabel.Parent = LabelHolder

     SliderNameLabel.Active = true

     SliderNameLabel.AnchorPoint = Vector2.new(0, 0.5)

     SliderNameLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

     SliderNameLabel.BackgroundTransparency = 1

     SliderNameLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)

     SliderNameLabel.BorderSizePixel = 0

     SliderNameLabel.Position = UDim2.new(0, 10, 0.5, 0)

     SliderNameLabel.Size = UDim2.new(0.5, -15, 0, 12)

     SliderNameLabel.Font = Enum.Font.FredokaOne

     SliderNameLabel.Text = SliderName

     SliderNameLabel.TextColor3 = Color3.fromRGB(180,180,180)

     SliderNameLabel.TextSize = 14

     SliderNameLabel.TextXAlignment = Enum.TextXAlignment.Left



     ValueLabel.Name = "ValueLabel"

     ValueLabel.Parent = LabelHolder

     ValueLabel.Active = true

     ValueLabel.AnchorPoint = Vector2.new(1, 0.5)

     ValueLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

     ValueLabel.BackgroundTransparency = 1

     ValueLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)

     ValueLabel.BorderSizePixel = 0

     ValueLabel.Position = UDim2.new(1, -10, 0.5, 0)

     ValueLabel.Size = UDim2.new(0.5, -15, 0, 12)

     ValueLabel.Font = Enum.Font.FredokaOne

     ValueLabel.Text = "0" -- Default value

     ValueLabel.TextColor3 = Color3.fromRGB(180,180,180)

     ValueLabel.TextSize = 14

     ValueLabel.TextXAlignment = Enum.TextXAlignment.Right



     SliderBtn.Name = "SliderBtn"

     SliderBtn.Parent = SliderHolder

     SliderBtn.AnchorPoint = Vector2.new(0.5, 0.5)

     SliderBtn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)

     SliderBtn.BackgroundTransparency = 1

     SliderBtn.BorderColor3 = Color3.fromRGB(27, 42, 53)

     SliderBtn.BorderSizePixel = 0

     SliderBtn.Position = UDim2.new(0.5,0,0.7,0) -- Adjust the position based on label heights

     SliderBtn.Size = UDim2.new(1, -20, 0, 14)

     SliderBtn.Font = Enum.Font.FredokaOne

     SliderBtn.Text = ""

     SliderBtn.TextSize = 0



     SliderFill.Name = "SliderFill"

     SliderFill.Parent = SliderBtn

     SliderFill.BackgroundColor3 = Color3.fromRGB(10,10,10)

     SliderFill.BackgroundTransparency = 0.2

     SliderFill.BorderSizePixel = 0

     SliderFill.Size = UDim2.new(0, 0, 1, 0)



     UICornerFill.Parent = SliderFill

     UICornerFill.CornerRadius = UDim.new(0, 10)



     local isDragging = false



     SliderBtn.InputBegan:Connect(function(input)

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

          local sliderPosition = SliderBtn.AbsolutePosition

          local sliderWidth = SliderBtn.AbsoluteSize.X

          local fillWidth = math.clamp(mousePosition.X - sliderPosition.X, 0, sliderWidth)

          SliderFill.Size = UDim2.new(0, fillWidth, 1, 0)



          -- Calculate and display value label

          local value = fillWidth / sliderWidth

          local minValue = 0

          local maxValue = max

          local displayValue = math.floor(minValue + (maxValue - minValue) * value, 2)

          ValueLabel.Text = tostring(displayValue)

          Callback(displayValue)

     end

     end)

end

return Elements

end

return Tabs

end
return Library
