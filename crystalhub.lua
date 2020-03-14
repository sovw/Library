local library = {}

local pos = 10
local ui = Instance.new("ScreenGui",game:GetService("CoreGui"))

flocal screengui = Instance.new("ScreenGui",game:GetService("CoreGui"))
local counter = 10
function library:CreateWindow(text)
    local a = Instance.new("TextButton",ui)
    a.Size = UDim2.new(0, 189,0, 32)
    a.Text = "  " .. text
    a.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    a.BorderSizePixel = 0
    a.TextSize = 18
    a.Font = Enum.Font.SourceSans
    a.TextXAlignment = "Left"
    a.Position = UDim2.new(0,pos,0,10)
    pos = pos + 205
end

return library
