--[[
_G.Webhook = "" --Put your webhook here
_G.Rarity = "" --Secret, Brainrot God or something else
_G.KeepTeleporting = true --Keep teleporting after webhook notify
]]


repeat wait() until game:IsLoaded() and game.Players.LocalPlayer and game.Players.LocalPlayer.Character

local StarterGui = game.CoreGui

if StarterGui:FindFirstChild("AutoJoiner") then
	return
end

local found = false
local HttpService = game:GetService("HttpService")
local TeleportService = game:GetService("TeleportService")

local ThingsToCreate = {
	["AutoJoiner"] = {
		ClassName = "ScreenGui",
		Enabled = true,
		Name = "AutoJoiner",
		Archivable = true,
		Children = {
			["TextButton"] = {
				ClassName = "TextButton",
				LayoutOrder = 0,
				TextWrapped = true,
				LineHeight = 1,
				Active = true,
				TextStrokeTransparency = 1,
				SizeConstraint = Enum.SizeConstraint.RelativeXY,
				ZIndex = 1,
				BorderSizePixel = 0,
				RichText = false,
				Modal = false,
				AutoButtonColor = true,
				ContentText = "Auto Connect",
				Transparency = 0,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextScaled = true,
				BackgroundColor3 = Color3.new(1, 0, 0),
				Selectable = true,
				AnchorPoint = Vector2.new(0, 0),
				TextSize = 14,
				Size = UDim2.new(0.119, 0,0.069, 0),
				Archivable = true,
				TextStrokeColor3 = Color3.new(0, 0, 0),
				TextTransparency = 0,
				ClipsDescendants = false,
				BorderColor3 = Color3.new(0, 0, 0),
				Text = "Auto Connect",
				BackgroundTransparency = 0,
				Position = UDim2.new(0.44, 0,0.913, 0),
				Rotation = 0,
				Font = Enum.Font.JosefinSans,
				Style = Enum.ButtonStyle.Custom,
				TextXAlignment = Enum.TextXAlignment.Center,
				Visible = true,
				MaxVisibleGraphemes = -1,
				Name = "TextButton",
				TextColor3 = Color3.new(0, 0, 0),
				Children = {
					["UICorner"] = {
						ClassName = "UICorner",
						Archivable = true,
						Name = "UICorner",
						CornerRadius = UDim.new(0.2,0)
					},
					["UIStroke"] = {
						ClassName = "UIStroke",
						Enabled = true,
						Transparency = 0,
						Name = "UIStroke",
						Color = Color3.new(0, 0, 0),
						Archivable = true,
						Thickness = 3,
						ApplyStrokeMode = Enum.ApplyStrokeMode.Border
					},
				},
			},
			["CREDITS"] = {
				ClassName = "TextLabel",
				LayoutOrder = 0,
				TextWrapped = true,
				LineHeight = 1,
				Active = false,
				TextStrokeTransparency = 1,
				SizeConstraint = Enum.SizeConstraint.RelativeXY,
				ZIndex = 1,
				BorderSizePixel = 0,
				RichText = false,
				ContentText = "Flames Hub Auto Joiner",
				Transparency = 1,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextScaled = true,
				BackgroundColor3 = Color3.new(1, 1, 1),
				Selectable = false,
				AnchorPoint = Vector2.new(0, 0),
				TextSize = 14,
				Size = UDim2.new(0.26194146275520325, 0, 0.042016807943582535, 0),
				ClipsDescendants = false,
				Archivable = true,
				TextColor3 = Color3.new(1, 1, 1),
				BorderColor3 = Color3.new(0, 0, 0),
				Text = "Flames Hub Auto Joiner",
				Visible = true,
				TextTransparency = 0.5,
				Rotation = 0,
				Font = Enum.Font.JosefinSans,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextStrokeColor3 = Color3.new(0, 0, 0),
				MaxVisibleGraphemes = -1,
				Position = UDim2.new(0.013867488130927086, 0, 0.9394958019256592, 0),
				Name = "CREDITS",
			},
			["SERVER"] = {
				ClassName = "TextLabel",
				LayoutOrder = 0,
				TextWrapped = true,
				LineHeight = 1,
				Active = false,
				TextStrokeTransparency = 1,
				SizeConstraint = Enum.SizeConstraint.RelativeXY,
				ZIndex = 1,
				BorderSizePixel = 0,
				RichText = false,
				ContentText = "https://discord.gg/GVNYud4rNS",
				Transparency = 1,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextScaled = true,
				BackgroundColor3 = Color3.new(1, 1, 1),
				Selectable = false,
				AnchorPoint = Vector2.new(0, 0),
				TextSize = 14,
				Size = UDim2.new(0.26194146275520325, 0, 0.042016807943582535, 0),
				ClipsDescendants = false,
				Archivable = true,
				TextColor3 = Color3.new(1, 1, 1),
				BorderColor3 = Color3.new(0, 0, 0),
				Text = "https://discord.gg/GVNYud4rNS",
				Visible = true,
				TextTransparency = 0.5,
				Rotation = 0,
				Font = Enum.Font.JosefinSans,
				BackgroundTransparency = 1,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextStrokeColor3 = Color3.new(0, 0, 0),
				MaxVisibleGraphemes = -1,
				Position = UDim2.new(0.7249614596366882, 0, 0.9394958019256592, 0),
				Name = "SERVER",
			},
		},
	},
}

local function createGui(data, parent)
	local obj = Instance.new(data.ClassName)
	for prop, value in pairs(data) do
		if prop ~= "ClassName" and prop ~= "Children" then
			pcall(function() obj[prop] = value end)
		end
	end
	if data.Children then
		for _, childData in pairs(data.Children) do
			createGui(childData, obj)
		end
	end
	obj.Parent = parent
	return obj
end

for _, data in pairs(ThingsToCreate) do
	createGui(data, StarterGui)
end

function SendMessageEMBED(url, embed)
	if not url then return end

	local http = game:GetService("HttpService")
	local headers = {
		["Content-Type"] = "application/json"
	}
	local data = {
		["content"] = "@everyone",
		["embeds"] = {
			{
				["title"] = embed.title,
				["description"] = embed.description,
				["color"] = embed.color,
				["fields"] = embed.fields,
				["footer"] = {
					["text"] = embed.footer.text
				}
			}
		}
	}
	local body = http:JSONEncode(data)
	local response = request({
		Url = url,
		Method = "POST",
		Headers = headers,
		Body = body
	})
end

local function hop()
	print("ServerHop Working")
	
	local servers = {}
	local req = game:HttpGet("https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Desc&limit=100&excludeFullGames=true")
	local body = HttpService:JSONDecode(req)

	if body and body.data then
		for i, v in next, body.data do
			if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers and v.id ~= game.JobId then
				table.insert(servers, 1, v.id)
			end
		end
	end

	if #servers > 0 then
		TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game.Players.LocalPlayer)
	else
		hop()
		warn("Couldn't find a server.")
	end
end

local embed = {
	["title"] = "🔥 FLAMES HUB - SAB AUTO JOINER 🔥",
	["description"] = "",
	["color"] = 15695665,
	["fields"] = {
		{
			["name"] = "🐶 Brainrot Info",
			["value"] = "``````"
		},
		{
			["name"] = "☎ Join",
			["value"] = "Join [Here](https://www.roblox.com/games/109253576074416/Flames-Hub-Joiner) With\n```game:GetService('TeleportService'):TeleportToPlaceInstance("..game.PlaceId..", "..'"'..game.JobId..'"'..", game.Players.LocalPlayer)```"
		}
	},
	["footer"] = {
		["text"] = ""
	}
}

local gui = StarterGui:WaitForChild("AutoJoiner")
local button = gui:WaitForChild("TextButton")

local tab = {
	["true"] = Color3.new(0.133333, 1, 0),
	["false"] = Color3.new(1, 0, 0),
	["nil"] = Color3.new(1, 0, 0)
}

button.MouseButton1Click:Connect(function()
	_G.JoinerEnabled = not _G.JoinerEnabled
end)

for _, rarity in workspace:GetDescendants() do
	if rarity:IsA("TextLabel") and rarity.Text == _G.Rarity and rarity.Name == "Rarity" then
		local sound = Instance.new("Sound",game.ReplicatedStorage)
		sound.Name = "FoundNotify"
		sound.SoundId = "rbxassetid://4590662766"
		sound.Volume = 10

		sound:Play()
		_G.JoinerEnabled = false
		found = true

		embed.fields[1]["value"] = "```"..rarity.Text.." - "..rarity.Parent.Mutation.Text.." "..rarity.Parent.DisplayName.Text.." ("..rarity.Parent.Generation.Text..")".."```"
		SendMessageEMBED(_G.Webhook,embed)
	end
end

if found and _G.KeepTeleporting == false then
	print("Destroying Menu")
	gui:Destroy()
end

while task.wait(1) do
	if found == true and _G.KeepTeleporting == false then break end
	
	button.BackgroundColor3 = tab[tostring(_G.JoinerEnabled)]

	if _G.JoinerEnabled == true then
		queue_on_teleport("_G.JoinerEnabled = ".."'"..tostring(_G.JoinerEnabled).."'".." _G.Webhook = ".."'"..tostring(_G.Webhook).."'".." _G.Rarity = ".."'"..(_G.Rarity or "Secret").."'".." loadstring(game:HttpGet('https://raw.githubusercontent.com/qWixxyLuau/FlamesHub/refs/heads/main/SAB_Joiner.lua'))()")
		print("hop loop")
		hop()
	end
end
