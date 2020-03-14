local library = {}

local screengui = Instance.new("ScreenGui",game:GetService("CoreGui"))
local btn = Instance.new("TextButton",screengui)
local counter = 10
function library:CreateWindow(text)
	local a = Instance.new("TextButton",screengui)
	a.Size = UDim2.new(0, 189,0, 32)
	a.Text = "  " .. text
	a.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	a.BorderSizePixel = 0
	a.TextSize = 18
	a.Font = Enum.Font.SourceSans
	a.TextXAlignment = "Left"
	a.Position = UDim2.new(0,10,0,counter)
    counter = counter + 35
end

function library:Button(Text, Callback)
    btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 18
    btn.Size = UDim2.new(0, 188,0, 34)
    btn.Position = UDim2.new(0.266, 0,0.195, 0)
    btn.MouseButton1Down:Connect(Callback)
end

return library
