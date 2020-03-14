local library = {}

local screengui = Instance.new("ScreenGui",game:GetService("CoreGui"))
_G.flags = {}
local flags = 0
local count = 1
local itemcount = 32
local pos = 10
local screengui = Instance.new("ScreenGui",game.CoreGui)
local currentui = Instance

function library:CreateWindow(name,description,framename)
	itemcount = 32
	local a = Instance.new("TextButton",ui)
	a.Size = UDim2.new(0,189,0,32)
	a.BorderSizePixel = 0
	a.BackgroundColor3 = Color3.fromRGB(35,35,35)
	a.TextColor3 = Color3.fromRGB(255,255,255)
	a.Text = "  " .. name
	a.TextSize = 22
	a.Font = Enum.Font.Code
	a.Position = UDim2.new(0,10,0,pos)
	a.ZIndex = 2
	a.TextXAlignment = "Left"
	local b = Instance.new("TextLabel",ui)
	b.Size = UDim2.new(0,189,0,32)
	b.BorderSizePixel = 0
	b.BackgroundColor3 = Color3.fromRGB(35,35,35)
	b.TextColor3 = Color3.fromRGB(255,255,255)
	b.Text = description
	b.TextSize = 22
	b.Font = Enum.Font.Code
	b.Position = UDim2.new(0,10,0,pos)
	b.ZIndex = 1
	if not b.TextFits then b.TextScaled = true end
	local c = Instance.new("Frame",ui)
	c.Size = UDim2.new(0,189,0,32)
	c.BorderSizePixel = 0
	c.BackgroundColor3 = Color3.fromRGB(35,35,35)
	c.Position = UDim2.new(0,10,0,pos)
	c.ZIndex = 1
	c.ClipsDescendants = true
	local d = Instance.new("TextLabel",c)
	d.Size = UDim2.new(0,189,0,32)
	d.BorderSizePixel = 0
	d.BackgroundColor3 = Color3.fromRGB(45,45,45)
	d.TextColor3 = Color3.fromRGB(255,255,255)
	d.Text = framename
	d.TextSize = 22
	d.Font = Enum.Font.Code
	d.Position = UDim2.new(0,0,0,0)
	d.ZIndex = 1
	currentui = c
	a.MouseEnter:Connect(function()
		b:TweenPosition(UDim2.new(0,10+189+5,0,a.Position.Y.Offset),"Out","Quint",0.3)
	end)
	a.MouseLeave:Connect(function()
		b:TweenPosition(UDim2.new(0,10,0,a.Position.Y.Offset),"Out","Quint",0.3)
	end)
	local open = false
	a.MouseButton1Down:Connect(function()
		local e = Instance.new("ImageLabel",a)
		a.ClipsDescendants = true
		e.Size = UDim2.new(0,10,0,10)
		e.BackgroundTransparency = 1
		local uis = game:GetService("UserInputService")
		e.Position = UDim2.new(0.5,0-5,0.5,0-5)
		e.ImageTransparency = 0
		e.Image = "rbxassetid://3570695787"
		e.ZIndex = 3
		spawn(function()
		for i = 1,20 do
			e.Size = e.Size + UDim2.new(0,10,0,10)
			e.ImageTransparency = e.ImageTransparency + 0.05
			e.Position = e.Position - UDim2.new(0,5,0,5)
			wait(.05)
		end
		end)
		e:Destroy()
		spawn(function()
		if open == false then
			local size = 0
			b:TweenPosition(UDim2.new(0,10,0,a.Position.Y.Offset),"Out","Quint",0.3)
			c:TweenPosition(UDim2.new(0,10+189+5,0,a.Position.Y.Offset),"Out","Quint",0.3)
			--//Get Size
			for i,v in pairs(c:GetChildren()) do
				size = size + 32
			end
			wait(0.3)
			c:TweenSize(UDim2.new(0,189,0,size),"InOut","Quint",0.3)
			open = true
		else
			c:TweenSize(UDim2.new(0,189,0,32),"InOut","Quint",0.3)
			wait(0.3)
			c:TweenPosition(UDim2.new(0,10,0,a.Position.Y.Offset),"Out","Quint",0.3)
			open = false
		end
		end)
	end)
	pos = pos + 35
end

function library:Button(Text, Callback)
	local btn = Instance.new("TextButton",screengui)
    btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.TextSize = 18
    btn.Size = UDim2.new(0, 188,0, 34)
    btn.Position = UDim2.new(0.266, 0,0.195, 0)
    btn.MouseButton1Down:Connect(Callback)
end

function library:Toggle(text,flag)
    local a = Instance.new("TextButton",currentui)
    a.Size = UDim2.new(0,32,0,32)
    a.Position = UDim2.new(1,-32,0,itemcount)
    a.BackgroundTransparency = 0
    a.BackgroundColor3 = Color3.fromRGB(25,25,25)
    a.TextColor3 = Color3.fromRGB(255,255,255)
    a.Font = Enum.Font.Code
    a.TextSize = 30
    a.Text = ""
    a.BorderSizePixel = 0
    itemcount = itemcount + 32
    local b = Instance.new("TextLabel",a)
    b.Size = UDim2.new(0,157,0,32)
    b.Position = UDim2.new(0,-157,0,0)
    b.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    b.TextColor3 = Color3.fromRGB(255,255,255)
    b.Font = Enum.Font.SourceSans
    b.TextSize = 22
    b.BorderSizePixel = 0
    b.Text = text
    b.TextWrapped = true
    flags = flags + 1
    _G.flags[flags] = flag
    if not b.TextFits then a.TextScaled = true end
    local toggle = false
    a.MouseButton1Down:Connect(function()
        if not toggle then
            _G.flags[flag] = true
            toggle = true
            a.Text = "✓"
        else
            _G.flags[flag] = false
            toggle = false
            a.Text = ""
        end
    end)
end

function library:Label(text)
    local a = Instance.new("TextLabel",currentui)
    a.Size = UDim2.new(1,0,0,32)
    a.Position = UDim2.new(0,0,0,itemcount)
    a.BackgroundTransparency = 1
    a.TextColor3 = Color3.fromRGB(255,255,255)
    a.BorderSizePixel = 0
    a.Font = Enum.Font.SourceSans
    a.TextSize = 22
    a.Text = text
    itemcount = itemcount + 32
    a.TextWrapped = true
    if not a.TextFits then a.TextScaled = true end
end
function library:Section(text)
    local a = Instance.new("TextLabel",currentui)
    a.Size = UDim2.new(1,0,0,32)
    a.Position = UDim2.new(0,0,0,itemcount)
    a.BackgroundTransparency = 0
    a.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
    a.TextColor3 = Color3.fromRGB(255,255,255)
    a.BorderSizePixel = 0
    a.Font = Enum.Font.Code
    a.TextSize = 22
    a.Text = text
    itemcount = itemcount + 32
    a.TextWrapped = true
    if not a.TextFits then a.TextScaled = true end
end

return library
