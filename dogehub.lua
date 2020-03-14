local library = {}

local screengui = Instance.new("ScreenGui",game:GetService("CoreGui"))
function library:CreateWindow(text)
	local a = Instance.new("TextButton",screengui)
	a.Position = UDim2(0.018, 0,0.026, 0)
	a.Text = text;
	a.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	a.BorderSizePixel = 0
	a.TextSize = 18
	a.Font = Enum.Font.SourceSans
	a.TextXAlignment = "Left"
end

return library
