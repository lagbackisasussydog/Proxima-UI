if getgenv().Proxima_Loaded then return end

pcall(function() 
	getgenv().Proxima_Loaded = true
end)

local Proxima = {}

local Lucide = loadstring(game:HttpGet("https://raw.githubusercontent.com/lagbackisasussydog/Proxima-UI/refs/heads/main/lucide-roblox.luau"))()

function Proxima:InitWindow(WindowTitle : string)
	local Window = {}
	
	local Proxima = Instance.new("ScreenGui")
	local Main = Instance.new("CanvasGroup")
	local UICorner = Instance.new("UICorner")
	local Title = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local UIPadding_1 = Instance.new("UIPadding")
	local UIListLayout = Instance.new("UIGridLayout")
	local Storage = Instance.new("Folder")
	local Sections = Instance.new("Folder")
	local Dropdowns = Instance.new("Folder")
	local Buttons = Instance.new("ScrollingFrame")
	local Dropdowns = Instance.new("Folder")
	local Close = Instance.new("ImageButton")

	Proxima.Name = "Proxima"
	Proxima.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	if game:GetService("RunService"):IsStudio() then
		Proxima.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	elseif game:GetService("RunService"):IsClient() then
		Proxima.Parent = game.CoreGui
	end

	Main.Name = "Main"
	Main.Parent = Proxima
	Main.AnchorPoint = Vector2.new(0.5, 0.5)
	Main.BackgroundColor3 = Color3.fromRGB(56, 56, 56)
	Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Main.BorderSizePixel = 0
	Main.ClipsDescendants = true
	Main.Position = UDim2.new(0.5, 0, 0.5, 0)
	Main.Size = UDim2.new(0, 350, 0, 200)
	Main.Active = true
	Main.Draggable = true
	
	UICorner.Parent = Main

	Title.Name = "Title"
	Title.Parent = Main
	Title.Active = true
	Title.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
	Title.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Title.BorderSizePixel = 0
	Title.Size = UDim2.new(0, 350, 0, 25)

	TextLabel.Parent = Title
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = WindowTitle or "Proxima - V0.1"
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 14.000
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding.Parent = TextLabel
	UIPadding.PaddingLeft = UDim.new(0, 5)

	Buttons.Name = "Buttons"
	Buttons.Parent = Main
	Buttons.Active = true
	Buttons.BackgroundColor3 = Color3.fromRGB(59, 59, 59)
	Buttons.BackgroundTransparency = 0.500
	Buttons.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Buttons.BorderSizePixel = 0
	Buttons.Position = UDim2.new(0, 0, 0.125, 0)
	Buttons.Size = UDim2.new(0, 35, 0, 174)
	Buttons.CanvasSize = UDim2.new(0, 0, 1, 0)
	Buttons.ScrollBarThickness = 0

	UIListLayout.Parent = Buttons
	UIListLayout.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.VerticalAlignment = Enum.VerticalAlignment.Top
	UIListLayout.CellSize = UDim2.new(0, 25, 0, 25)
	UIListLayout.CellPadding = UDim2.new(0, 0, 0, 5)

	UIPadding_1.Parent = Buttons
	UIPadding_1.PaddingTop = UDim.new(0, 5)

	Storage.Name = "Storage"
	Storage.Parent = Main

	Sections.Name = "Sections"
	Sections.Parent = Storage
	
	Dropdowns.Name = "Dropdowns"
	Dropdowns.Parent = Storage

	Close.Name = "Close"
	Close.Parent = Main
	Close.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
	Close.BackgroundTransparency = 0.500
	Close.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Close.BorderSizePixel = 0
	Close.Position = UDim2.new(0.928571403, 0, 0, 0)
	Close.Size = UDim2.new(0, 25, 0, 25)
	Close.Image = "http://www.roblox.com/asset/?id=6031094678"

	Close.MouseButton1Up:Connect(function()
		local t = game:GetService("TweenService"):Create(Main, TweenInfo.new(.5), {Size = UDim2.new(0,350,0,0), GroupTransparency = 1})
		t:Play()
		t.Completed:Wait()
		Proxima:Destroy()
		getgenv().Proxima_Loaded = false
	end)
	
	function Window:Tab(TabName : string, Icon : string)
		local Tabs = {}

		local Asset = Lucide.GetAsset(Icon, 48)
		
		local Section = Instance.new("ScrollingFrame")
		local UIGradient_2 = Instance.new("UIGradient")
		local UIGridLayout = Instance.new("UIGridLayout")
		
		local Button = Instance.new("ImageButton")
		local UIGradient = Instance.new("UIGradient")
		local UIPadding = Instance.new("UIPadding")
		
		Button.Name = TabName
		Button.Parent = Buttons
		Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Button.BorderSizePixel = 0
		Button.Size = UDim2.new(0, 25, 0, 25)
		Button.Image = Asset.Url
		Button.ImageRectOffset = Asset.ImageRectOffset
		Button.ImageRectSize = Asset.ImageRectSize

		UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 255, 255)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(81, 81, 81))}
		UIGradient.Rotation = -90
		UIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.50), NumberSequenceKeypoint.new(1.00, 0.80)}
		UIGradient.Parent = Button
		
		Section.Name = TabName
		Section.Parent = Sections
		Section.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Section.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Section.BorderSizePixel = 0
		Section.Position = UDim2.new(0.100000001, 0, 0.125, 0)
		Section.Selectable = false
		Section.Size = UDim2.new(0, 315, 0, 175)
		Section.ScrollBarThickness = 0
		Section.Visible = false

		UIGradient_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(95, 95, 95)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
		UIGradient_2.Rotation = 90
		UIGradient_2.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(1.00, 1.00)}
		UIGradient_2.Parent = Section

		UIGridLayout.Parent = Section
		UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIGridLayout.CellSize = UDim2.new(0, 300, 0, 50)
		
		UIPadding.Parent = Section
		UIPadding.PaddingTop = UDim.new(0, 5)
		
		local function Clear()
			for i,v in pairs(Sections:GetChildren()) do
				v.Visible = false
			end
		end
		
		Button.MouseButton1Click:Connect(function()
			Clear()
			Section.Visible = true
		end)
		
		function Tabs:Button(Config : {})
			local t = {}
			local Title = Config.Title or "Button"
			local subTitle = Config.SubTitle or ""
			local Callback = Config.Callback
			
			if not Callback or type(Callback) ~= "function" then error("Missing or Invalid Arguments") end
			
			local Button = Instance.new("Frame")
			local Label = Instance.new("TextLabel")
			local subLabel = Instance.new("TextLabel")
			local UIGradient_3 = Instance.new("UIGradient")
			local ImageButton = Instance.new("ImageButton")
			
			Button.Name = "Button"
			Button.Parent = Section
			Button.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			Button.BackgroundTransparency = 0.500
			Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Button.BorderSizePixel = 0
			Button.Size = UDim2.new(0, 309, 0, 50)

			Label.Name = "Label"
			Label.Parent = Button
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label.BorderSizePixel = 0
			Label.Position = UDim2.new(0.0299999993, 0, 0.0599999987, 0)
			Label.Size = UDim2.new(0, 216, 0, 17)
			Label.Font = Enum.Font.SourceSans
			Label.Text = Title
			Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label.TextSize = 14.000
			Label.TextXAlignment = Enum.TextXAlignment.Left

			subLabel.Name = "subLabel"
			subLabel.Parent = Button
			subLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			subLabel.BackgroundTransparency = 1.000
			subLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
			subLabel.BorderSizePixel = 0
			subLabel.Position = UDim2.new(0.0299999993, 0, 0.400000006, 0)
			subLabel.Size = UDim2.new(0, 216, 0, 27)
			subLabel.Font = Enum.Font.SourceSans
			subLabel.Text = subTitle
			subLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			subLabel.TextSize = 14.000
			subLabel.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient_3.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 170, 255)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(47, 93, 140)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
			UIGradient_3.Parent = Button

			ImageButton.Parent = Button
			ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageButton.BackgroundTransparency = 1.000
			ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageButton.BorderSizePixel = 0
			ImageButton.Position = UDim2.new(0.883333325, 0, 0.239999995, 0)
			ImageButton.Size = UDim2.new(0, 25, 0, 25)
			ImageButton.Image = "http://www.roblox.com/asset/?id=6031091008"
			
			local conn = ImageButton.MouseButton1Up:Connect(Callback)

			function t:Lock()
				conn:Disconnect()
				subLabel.Text = "This function is locked"
			end
			
			return t
		end
		
		function Tabs:Toggle(Config : {})
			local t = {}
			
			local Title = Config.Title or "Toggle"
			local SubTitle = Config.SubTitle or ""
			local Color = Color3.fromRGB(255,0,0)
			local Color2 = Color3.fromRGB(0,255,0)
			
			if not Config.Callback or type(Config.Callback) ~= "function" then error("Missing or invalid arguments") end
			
			local Toggle = Instance.new("TextButton")
			local Label_2 = Instance.new("TextLabel")
			local subLabel_2 = Instance.new("TextLabel")
			local UIGradient_4 = Instance.new("UIGradient")
			local boolValue = Instance.new("BoolValue")
			
			Toggle.Name = "Toggle"
			Toggle.Parent = Section
			Toggle.Active = false
			Toggle.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			Toggle.BackgroundTransparency = 0.500
			Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.BorderSizePixel = 0
			Toggle.Position = UDim2.new(-0.00158730161, 0, 0.165217385, 0)
			Toggle.Selectable = false
			Toggle.Size = UDim2.new(0, 309, 0, 50)
			Toggle.Font = Enum.Font.SourceSans
			Toggle.Text = ""
			Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
			Toggle.TextSize = 14.000

			Label_2.Name = "Label"
			Label_2.Parent = Toggle
			Label_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label_2.BackgroundTransparency = 1.000
			Label_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label_2.BorderSizePixel = 0
			Label_2.Position = UDim2.new(0.0299999993, 0, 0.0599999987, 0)
			Label_2.Size = UDim2.new(0, 216, 0, 17)
			Label_2.Font = Enum.Font.SourceSans
			Label_2.Text = Title
			Label_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label_2.TextSize = 14.000
			Label_2.TextXAlignment = Enum.TextXAlignment.Left

			subLabel_2.Name = "subLabel"
			subLabel_2.Parent = Toggle
			subLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			subLabel_2.BackgroundTransparency = 1.000
			subLabel_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			subLabel_2.BorderSizePixel = 0
			subLabel_2.Position = UDim2.new(0.0299999993, 0, 0.400000006, 0)
			subLabel_2.Size = UDim2.new(0, 216, 0, 27)
			subLabel_2.Font = Enum.Font.SourceSans
			subLabel_2.Text = SubTitle
			subLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
			subLabel_2.TextSize = 14.000
			subLabel_2.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
			UIGradient_4.Parent = Toggle
			
			boolValue.Parent = Toggle
			
			local conn = boolValue.Changed:Connect(function()
				if boolValue.Value then
					UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color2), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
				else
					UIGradient_4.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(0, 0, 0))}
				end
				Config.Callback(boolValue.Value)
			end)
			
			local function toggle()
				boolValue.Value = not boolValue.Value
			end
			
			local function set(Value)
				boolValue.Value = Value
			end
			
			Toggle.MouseButton1Click:Connect(toggle)
			
			function t:SetValue(Value)
				set(Value)
			end
			
			function t:GetValue()
				return boolValue.Value
			end
			
			function t:Lock()
				conn:Disconnect()
				subLabel_2.Text = "This function is locked"
			end
			
			return t
		end
		
		function Tabs:Slider(Config)
			local t = {}
			local Title = Config.Title or "Slider"
			
			if not Config.Callback or type(Config.Callback) ~= "function" then error("Missing or invalid arguments") end
			
			local Slider = Instance.new("Frame")
			local Label_3 = Instance.new("TextLabel")
			local UIGradient_5 = Instance.new("UIGradient")
			local State = Instance.new("TextLabel")
			local Box = Instance.new("CanvasGroup")
			local Fill = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local NumberValue = Instance.new("NumberValue")
			local Ball = Instance.new("TextButton")
			local raw = Instance.new("NumberValue")
			
			Slider.Name = "Slider"
			Slider.Parent = Section
			Slider.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			Slider.BackgroundTransparency = 0.500
			Slider.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Slider.BorderSizePixel = 0
			Slider.Size = UDim2.new(0, 309, 0, 50)

			Label_3.Name = "Label"
			Label_3.Parent = Slider
			Label_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label_3.BackgroundTransparency = 1.000
			Label_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label_3.BorderSizePixel = 0
			Label_3.Position = UDim2.new(0.0299999993, 0, 0.0599999987, 0)
			Label_3.Size = UDim2.new(0, 216, 0, 17)
			Label_3.Font = Enum.Font.SourceSans
			Label_3.Text = Title
			Label_3.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label_3.TextSize = 14.000
			Label_3.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient_5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 170, 255)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(47, 93, 140)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
			UIGradient_5.Parent = Slider

			State.Name = "State"
			State.Parent = Slider
			State.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			State.BackgroundTransparency = 1.000
			State.BorderColor3 = Color3.fromRGB(0, 0, 0)
			State.BorderSizePixel = 0
			State.Position = UDim2.new(0.24666667, 0, 0.0599999987, 0)
			State.Size = UDim2.new(0, 216, 0, 17)
			State.Font = Enum.Font.SourceSans
			State.Text = NumberValue.Value or "---"
			State.TextColor3 = Color3.fromRGB(255, 255, 255)
			State.TextSize = 14.000
			State.TextXAlignment = Enum.TextXAlignment.Right
			
			Box.Name = "Box"
			Box.Parent = Slider
			Box.BackgroundColor3 = Color3.fromRGB(53, 53, 53)
			Box.BorderColor3 = Color3.fromRGB(40, 40, 40)
			Box.ClipsDescendants = true
			Box.Position = UDim2.new(0.0299999993, 0, 0.540000021, 0)
			Box.Size = UDim2.new(0, 281, 0, 16)
			
			Fill.Name = "Fill"
			Fill.Parent = Box
			Fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Fill.BorderSizePixel = 0
			Fill.Size = UDim2.new(1, 0, 1, 0)

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 170, 255)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(47, 93, 140)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
			UIGradient.Parent = Fill
			
			Ball.Name = "Ball"
			Ball.Parent = Box
			Ball.Active = false
			Ball.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Ball.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Ball.BorderSizePixel = 0
			Ball.Position = UDim2.new(0.943060517, 0, 0, 0)
			Ball.Selectable = false
			Ball.Size = UDim2.new(0, 16, 0, 16)
			Ball.Font = Enum.Font.SourceSans
			Ball.Text = ""
			Ball.TextColor3 = Color3.fromRGB(0, 0, 0)
			Ball.TextSize = 14.000
			
			Ball.Changed:Connect(function()
				if Fill.Size == UDim2.new(1, 0, 1, 0) and Ball.AbsolutePosition.X >= 237.5 then
					Ball.Position = UDim2.new(0.943060517,0,0,0)
				else
					Ball.Position = UDim2.new(raw.Value,0,0,0)
				end
			end)
			
			NumberValue.Value = Config.Default
			NumberValue.Parent = Slider
			
			raw.Parent = Slider
			raw.Name = "raw"
			
			Fill.Size = UDim2.new(raw.Value,0,1,0)
			Ball.Position = UDim2.new(raw.Value,0,0,0)
			
			NumberValue.Changed:Connect(function(value)
				State.Text = tostring(math.round(value))
			end)
			
			local mouse = game.Players.LocalPlayer:GetMouse()
			local activated = false
			
			local min = Config.Min / 100
			local max = Config.Max / 100
			
			local function Update()
				local output = math.clamp((mouse.X-Box.AbsolutePosition.X)/ Box.AbsoluteSize.X,0,1)
				
				local outputClamped = min + (output*(max-min))
				
				Fill.Size = UDim2.new(output,0,1,0)
				Ball.Position = UDim2.new(output,0,0,0)
				NumberValue.Value = outputClamped*100
				raw.Value = output
				Config.Callback(NumberValue.Value)
			end
			
			local function Activate()
				activated = true
				while activated do
					Update()
					task.wait()
				end
			end
			
			Ball.MouseButton1Down:Connect(Activate)
			
			game.UserInputService.InputEnded:Connect(function(inp, proc)
				if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
					activated = false
				end
			end)
			Update()
			
			function t:GetValue()
				return NumberValue.Value
			end
			
			return t
		end
		
		function Tabs:TextBox(Config)
			local t = {}
			
			local TextBox = Instance.new("Frame")
			local Label_5 = Instance.new("TextLabel")
			local UIGradient_7 = Instance.new("UIGradient")
			local State_3 = Instance.new("TextBox")
			local UIPadding_2 = Instance.new("UIPadding")
			local StringValue = Instance.new("StringValue")
			
			TextBox.Name = "TextBox"
			TextBox.Parent = Section
			TextBox.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			TextBox.BackgroundTransparency = 0.500
			TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
			TextBox.BorderSizePixel = 0
			TextBox.Size = UDim2.new(0, 309, 0, 50)

			Label_5.Name = "Label"
			Label_5.Parent = TextBox
			Label_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label_5.BackgroundTransparency = 1.000
			Label_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label_5.BorderSizePixel = 0
			Label_5.Position = UDim2.new(0.0299999993, 0, 0.319999993, 0)
			Label_5.Size = UDim2.new(0, 216, 0, 17)
			Label_5.Font = Enum.Font.SourceSans
			Label_5.Text = "Text box"
			Label_5.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label_5.TextSize = 14.000
			Label_5.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient_7.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 170, 255)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(47, 93, 140)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
			UIGradient_7.Parent = TextBox

			State_3.Name = "State"
			State_3.Parent = TextBox
			State_3.Active = false
			State_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			State_3.BackgroundTransparency = 0.500
			State_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
			State_3.BorderSizePixel = 0
			State_3.Position = UDim2.new(0.686666667, 0, 0.319999993, 0)
			State_3.Selectable = false
			State_3.Size = UDim2.new(0, 84, 0, 17)
			State_3.Font = Enum.Font.SourceSans
			State_3.Text = ""
			State_3.TextColor3 = Color3.fromRGB(255, 255, 255)
			State_3.TextSize = 14.000
			State_3.TextXAlignment = Enum.TextXAlignment.Right

			UIPadding_2.Parent = Section
			UIPadding_2.PaddingTop = UDim.new(0, 5)
			
			StringValue.Parent = TextBox
			
			State_3.FocusLost:Connect(function(enterPressed, inputThatCausedFocusLoss)
				if enterPressed or inputThatCausedFocusLoss.UserInputType == Enum.UserInputType.Touch then
					StringValue.Value = State_3.Text
				end
			end)

			function t:GetValue()
				return StringValue.Value
			end
			
			return t
		end
		
		function Tabs:Dropdown(Config)
			local t = {}
			local Title = Config.Title or "Dropdown"
			
			if not Config.Callback or type(Config.Callback) ~= "function" then error("Missing or invalid arguments") end
			
			local Dropdown = Instance.new("Frame")
			local Label = Instance.new("TextLabel")
			local UIGradient = Instance.new("UIGradient")
			local State = Instance.new("TextLabel")
			local ImageButton = Instance.new("ImageButton")

			Dropdown.Name = "Dropdown"
			Dropdown.Parent = Section
			Dropdown.BackgroundColor3 = Color3.fromRGB(103, 103, 103)
			Dropdown.BackgroundTransparency = 0.500
			Dropdown.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Dropdown.BorderSizePixel = 0
			Dropdown.Size = UDim2.new(0, 309, 0, 50)

			Label.Name = "Label"
			Label.Parent = Dropdown
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label.BorderSizePixel = 0
			Label.Position = UDim2.new(0.0299999993, 0, 0.0599999987, 0)
			Label.Size = UDim2.new(0, 216, 0, 17)
			Label.Font = Enum.Font.SourceSans
			Label.Text = Title
			Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label.TextSize = 14.000
			Label.TextXAlignment = Enum.TextXAlignment.Left

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 170, 255)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(47, 93, 140)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
			UIGradient.Parent = Dropdown

			State.Name = "State"
			State.Parent = Dropdown
			State.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			State.BackgroundTransparency = 1.000
			State.BorderColor3 = Color3.fromRGB(0, 0, 0)
			State.BorderSizePixel = 0
			State.Position = UDim2.new(0.24666667, 0, 0.0799999982, 0)
			State.Size = UDim2.new(0, 216, 0, 17)
			State.Font = Enum.Font.SourceSans
			State.Text = "---"
			State.TextColor3 = Color3.fromRGB(255, 255, 255)
			State.TextSize = 14.000
			State.TextXAlignment = Enum.TextXAlignment.Right

			ImageButton.Parent = Dropdown
			ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ImageButton.BackgroundTransparency = 1.000
			ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
			ImageButton.BorderSizePixel = 0
			ImageButton.Position = UDim2.new(0.0299999993, 0, 0.5, 0)
			ImageButton.Size = UDim2.new(0, 20, 0, 20)
			ImageButton.Image = "http://www.roblox.com/asset/?id=6031091008"
			
			local DropdownMenu = Instance.new("Frame")
			local Label1 = Instance.new("TextLabel")
			local Label2 = Instance.new("TextLabel")
			local Container = Instance.new("ScrollingFrame")
			local UIGridLayout = Instance.new("UIGridLayout")
			local Back = Instance.new("ImageButton")

			DropdownMenu.Name = Title
			DropdownMenu.Parent = Dropdowns
			DropdownMenu.AnchorPoint = Vector2.new(0.5, 0.5)
			DropdownMenu.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			DropdownMenu.BackgroundTransparency = 0.500
			DropdownMenu.BorderColor3 = Color3.fromRGB(0, 0, 0)
			DropdownMenu.BorderSizePixel = 0
			DropdownMenu.ClipsDescendants = true
			DropdownMenu.Position = UDim2.new(0.5, 0, 0.5, 0)
			DropdownMenu.Size = UDim2.new(1, 0, 1, 0)
			DropdownMenu.ZIndex = 99
			DropdownMenu.Visible = false

			Label1.Name = "Label1"
			Label1.Parent = DropdownMenu
			Label1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label1.BackgroundTransparency = 1.000
			Label1.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label1.BorderSizePixel = 0
			Label1.Position = UDim2.new(0.0142857144, 0, 0.0399999991, 0)
			Label1.Size = UDim2.new(0, 200, 0, 50)
			Label1.Font = Enum.Font.SourceSansBold
			Label1.Text = "SELECT AN OPTION FOR"
			Label1.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label1.TextSize = 20.000

			Label2.Name = "Label2"
			Label2.Parent = DropdownMenu
			Label2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label2.BackgroundTransparency = 1.000
			Label2.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Label2.BorderSizePixel = 0
			Label2.Position = UDim2.new(0.0571428575, 0, 0.285714298, 0)
			Label2.Size = UDim2.new(0, 200, 0, 24)
			Label2.Font = Enum.Font.SourceSansBold
			Label2.Text = Title
			Label2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label2.TextSize = 20.000
			Label2.TextXAlignment = Enum.TextXAlignment.Left

			Container.Name = "Container"
			Container.Parent = DropdownMenu
			Container.Active = true
			Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Container.BackgroundTransparency = 1.000
			Container.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Container.BorderSizePixel = 0
			Container.Position = UDim2.new(0.469999999, 0, 0.254999995, 0)
			Container.Size = UDim2.new(0, 168, 0, 113)
			Container.ScrollBarThickness = 0

			UIGridLayout.Parent = Container
			UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIGridLayout.CellSize = UDim2.new(1, 0, 0, 25)

			Back.Name = "Back"
			Back.Parent = DropdownMenu
			Back.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Back.BackgroundTransparency = 1.000
			Back.BorderColor3 = Color3.fromRGB(0, 0, 0)
			Back.BorderSizePixel = 0
			Back.Position = UDim2.new(0.0119046457, 0, 0.805714309, 0)
			Back.Rotation = 180.000
			Back.Size = UDim2.new(0, 25, 0, 25)
			Back.Image = "http://www.roblox.com/asset/?id=6031091008"
			
			Back.MouseButton1Up:Connect(function()
				DropdownMenu.Visible = false
			end)
			
			ImageButton.MouseButton1Up:Connect(function()
				DropdownMenu.Visible = true
			end)
			
			for i, v in pairs(Config.List or {}) do
				local Button = Instance.new("Frame")
				local UIGradient = Instance.new("UIGradient")
				local TextButton = Instance.new("TextButton")
				
				Button.Name = "Button"
				Button.Parent = Container
				Button.Active = true
				Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Button.BackgroundTransparency = 0.500
				Button.BorderColor3 = Color3.fromRGB(0, 0, 0)
				Button.BorderSizePixel = 0
				Button.Selectable = true
				Button.Size = UDim2.new(0, 200, 0, 50)

				UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(85, 170, 255)), ColorSequenceKeypoint.new(0.99, Color3.fromRGB(47, 93, 140)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(85, 170, 255))}
				UIGradient.Parent = Button

				TextButton.Parent = Button
				TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.BackgroundTransparency = 1.000
				TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
				TextButton.BorderSizePixel = 0
				TextButton.Size = UDim2.new(1, 0, 1, 0)
				TextButton.Font = Enum.Font.SourceSans
				TextButton.Text = tostring(v)
				TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
				TextButton.TextSize = 14.000
				
				TextButton.MouseButton1Up:Connect(function()
					Config.Callback(v)
					DropdownMenu.Visible = false
					State.Text = v
				end)
			end
		end
		
		return Tabs
	end

	function Window:TargetHUD(target : Model)
		local TargetHUD = {}
		
		if target.PrimaryPart:FindFirstChild("Gui") then return end
		
		local Gui = Instance.new("BillboardGui")
		local Main = Instance.new("CanvasGroup")
		local Target = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")
		local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
		local Box = Instance.new("Frame")
		local Fill = Instance.new("Frame")
		local Health = Instance.new("TextLabel")
		local UIPadding_2 = Instance.new("UIPadding")
		local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
		local MaxHealth = Instance.new("TextLabel")
		local UIPadding_3 = Instance.new("UIPadding")
		local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
		local Hit = Instance.new("TextLabel")
		local UIPadding_4 = Instance.new("UIPadding")

		local HitCount = 0
		local lastHit = tick()
		
		Gui.Name = "Gui"
		Gui.Parent = target.PrimaryPart
		Gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		Gui.Active = true
		Gui.Adornee = target.HumanoidRootPart
		Gui.AlwaysOnTop = true
		Gui.LightInfluence = 1.000
		Gui.MaxDistance = math.huge
		Gui.Size = UDim2.new(4, 0, 2, 0)
		Gui.SizeOffset = Vector2.new(1, 0)

		Main.Name = "Main"
		Main.Parent = Gui
		Main.AnchorPoint = Vector2.new(0.5, 0.5)
		Main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Main.BackgroundTransparency = 1.000
		Main.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Main.BorderSizePixel = 0
		Main.Position = UDim2.new(0.5, 0, 0.5, 0)
		Main.Size = UDim2.new(1, 0, 1, 0)
		Main.GroupTransparency = 1

		Target.Name = "Target"
		Target.Parent = Main
		Target.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Target.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Target.BorderSizePixel = 0
		Target.Size = UDim2.new(1, 0, 0.200000003, 0)
		Target.Font = Enum.Font.SourceSans
		Target.TextColor3 = Color3.fromRGB(0, 0, 0)
		Target.TextScaled = true
		Target.TextSize = 14.000
		Target.TextWrapped = true
		Target.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding.Parent = Target
		UIPadding.PaddingLeft = UDim.new(0, 10)

		UITextSizeConstraint.Parent = Target
		UITextSizeConstraint.MaxTextSize = 14

		Box.Name = "Box"
		Box.Parent = Main
		Box.AnchorPoint = Vector2.new(0.5, 0.5)
		Box.BackgroundColor3 = Color3.fromRGB(65, 65, 65)
		Box.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Box.BorderSizePixel = 0
		Box.Position = UDim2.new(0.5, 0, 0.400000006, 0)
		Box.Size = UDim2.new(1, 0, 0.200000003, 0)

		Fill.Name = "Fill"
		Fill.Parent = Box
		Fill.AnchorPoint = Vector2.new(0, 0.5)
		Fill.BackgroundColor3 = Color3.fromRGB(38, 255, 0)
		Fill.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Fill.BorderSizePixel = 0
		Fill.Position = UDim2.new(0, 0, 0.5, 0)
		Fill.Size = UDim2.new(1, 0, 1, 0)

		Health.Name = "Health"
		Health.Parent = Main
		Health.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Health.BackgroundTransparency = 1.000
		Health.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Health.BorderSizePixel = 0
		Health.Position = UDim2.new(0, 0, 0.600000024, 0)
		Health.Size = UDim2.new(1, 0, 0.200000003, 0)
		Health.Font = Enum.Font.SourceSans
		Health.TextColor3 = Color3.fromRGB(255, 255, 255)
		Health.TextScaled = true
		Health.TextSize = 14.000
		Health.TextWrapped = true
		Health.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_2.Parent = Health
		UIPadding_2.PaddingLeft = UDim.new(0, 10)

		UITextSizeConstraint_2.Parent = Health
		UITextSizeConstraint_2.MaxTextSize = 14

		MaxHealth.Name = "MaxHealth"
		MaxHealth.Parent = Main
		MaxHealth.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MaxHealth.BackgroundTransparency = 1.000
		MaxHealth.BorderColor3 = Color3.fromRGB(0, 0, 0)
		MaxHealth.BorderSizePixel = 0
		MaxHealth.Position = UDim2.new(0, 0, 0.600000024, 0)
		MaxHealth.Size = UDim2.new(1, 0, 0.200000003, 0)
		MaxHealth.Font = Enum.Font.SourceSans
		MaxHealth.TextColor3 = Color3.fromRGB(255, 255, 255)
		MaxHealth.TextScaled = true
		MaxHealth.TextSize = 14.000
		MaxHealth.TextWrapped = true
		MaxHealth.TextXAlignment = Enum.TextXAlignment.Right

		UIPadding_3.Parent = MaxHealth
		UIPadding_3.PaddingRight = UDim.new(0, 10)

		UITextSizeConstraint_3.Parent = MaxHealth
		UITextSizeConstraint_3.MaxTextSize = 14
		
		Hit.Name = "Health"
		Hit.Parent = Main
		Hit.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Hit.BackgroundTransparency = 1.000
		Hit.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Hit.BorderSizePixel = 0
		Hit.Position = UDim2.new(0, 0, 0.800000024, 0)
		Hit.Size = UDim2.new(1, 0, 0.200000003, 0)
		Hit.Font = Enum.Font.SourceSans
		Hit.TextColor3 = Color3.fromRGB(255, 255, 255)
		Hit.TextScaled = true
		Hit.TextSize = 14.000
		Hit.TextWrapped = true
		Hit.TextXAlignment = Enum.TextXAlignment.Left
		Hit.Text = "Combo: " .. HitCount

		UIPadding_4.Parent = Hit
		UIPadding_4.PaddingLeft = UDim.new(0, 10)
		
		local TweenService = game:GetService("TweenService")
		TweenService:Create(Main, TweenInfo.new(.5, Enum.EasingStyle.Linear), {GroupTransparency = 0}):Play()
		
		local conn = game.RunService.Heartbeat:Connect(function()
			Target.Text = target.Name
			local hpPercent = target.Humanoid.Health / target.Humanoid.MaxHealth
			Fill.Size = Fill.Size:Lerp(UDim2.new(hpPercent, 0, 1, 0),0.2)
			Fill.BackgroundColor3 = Fill.BackgroundColor3:Lerp(Color3.fromHSV(math.clamp(target.Humanoid.Health/target.Humanoid.MaxHealth,0,1) * .3, 1, 1), .3)
			Health.Text = target.Humanoid.Health
			MaxHealth.Text = target.Humanoid.MaxHealth
			if game.Players.LocalPlayer:DistanceFromCharacter(target:GetPivot().Position) > 500 then
				Main.Visible = false
			end
		end)
		
		target.Humanoid.HealthChanged:Connect(function()
			HitCount += 1
			lastHit = tick()
			Hit.Text = "Combo: " .. HitCount
		end)
		
		target.Humanoid.Died:Connect(function()
			local t = TweenService:Create(Main, TweenInfo.new(.5, Enum.EasingStyle.Linear), {GroupTransparency = 1})
			conn:Disconnect()
			t:Play()
			t.Completed:Wait()
			Gui:Destroy()
		end)
		
		task.spawn(function()
			while task.wait(0.1) do
				if tick() - lastHit > 2 then
					HitCount = 0
					Hit.Text = "Combo: 0"
				end
			end
		end)
		
		function TargetHUD:Destroy()
			local t = TweenService:Create(Main, TweenInfo.new(.5, Enum.EasingStyle.Linear), {GroupTransparency = 1})
			conn:Disconnect()
			t:Play()
			t.Completed:Wait()
			Gui:Destroy()
		end
		
		return TargetHUD
	end
	
	return Window
end

return Proxima
