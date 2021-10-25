local Lib = {}

function Lib:CreateWindow(Logo)
	local Dragonium = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local UICorner = Instance.new("UICorner")
	local ImageLabel = Instance.new("ImageLabel")

	Dragonium.Name = "Dragonium"
	Dragonium.Parent = game.CoreGui
	Dragonium.ResetOnSpawn = false

	Frame.Parent = Dragonium
	Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	Frame.BackgroundColor3 = Color3.fromRGB(225, 223, 211)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	Frame.Size = UDim2.new(0, 455, 0, 294)

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Frame

	ImageLabel.Parent = Frame
	ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ImageLabel.BackgroundTransparency = 1.000
	ImageLabel.Position = UDim2.new(0.017582424, 0, 0.0204081535, 0)
	ImageLabel.Size = UDim2.new(0, 120, 0, 97)
	ImageLabel.Image = Logo
	ImageLabel.ImageColor3 = Color3.fromRGB(16, 91, 195)


	local function WWMTCA_fake_script() -- Frame.LocalScript 
		local script = Instance.new('LocalScript', Frame)

		local dragging = false
		local dragInput, mousePos, framePos
		local frame = script.Parent
		local parent = script.Parent
		local tween = game:GetService("TweenService")
		local tweeninfo = TweenInfo.new
		local input = game:GetService("UserInputService")
		local run = game:GetService("RunService")
		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				dragging = true
				mousePos = input.Position
				framePos = parent.Position

				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragging = false
					end
				end)
			end
		end)

		frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				dragInput = input
			end
		end)

		input.InputChanged:Connect(function(input)
			if input == dragInput and dragging then
				local delta = input.Position - mousePos
				wait(0.05)
				parent.Position  = UDim2.new(framePos.X.Scale, framePos.X.Offset + delta.X, framePos.Y.Scale, framePos.Y.Offset + delta.Y)
			end
		end)
	end
	coroutine.wrap(WWMTCA_fake_script)()
	local function ZOXZMXX_fake_script() -- Frame.Draggable 
		local script = Instance.new('LocalScript', Frame)

		local UIS = game:GetService("UserInputService")

		UIS.InputBegan:Connect(function(Input, IsTyping)
			if IsTyping then return end
			if Input.KeyCode == Enum.KeyCode.RightControl then
				if script.Parent.Parent.Enabled then
					script.Parent.Parent.Enabled = false
				else
					script.Parent.Parent.Enabled = true
				end
			end
		end)
	end
	coroutine.wrap(ZOXZMXX_fake_script)()

	local Tab = {}

	function Tab()
		local ImageButton = Instance.new("ImageButton")

		ImageButton.Parent = Frame
		ImageButton.BackgroundColor3 = Color3.fromRGB(32, 32, 32)
		ImageButton.BackgroundTransparency = 1.000
		ImageButton.BorderSizePixel = 0
		ImageButton.Position = UDim2.new(0.0180000048, 0, 0.214000002, 0)
		ImageButton.Size = UDim2.new(0, 26, 0, 27)
		ImageButton.Image = "rbxassetid://7072717697"
		ImageButton.ImageColor3 = Color3.fromRGB(0, 0, 0)
	end

return Tab
end

return Lib

