local library = {}

local pos = 10
local itemcount = 0
local ui = Instance.new("ScreenGui",game:GetService("CoreGui"))
function library:CreateWindow(text,description,frametext)
    itemcount = 32
    local a = Instance.new("TextButton",ui)
    a.Size = UDim2.new(0, 189,0, 32)
    a.Text = "  " .. text
    a.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    a.BorderSizePixel = 0
    a.TextColor3 = Color3.fromRGB(255, 255, 255)
    a.TextSize = 18
    a.Font = Enum.Font.SourceSans
    a.TextXAlignment = "Left"
    a.ZIndex = 2
    a.Position = UDim2.new(0,pos,0,10)
    local b = Instance.new("TextLabel",ui)
    b.Size = UDim2.new(0, 189,0, 32)
    b.TextColor3 = Color3.fromRGB(255, 255, 255)
    b.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    b.BorderSizePixel = 0
    b.Text = description
    b.Font = Enum.Font.SourceSans
    b.ZIndex = 1
    b.Position = UDim2.new(0,pos,0,10)
    local c = Instance.new("Frame",ui)
	c.Size = UDim2.new(0, 189,0, 32)
	c.BorderSizePixel = 0
	c.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
	c.Position = UDim2.new(0,pos,0,10)
	c.ZIndex = 1
    c.ClipsDescendants = true
    local d = Instance.new("TextLabel",ui)
    d.Size = UDim2.new(0, 189,0, 32)
    d.BorderSizePixel = 0
    d.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    d.TextColor3 = Color3.fromRGB(255, 255, 255)
    d.Text = frametext
    d.TextSize = 18
    d.Font = Enum.Font.SourceSans
    d.ZIndex = 1
    a.MouseHover:Connect(function()
        b.TweenPosition(UDim2.new(0,10+189+5,0,a.Position.Y.Offset),"Out","Quint",0.3)
    end)
    
    a.MouseLeave:Connect(function()
        b.TweenPosition(UDim2.new(0,10,0,a.Position.Y.Offset),"Out","Quint",0.3)
    end)
    pos = pos + 205
end

return library
