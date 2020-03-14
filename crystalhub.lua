local library = {}

local itemcount = 32
local pos = 10
local ui = Instance.new("ScreenGui",game:GetService("CoreGui"))
local currentui = Instance

function library:CreateWindow(text)
   local a = Instance.new("TextButton",ui)
   a.Size = UDim2.new(0, 189,0, 32)
   a.TextColor3 = Color3.fromRGB(255,255,255)
   a.Text = "  " .. text
   a.Position = UDim2.new(0,counter,0,10)
   counter = counter + 205
end

return libary
