if game.CoreGui:FindFirstChild("tpui") then
    game.CoreGui.tpui:Destroy()
end

-- Instances:

local tpui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local Item = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local equip = Instance.new("TextButton")
local TextLabel = Instance.new("TextLabel")
local cred = Instance.new("TextLabel")

--Properties:

tpui.Name = "tpui"
tpui.Parent = game.CoreGui
tpui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = tpui
Frame.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Frame.BorderColor3 = Color3.fromRGB(70, 70, 70)
Frame.BorderSizePixel = 3
Frame.Position = UDim2.new(0.216921672, 0, 0.303490192, 0)
Frame.Size = UDim2.new(0, 127, 0, 179)
Frame.Visible = true
Frame.Active = true
Frame.Draggable = true

Item.Name = "Item"
Item.Parent = Frame
Item.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Item.Position = UDim2.new(0.0236220472, 0, 0.21487163, 0)
Item.Size = UDim2.new(0, 120, 0, 30)
Item.Font = Enum.Font.GothamSemibold
Item.Text = "Enter Player Name"
Item.TextColor3 = Color3.fromRGB(255, 255, 255)
Item.TextScaled = true
Item.TextSize = 14.000
Item.TextWrapped = true
Item.ClearTextOnFocus = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextButton.BorderColor3 = Color3.fromRGB(70, 70, 70)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.0404826477, 0, 0.695459962, 0)
TextButton.SelectionImageObject = Item
TextButton.Size = UDim2.new(0, 114, 0, 37)
TextButton.Font = Enum.Font.GothamBold
TextButton.Text = "Player Cash Will Be Displayed Here"
TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

equip.Name = "equip"
equip.Parent = Frame
equip.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
equip.BorderColor3 = Color3.fromRGB(70, 70, 70)
equip.BorderSizePixel = 3
equip.Position = UDim2.new(0.0399999991, 0, 0.439999998, 0)
equip.Size = UDim2.new(0, 114, 0, 37)
equip.Font = Enum.Font.GothamBold
equip.Text = "Get Cash Info"
equip.TextColor3 = Color3.fromRGB(255, 255, 255)
equip.TextScaled = true
equip.TextSize = 14.000
equip.TextWrapped = true

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
TextLabel.BorderColor3 = Color3.fromRGB(70, 70, 70)
TextLabel.BorderSizePixel = 3
TextLabel.Size = UDim2.new(0, 127, 0, 32)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Get Cash Info V1"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true

cred.Name = "cred"
cred.Parent = Frame
cred.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
cred.BorderSizePixel = 0
cred.Position = UDim2.new(0, 0, 0.938547492, 0)
cred.Size = UDim2.new(0, 127, 0, 11)
cred.Font = Enum.Font.GothamBold
cred.Text = "made by quacker"
cred.TextColor3 = Color3.fromRGB(255, 255, 255)
cred.TextScaled = true
cred.TextSize = 14.000
cred.TextWrapped = true



equip.MouseButton1Click:Connect(function()
    local item = string.lower(Item.Text)
    for i,v in pairs(game.Players:GetChildren()) do
        if string.lower(v.Name) == item then 
            for i2,v2 in pairs(game.Players[v.Name].leaderstats:GetChildren()) do
                if v2.Name == "displaycash" then
                    for _,bank in next, game.Players[v.Name].leaderstats:GetChildren() do
                        if bank.Name == "displaybank" then
                            print(v.Name .. " has ".. "$" .. tostring(v2.Value))
                            game.StarterGui:SetCore("SendNotification", {Title = "Searching...", Text = "Getting Info...", Icon = "", Duration = 1}) 
                            game.StarterGui:SetCore("SendNotification", {Title = "Search Complete", Text = tostring(v.Name.." has $" .. (v2.Value).." and $"..bank.Value.." in bank"), Icon = "", Duration = 3}) 
                            TextButton.Text = tostring(tostring(v.Name.." has $" .. (v2.Value).." and $"..bank.Value.." in bank"))
                            wait(8)
                            TextButton.Text = "Player Cash Will Be Displayed Here"
                        end
                    end
                end
            end
        end
    end
end)	
