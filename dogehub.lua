local library = {}

local screengui = Instance.new("ScreenGui",game:GetService("CoreGui"))
local counter = 15
function library:CreateWindow(name)
	local a = Instance.new("TextButton",screengui)
	a.Size = UDim2.new(0, 189,0, 32)
	a.TextColor3 = Color3.fromRGB(255, 255, 255)
	a.Text = name
	a.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	a.BorderSizePixel = 0
	a.TextSize = 18
	a.Font = Enum.Font.SourceSans
	a.TextXAlignment = "Left"
	a.Position = UDim2.new(0,10,0,counter)
    counter = counter + 30
end

return library
