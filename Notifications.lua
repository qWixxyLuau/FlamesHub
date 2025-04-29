--_G.NotifySettings = {["Title"] = "success!",["Description"] = "jopapopa!",["Time"] = 10,["Color"] = Color3.fromRGB(148,148,148)}

if not game.CoreGui:FindFirstChild("NotificationsByFlamesHub") then

	local G2L = {};

	-- CoreGui.NotificationsByFlamesHub
	G2L["1"] = Instance.new("ScreenGui", game.CoreGui);
	G2L["1"]["Name"] = [[NotificationsByFlamesHub]];
	G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


	-- CoreGui.NotificationsByFlamesHub.Notifications
	G2L["2"] = Instance.new("Frame", G2L["1"]);
	G2L["2"]["BorderSizePixel"] = 0;
	G2L["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["2"]["Size"] = UDim2.new(0.24866, 0, 0.9623, 0);
	G2L["2"]["Position"] = UDim2.new(0.7383, 0, 0.01967, 0);
	G2L["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["2"]["Name"] = [[Notifications]];
	G2L["2"]["BackgroundTransparency"] = 1;


	-- CoreGui.NotificationsByFlamesHub.Notifications.UIListLayout
	G2L["3"] = Instance.new("UIListLayout", G2L["2"]);
	G2L["3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
	G2L["3"]["Padding"] = UDim.new(0.02, 0);
	G2L["3"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
	G2L["3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template
	G2L["4"] = Instance.new("CanvasGroup", G2L["2"]);
	G2L["4"]["Visible"] = false;
	G2L["4"]["BorderSizePixel"] = 0;
	G2L["4"]["BackgroundColor3"] = Color3.fromRGB(45, 45, 45);
	G2L["4"]["AnchorPoint"] = Vector2.new(0, 0.2);
	G2L["4"]["Size"] = UDim2.new(0.8, 0, 0.18, 0);
	G2L["4"]["Position"] = UDim2.new(0.782, 0, 0.81, 0);
	G2L["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["4"]["Name"] = [[Template]];


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template.Proccess
	G2L["5"] = Instance.new("CanvasGroup", G2L["4"]);
	G2L["5"]["BorderSizePixel"] = 0;
	G2L["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["5"]["Size"] = UDim2.new(1, 0, 0.06667, 0);
	G2L["5"]["Position"] = UDim2.new(0, 0, 0.93333, 0);
	G2L["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["5"]["Name"] = [[Proccess]];
	G2L["5"]["BackgroundTransparency"] = 1;


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template.Proccess.Frame
	G2L["6"] = Instance.new("Frame", G2L["5"]);
	G2L["6"]["BorderSizePixel"] = 0;
	G2L["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["6"]["Size"] = UDim2.new(1.49333, 0, 4.10476, 0);
	G2L["6"]["Position"] = UDim2.new(0, 0, -2.33333, 0);
	G2L["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template.Proccess.Frame.UIGradient
	G2L["7"] = Instance.new("UIGradient", G2L["6"]);
	G2L["7"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(148, 148, 148)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(27, 27, 27))};


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template.UIStroke
	G2L["8"] = Instance.new("UIStroke", G2L["4"]);
	G2L["8"]["Thickness"] = 2;
	G2L["8"]["Color"] = Color3.fromRGB(148, 148, 148);


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template.UICorner
	G2L["9"] = Instance.new("UICorner", G2L["4"]);
	G2L["9"]["CornerRadius"] = UDim.new(0.1, 0);


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template.Description
	G2L["a"] = Instance.new("TextLabel", G2L["4"]);
	G2L["a"]["TextWrapped"] = true;
	G2L["a"]["BorderSizePixel"] = 0;
	G2L["a"]["TextSize"] = 14;
	G2L["a"]["TextScaled"] = true;
	G2L["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["a"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	G2L["a"]["TextColor3"] = Color3.fromRGB(148, 148, 148);
	G2L["a"]["BackgroundTransparency"] = 1;
	G2L["a"]["Size"] = UDim2.new(0.85835, 0, 0.413, 0);
	G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["a"]["Text"] = [[Invalid Key!]];
	G2L["a"]["Name"] = [[Description]];
	G2L["a"]["Position"] = UDim2.new(0.06805, 0, 0.36478, 0);


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template.Title
	G2L["b"] = Instance.new("TextLabel", G2L["4"]);
	G2L["b"]["TextWrapped"] = true;
	G2L["b"]["BorderSizePixel"] = 0;
	G2L["b"]["TextSize"] = 14;
	G2L["b"]["TextScaled"] = true;
	G2L["b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
	G2L["b"]["FontFace"] = Font.new([[rbxassetid://16658221428]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
	G2L["b"]["TextColor3"] = Color3.fromRGB(121, 121, 121);
	G2L["b"]["BackgroundTransparency"] = 1;
	G2L["b"]["Size"] = UDim2.new(0.67552, 0, 0.22329, 0);
	G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["b"]["Text"] = [[Error!]];
	G2L["b"]["Name"] = [[Title]];
	G2L["b"]["Position"] = UDim2.new(0.16134, 0, -0.00665, 0);


	-- CoreGui.NotificationsByFlamesHub.Notifications.Template._
	G2L["c"] = Instance.new("Frame", G2L["4"]);
	G2L["c"]["BorderSizePixel"] = 0;
	G2L["c"]["BackgroundColor3"] = Color3.fromRGB(148, 148, 148);
	G2L["c"]["Size"] = UDim2.new(1, 0, 0.00952, 0);
	G2L["c"]["Position"] = UDim2.new(0, 0, 0.20712, 0);
	G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
	G2L["c"]["Name"] = [[_]];

	G2L["2"].ChildAdded:Connect(function(child)
		local Time = _G.NotifySettings["Time"]

		if child:IsA("CanvasGroup") then
			child.Visible = true
			child.Name = "Notify"..math.random(1,1000000)
			child.Size = UDim2.new(0,0,0,0)
			child:TweenSize(UDim2.new(0.8, 0,0.18, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.3)
			child:FindFirstChild("Title").Text = _G.NotifySettings["Title"]
			child:FindFirstChild("Description").Text = _G.NotifySettings["Description"]

			child:FindFirstChildOfClass("CanvasGroup"):TweenSize(UDim2.new(0, 0,0.067, 0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,Time)

			task.delay(Time+Time*0.1,function()
				child:TweenSize(UDim2.new(0,0,0,0),Enum.EasingDirection.Out,Enum.EasingStyle.Sine,0.3)
				task.delay(0.3,function()
					child:Destroy()
				end)
			end)
		end
	end)

	return G2L["1"], require;
end

local clone = game.CoreGui:FindFirstChild("NotificationsByFlamesHub"):FindFirstChild("Notifications"):FindFirstChild("Template"):Clone()
clone.Parent = game.CoreGui:FindFirstChild("NotificationsByFlamesHub").Notifications
clone.UIStroke.Color = _G.NotifySettings["Color"]
clone["_"].BackgroundColor3 = _G.NotifySettings["Color"]
clone.Description.TextColor3 = _G.NotifySettings["Color"]
clone.Title.TextColor3 = _G.NotifySettings["Color"]
clone.Proccess.Frame.UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, _G.NotifySettings["Color"]),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(27, 27, 27))};
