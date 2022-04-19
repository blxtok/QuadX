Library = loadstring(game:HttpGet('https://lindseyhost.com/UI/LinoriaLib.lua'))();

local Settings = {
	AutosellBTC = false,
	BTCSellTime = 0.5,
	AutobuyItem = false,
	AutobuyDelay = 1,
	AutoclaimSmallCrate = false,
	AutoclaimNormalCrate = false,
	AutoclaimBoost = false,
	AutoOverclock = false,
	Walkspeed = false,
	JumpPower = false,
	HipHeight = false,
	TextAnimation = false
}

local ESP = {
    Enabled = true,
    Boxes = true,
    BoxShift = CFrame.new(0,-1.5,0),
	BoxSize = Vector3.new(4,6,0),
    Color = Color3.fromRGB(255, 170, 0),
    FaceCamera = false,
    Names = true,
    TeamColor = true,
    Thickness = 2,
    AttachShift = 1,
    TeamMates = true,
    Players = true,
    
    Objects = setmetatable({}, {__mode="kv"}),
    Overrides = {}
}

local btc = game.Players.LocalPlayer.leaderstats.BitCoins.Value
local mouse = game:GetService('Players').LocalPlayer:GetMouse()
local quadx = "Quad X"

function exchangebtc()
    local args = {
        [1] = true
    }

    game:GetService("ReplicatedStorage").Events.ExchangeMoney:FireServer(unpack(args))
end

function autobuyshop(card,number)
	local args = {
		[1] = card,
		[2] = workspace.Shops.Region_shop.Shows:FindFirstChild(number)
	}

	game:GetService("ReplicatedStorage").Events.BuyCard:FireServer(unpack(args))
end

function autobuydant(card,number)
	local args = {
		[1] = card,
		[2] = workspace.Shops.Region_DanT.Shows:FindFirstChild(number)
	}

	game:GetService("ReplicatedStorage").Events.BuyCard:FireServer(unpack(args))
end

function autobuyflux(card,number)
	local args = {
		[1] = card,
		[2] = workspace.Shops.Region_fluxShop.Shows:FindFirstChild(number)
	}

	game:GetService("ReplicatedStorage").Events.BuyCard:FireServer(unpack(args))
end

function autobuyminerdevice(card,number)
	local args = {
		[1] = card,
		[2] = workspace.Shops.Region_Mining_Device.Shows:FindFirstChild(number)
	}

	game:GetService("ReplicatedStorage").Events.BuyCard:FireServer(unpack(args))
end

function autobuychypset(card,number)
	local args = {
		[1] = card,
		[2] = workspace.Shops.Region_Chypset.Shows:FindFirstChild(number)
	}

	game:GetService("ReplicatedStorage").Events.BuyCard:FireServer(unpack(args))
end

function tpshop()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(246.462601, 6.59218264, 92.1437378, -0.00199863943, -0.000296479091, -0.999997973, 2.67664041e-06, 0.99999994, -0.000296485028, 0.999997973, -3.26920167e-06, -0.0019986385)
end

function tpdant()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-43.9297943, 6.94009638, -702.648865, -0.46981594, 8.91146144e-08, 0.882764399, 1.67648135e-08, 1, -9.20270864e-08, -0.882764399, -2.84364141e-08, -0.46981594)
end

function tpflux()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(127.463326, 7.90536165, -698.488831, -0.867074728, 1.293611e-08, -0.498178095, 1.5880401e-08, 1, -1.67286418e-09, 0.498178095, -9.36176647e-09, -0.867074728)
end

function tpminerdevice()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-50.3539276, 6.60819626, -892.942078, 0.77403456, 6.5507173e-08, -0.633143365, -6.18729885e-08, 1, 2.78220398e-08, 0.633143365, 1.76392518e-08, 0.77403456)
end

function tpchypset()
	game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-251.946747, 6.86687994, -1150.7196, 0.679469109, 5.49955885e-08, -0.73370409, -5.23818287e-08, 1, 2.6446294e-08, 0.73370409, 2.04633217e-08, 0.679469109)
end

local GraphicCardValue = "Budget Graphic Card - $40"

function buyselectedcard()
	if GraphicCardValue == "Budget Graphic Card - $40" then
		autobuyshop("Budget Graphic Card", "1")
		tpshop()
	elseif GraphicCardValue == "Weak Graphic Card - $85" then
		autobuyshop("Weak Graphic Card","2")
		tpshop()
	elseif GraphicCardValue == "Slow Graphic Card - $160" then
		autobuyshop("Slow Graphic Card","3")
		tpshop()
	elseif GraphicCardValue == "Double Fan Card - $450" then
		autobuyshop("Double Fan Card","4")
		tpshop()
	elseif GraphicCardValue == "Mining Device - $2.5K" then
		autobuyshop("Mining Device","5")
		tpshop()
	elseif GraphicCardValue == "Mining Device V2 - $10K" then
		autobuyshop("Mining Device V2","6")
		tpshop()
	elseif GraphicCardValue == "Silver Card - $40K" then
		autobuyshop("Silver Card","7")
		tpshop()
	elseif GraphicCardValue == "Diamond Card - $100K" then
		autobuyshop("Diamond Card", "8")
		tpshop()
	elseif GraphicCardValue == "GeProce PTX 970 - $500K" then
		autobuyshop("GeProce PTX 970","9")
		tpshop()
	elseif GraphicCardValue == "GeProce PTX 1050 - $2M" then
		autobuyshop("GeProce PTX 1050","10")
		tpshop()
	elseif GraphicCardValue == "GeProce PTX 1080 - $5M" then
		autobuyshop("GeProce PTX 1080","11")
		tpshop()
	elseif GraphicCardValue == "GeProceHTX 2000 - $12M" then
		autobuyshop("GeProceHTX 2000","12")
		tpshop()
	elseif GraphicCardValue == "Radon 6000 - $50M" then
		autobuyshop("Radon 6000","13")
		tpshop()
	elseif GraphicCardValue == "GeProceHTX 3000 - $275M" then
		autobuyshop("GeProceHTX 3000","14")
		tpshop()
	elseif GraphicCardValue == "Dant Open 130 - $40M" then
		autobuydant("Dant Open 130","1")
		tpdant()
	elseif GraphicCardValue == "Dant Card 200 - $65M" then
		autobuydant("Dant Card 200","2")
		tpdant()
	elseif GraphicCardValue == "Dant Card 500 - $125M" then
		autobuydant("Dant Card 500","3")
		tpdant()
	elseif GraphicCardValue == "Dant Open 250 - $350M" then
		autobuydant("Dant Open 250","4")
		tpdant()
	elseif GraphicCardValue == "Dant Card 600 - $1.5B" then
		autobuydant("Dant Card 600","5")
		tpdant()
	elseif GraphicCardValue == "Dant Ov 130 [Lvl 1] - $45M" then
		autobuydant("Dant Ov 130","6")
		tpdant()
	elseif GraphicCardValue == "Dant Overclocking Station - $150M" then
		autobuydant("Dant Overclocking Station","7")
		tpdant()
	elseif GraphicCardValue == "CoreDezintegrator - $20B" then
		autobuydant("CoreDezintegrator","8")
		tpdant()
	elseif GraphicCardValue == "Dant Open 500 - $1B" then
		autobuydant("Dant Open 500","9")
		tpdant()
	elseif GraphicCardValue == "FluxCard150 - $10M" then
		autobuyflux("FluxCard150","1")
		tpflux()
	elseif GraphicCardValue == "FluxCardSlim - $15M" then
		autobuyflux("FluxCardSlim","2")
		tpflux()
	elseif GraphicCardValue == "FluxCardSlimV2 - $16.5M" then
		autobuyflux("FluxCardSlimV2","3")
		tpflux()
	elseif GraphicCardValue == "FluxCard 200 - $35M" then
		autobuyflux("FluxCard 200","4")
		tpflux()
	elseif GraphicCardValue == "FluxCard350 - $40M" then
		autobuyflux("FluxCard350","5")
		tpflux()
	elseif GraphicCardValue == "FluxTable - $75M" then
		autobuyflux("FluxTable","6")
		tpflux()
	elseif GraphicCardValue == "FluxTower - $1.2B" then
		autobuyflux("FluxTower","7")
		tpflux()
	elseif GraphicCardValue == "FluxCard Omega -  $16.5B" then
		autobuyflux("FluxCard Omega","8")
		tpflux()
	elseif GraphicCardValue == "FluxCard Omega X - $50B" then
		autobuyflux("FluxCard Omega X","9")
		tpflux()
	elseif GraphicCardValue == "FluxCard Omega Z - $75B" then
		autobuyflux("FluxCard Omega Z","10")
		tpflux()
	elseif GraphicCardValue == "Miner Device 150 - $4.5M" then
		autobuyminerdevice("Miner Device 150","1")
		tpminerdevice()
	elseif GraphicCardValue == "Miner Device 200 - $8M" then
		autobuyminerdevice("Miner Device 200","2")
		tpminerdevice()
	elseif GraphicCardValue == "Mining Device nT1 - $15M" then
		autobuyminerdevice("Mining Device nT1","3")
		tpminerdevice()
	elseif GraphicCardValue == "Mining Device 350 - $40M" then
		autobuyminerdevice("Mining Device 350","4")
		tpminerdevice()
	elseif GraphicCardValue == "Mining Device nT2 - $225.6M" then
		autobuyminerdevice("Mining Device nT2","5")
		tpminerdevice()
	elseif GraphicCardValue == "Super Mining Device - $880M" then
		autobuyminerdevice("Super Mining Device","6")
		tpminerdevice()
	elseif GraphicCardValue == "Chypset A1 - $22B" then
		autobuychypset("Chypset A1","1")
		tpchypset()
	elseif GraphicCardValue == "Chypset A2 - $30B" then
		autobuychypset("Chypset A2","2")
		tpchypset()
	elseif GraphicCardValue == "Chypset Dragon - $38B" then
		autobuychypset("Chypset Dragon","3")
		tpchypset()
	elseif GraphicCardValue == "Chypset Dragon 2 - $80B" then
		autobuychypset("Chypset Dragon 2","4")
		tpchypset()
	elseif GraphicCardValue == "Chypset Dragon 100 - $120B" then
		autobuychypset("Chypset Dragon 100","5")
		tpchypset()
	elseif GraphicCardValue == "Chypset B1 - $150B" then
		autobuychypset("Chypset B1","6")
		tpchypset()
	elseif GraphicCardValue == "Chypset Dragon 300 - $185B" then
		autobuychypset("Chypset Dragon 300","7")
		tpchypset()
	end
end

function loadesp()
	--Declarations--
	local cam = workspace.CurrentCamera
	local plrs = game:GetService("Players")
	local plr = plrs.LocalPlayer
	local mouse = plr:GetMouse()

	local V3new = Vector3.new
	local WorldToViewportPoint = cam.WorldToViewportPoint

	--Functions--
	local function Draw(obj, props)
		local new = Drawing.new(obj)

		props = props or {}
		for i,v in pairs(props) do
			new[i] = v
		end
		return new
	end

	function ESP:GetTeam(p)
		local ov = self.Overrides.GetTeam
		if ov then
			return ov(p)
		end

		return p and p.Team
	end

	function ESP:IsTeamMate(p)
		local ov = self.Overrides.IsTeamMate
		if ov then
			return ov(p)
		end

		return self:GetTeam(p) == self:GetTeam(plr)
	end

	function ESP:GetColor(obj)
		local ov = self.Overrides.GetColor
		if ov then
			return ov(obj)
		end
		local p = self:GetPlrFromChar(obj)
		return p and self.TeamColor and p.Team and p.Team.TeamColor.Color or self.Color
	end

	function ESP:GetPlrFromChar(char)
		local ov = self.Overrides.GetPlrFromChar
		if ov then
			return ov(char)
		end

		return plrs:GetPlayerFromCharacter(char)
	end

	function ESP:Toggle(bool)
		self.Enabled = bool
		if not bool then
			for i,v in pairs(self.Objects) do
				if v.Type == "Box" then --fov circle etc
					if v.Temporary then
						v:Remove()
					else
						for i,v in pairs(v.Components) do
							v.Visible = false
						end
					end
				end
			end
		end
	end

	function ESP:GetBox(obj)
		return self.Objects[obj]
	end

	function ESP:AddObjectListener(parent, options)
		local function NewListener(c)
			if type(options.Type) == "string" and c:IsA(options.Type) or options.Type == nil then
				if type(options.Name) == "string" and c.Name == options.Name or options.Name == nil then
					if not options.Validator or options.Validator(c) then
						local box = ESP:Add(c, {
							PrimaryPart = type(options.PrimaryPart) == "string" and c:WaitForChild(options.PrimaryPart) or type(options.PrimaryPart) == "function" and options.PrimaryPart(c),
							Color = type(options.Color) == "function" and options.Color(c) or options.Color,
							ColorDynamic = options.ColorDynamic,
							Name = type(options.CustomName) == "function" and options.CustomName(c) or options.CustomName,
							IsEnabled = options.IsEnabled,
							RenderInNil = options.RenderInNil
						})
						--TODO: add a better way of passing options
						if options.OnAdded then
							coroutine.wrap(options.OnAdded)(box)
						end
					end
				end
			end
		end

		if options.Recursive then
			parent.DescendantAdded:Connect(NewListener)
			for i,v in pairs(parent:GetDescendants()) do
				coroutine.wrap(NewListener)(v)
			end
		else
			parent.ChildAdded:Connect(NewListener)
			for i,v in pairs(parent:GetChildren()) do
				coroutine.wrap(NewListener)(v)
			end
		end
	end

	local boxBase = {}
	boxBase.__index = boxBase

	function boxBase:Remove()
		ESP.Objects[self.Object] = nil
		for i,v in pairs(self.Components) do
			v.Visible = false
			v:Remove()
			self.Components[i] = nil
		end
	end

	function boxBase:Update()
		if not self.PrimaryPart then
			--warn("not supposed to print", self.Object)
			return self:Remove()
		end

		local color
		if ESP.Highlighted == self.Object then
			color = ESP.HighlightColor
		else
			color = self.Color or self.ColorDynamic and self:ColorDynamic() or ESP:GetColor(self.Object) or ESP.Color
		end

		local allow = true
		if ESP.Overrides.UpdateAllow and not ESP.Overrides.UpdateAllow(self) then
			allow = false
		end
		if self.Player and not ESP.TeamMates and ESP:IsTeamMate(self.Player) then
			allow = false
		end
		if self.Player and not ESP.Players then
			allow = false
		end
		if self.IsEnabled and (type(self.IsEnabled) == "string" and not ESP[self.IsEnabled] or type(self.IsEnabled) == "function" and not self:IsEnabled()) then
			allow = false
		end
		if not workspace:IsAncestorOf(self.PrimaryPart) and not self.RenderInNil then
			allow = false
		end

		if not allow then
			for i,v in pairs(self.Components) do
				v.Visible = false
			end
			return
		end

		if ESP.Highlighted == self.Object then
			color = ESP.HighlightColor
		end

		--calculations--
		local cf = self.PrimaryPart.CFrame
		if ESP.FaceCamera then
			cf = CFrame.new(cf.p, cam.CFrame.p)
		end
		local size = self.Size
		local locs = {
			TopLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,size.Y/2,0),
			TopRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,size.Y/2,0),
			BottomLeft = cf * ESP.BoxShift * CFrame.new(size.X/2,-size.Y/2,0),
			BottomRight = cf * ESP.BoxShift * CFrame.new(-size.X/2,-size.Y/2,0),
			TagPos = cf * ESP.BoxShift * CFrame.new(0,size.Y/2,0),
			Torso = cf * ESP.BoxShift
		}

		if ESP.Boxes then
			local TopLeft, Vis1 = WorldToViewportPoint(cam, locs.TopLeft.p)
			local TopRight, Vis2 = WorldToViewportPoint(cam, locs.TopRight.p)
			local BottomLeft, Vis3 = WorldToViewportPoint(cam, locs.BottomLeft.p)
			local BottomRight, Vis4 = WorldToViewportPoint(cam, locs.BottomRight.p)

			if self.Components.Quad then
				if Vis1 or Vis2 or Vis3 or Vis4 then
					self.Components.Quad.Visible = true
					self.Components.Quad.PointA = Vector2.new(TopRight.X, TopRight.Y)
					self.Components.Quad.PointB = Vector2.new(TopLeft.X, TopLeft.Y)
					self.Components.Quad.PointC = Vector2.new(BottomLeft.X, BottomLeft.Y)
					self.Components.Quad.PointD = Vector2.new(BottomRight.X, BottomRight.Y)
					self.Components.Quad.Color = color
				else
					self.Components.Quad.Visible = false
				end
			end
		else
			self.Components.Quad.Visible = false
		end

		if ESP.Names then
			local TagPos, Vis5 = WorldToViewportPoint(cam, locs.TagPos.p)

			if Vis5 then
				self.Components.Name.Visible = true
				self.Components.Name.Position = Vector2.new(TagPos.X, TagPos.Y)
				self.Components.Name.Text = self.Name
				self.Components.Name.Color = color

				self.Components.Distance.Visible = true
				self.Components.Distance.Position = Vector2.new(TagPos.X, TagPos.Y + 14)
				self.Components.Distance.Text = math.floor((cam.CFrame.p - cf.p).magnitude) .."m away"
				self.Components.Distance.Color = color
			else
				self.Components.Name.Visible = false
				self.Components.Distance.Visible = false
			end
		else
			self.Components.Name.Visible = false
			self.Components.Distance.Visible = false
		end

		if ESP.Tracers then
			local TorsoPos, Vis6 = WorldToViewportPoint(cam, locs.Torso.p)

			if Vis6 then
				self.Components.Tracer.Visible = true
				self.Components.Tracer.From = Vector2.new(TorsoPos.X, TorsoPos.Y)
				self.Components.Tracer.To = Vector2.new(cam.ViewportSize.X/2,cam.ViewportSize.Y/ESP.AttachShift)
				self.Components.Tracer.Color = color
			else
				self.Components.Tracer.Visible = false
			end
		else
			self.Components.Tracer.Visible = false
		end
	end

	function ESP:Add(obj, options)
		if not obj.Parent and not options.RenderInNil then
			return warn(obj, "has no parent")
		end

		local box = setmetatable({
			Name = options.Name or obj.Name,
			Type = "Box",
			Color = options.Color --[[or self:GetColor(obj)]],
			Size = options.Size or self.BoxSize,
			Object = obj,
			Player = options.Player or plrs:GetPlayerFromCharacter(obj),
			PrimaryPart = options.PrimaryPart or obj.ClassName == "Model" and (obj.PrimaryPart or obj:FindFirstChild("HumanoidRootPart") or obj:FindFirstChildWhichIsA("BasePart")) or obj:IsA("BasePart") and obj,
			Components = {},
			IsEnabled = options.IsEnabled,
			Temporary = options.Temporary,
			ColorDynamic = options.ColorDynamic,
			RenderInNil = options.RenderInNil
		}, boxBase)

		if self:GetBox(obj) then
			self:GetBox(obj):Remove()
		end

		box.Components["Quad"] = Draw("Quad", {
			Thickness = self.Thickness,
			Color = color,
			Transparency = 1,
			Filled = false,
			Visible = self.Enabled and self.Boxes
		})
		box.Components["Name"] = Draw("Text", {
			Text = box.Name,
			Color = box.Color,
			Center = true,
			Outline = true,
			Size = 19,
			Visible = self.Enabled and self.Names
		})
		box.Components["Distance"] = Draw("Text", {
			Color = box.Color,
			Center = true,
			Outline = true,
			Size = 19,
			Visible = self.Enabled and self.Names
		})

		box.Components["Tracer"] = Draw("Line", {
			Thickness = ESP.Thickness,
			Color = box.Color,
			Transparency = 1,
			Visible = self.Enabled and self.Tracers
		})
		self.Objects[obj] = box

		obj.AncestryChanged:Connect(function(_, parent)
			if parent == nil and ESP.AutoRemove ~= false then
				box:Remove()
			end
		end)
		obj:GetPropertyChangedSignal("Parent"):Connect(function()
			if obj.Parent == nil and ESP.AutoRemove ~= false then
				box:Remove()
			end
		end)

		local hum = obj:FindFirstChildOfClass("Humanoid")
		if hum then
			hum.Died:Connect(function()
				if ESP.AutoRemove ~= false then
					box:Remove()
				end
			end)
		end

		return box
	end

	local function CharAdded(char)
		local p = plrs:GetPlayerFromCharacter(char)
		if not char:FindFirstChild("HumanoidRootPart") then
			local ev
			ev = char.ChildAdded:Connect(function(c)
				if c.Name == "HumanoidRootPart" then
					ev:Disconnect()
					ESP:Add(char, {
						Name = p.Name,
						Player = p,
						PrimaryPart = c
					})
				end
			end)
		else
			ESP:Add(char, {
				Name = p.Name,
				Player = p,
				PrimaryPart = char.HumanoidRootPart
			})
		end
	end
	local function PlayerAdded(p)
		p.CharacterAdded:Connect(CharAdded)
		if p.Character then
			coroutine.wrap(CharAdded)(p.Character)
		end
	end
	plrs.PlayerAdded:Connect(PlayerAdded)
	for i,v in pairs(plrs:GetPlayers()) do
		if v ~= plr then
			PlayerAdded(v)
		end
	end

	game:GetService("RunService").RenderStepped:Connect(function()
		cam = workspace.CurrentCamera
		for i,v in (ESP.Enabled and pairs or ipairs)(ESP.Objects) do
			if v.Update then
				local s,e = pcall(v.Update, v)
				if not s then warn("[EU]", e, v.Object:GetFullName()) end
			end
		end
	end)

	return ESP
end

local hrp = game.Players.LocalPlayer.Character.HumanoidRootPart
local mevtp = ""

function teleportarea()
	if mevtp == "Shop" then
		tpshop()
	elseif mevtp == "Plots" then
		hrp.CFrame = CFrame.new(39.2172279, 6.56743479, 34.6899033, 0.932979167, -9.82901511e-08, 0.359930336, 7.92992694e-08, 1, 6.75285747e-08, -0.359930336, -3.44605446e-08, 0.932979167)
	elseif mevtp == "DanT Shop" then
		tpdant()
	elseif mevtp == "Flux Shop" then
		tpflux()
	elseif mevtp == "Chypset" then
		tpchypset()
	elseif mevtp == "MinerToolz" then
		tpminerdevice()
	elseif mevtp == "Solaris City" then
		hrp.CFrame = CFrame.new(-147.261948, 26.9868717, 13963.4092, 0.999970853, 7.82946969e-08, -0.00763200922, -7.80954039e-08, 1, 2.64109943e-08, 0.00763200922, -2.58142006e-08, 0.999970853)
	elseif mevtp == "Train" then
		hrp.CFrame = CFrame.new(-187.803909, -21.0289268, 145.715225, -0.106578059, -1.7141113e-09, 0.994304359, 2.13929106e-08, 1, 4.01700539e-09, -0.994304359, 2.16991882e-08, -0.106578059)
	elseif mevtp == "Plots Seller" then
		hrp.CFrame = CFrame.new(-120.733147, 6.71522665, 91.8757324, 0.0115321921, -1.00249615e-07, 0.999933481, -9.01314134e-09, 1, 1.00360232e-07, -0.999933481, -1.01699156e-08, 0.0115321921)
	elseif mevtp == "OptiX" then
		hrp.CFrame = CFrame.new(-236.09639, 26.9868717, 13803.418, 0.723614573, -6.21737399e-08, 0.690204263, 6.01055206e-08, 1, 2.70651874e-08, -0.690204263, 2.19003233e-08, 0.723614573)
	elseif mevtp == "Solaris Generators" then
		hrp.CFrame = CFrame.new(-233.708298, 26.9867954, 13892.0791, -0.127206683, -1.29554181e-08, 0.991876245, -1.41192913e-09, 1, 1.28804487e-08, -0.991876245, 2.38020215e-10, -0.127206683)
	elseif mevtp == "GenEX" then
		hrp.CFrame = CFrame.new(-74.6621246, 26.9868698, 13747.1416, 0.927478969, -1.67705441e-08, -0.37387529, 1.03631557e-08, 1, -1.91479224e-08, 0.37387529, 1.38847689e-08, 0.927478969)
	elseif mevtp == "Solaris Electronics" then
		hrp.CFrame = CFrame.new(-10.7534018, 26.9868698, 13777.7783, 0.270344287, 7.08477614e-08, -0.962763727, -7.56788132e-10, 1, 7.33753964e-08, 0.962763727, -1.91080112e-08, 0.270344287)
	elseif mevtp == "Xeno" then
		hrp.CFrame = CFrame.new(34.174469, 26.7655277, 13958.665, -0.905699193, 3.47667561e-09, -0.423920959, 3.27961036e-09, 1, 1.19440924e-09, 0.423920959, -3.08520043e-10, -0.905699193)
	elseif mevtp == "Prism Works" then
		hrp.CFrame = CFrame.new(70.6743393, 26.9207993, 13921.5547, -0.215846926, -4.40815775e-08, -0.976427197, 8.94940442e-08, 1, -6.49291536e-08, 0.976427197, -1.01399181e-07, -0.215846926)
	elseif mevtp == "Arctic" then
		hrp.CFrame = CFrame.new(-147.214127, 29.5122509, 13652.79, 0.962490559, 2.55961634e-08, 0.271315247, -2.2546967e-08, 1, -1.43557006e-08, -0.271315247, 7.69988961e-09, 0.962490559)
	end
end

function load_AutosellBTC()
	while Settings.AutosellBTC do
		if btc > 0 then
			wait(Settings.BTCSellTime)
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(246.462601, 6.59218264, 92.1437378, -0.00199863943, -0.000296479091, -0.999997973, 2.67664041e-06, 0.99999994, -0.000296485028, 0.999997973, -3.26920167e-06, -0.0019986385)
			wait(0.5)
			exchangebtc()
		end
	end
end

function load_AutobuyItem()
	while Settings.AutobuyItem do
		wait(Settings.AutobuyDelay)
		buyselectedcard()
	end
end

function load_AutoclaimSmallCrate()
	while Settings.AutoclaimSmallCrate do
		wait(1)
		local args = {
			[1] = true
		}
		
		game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
		wait(240)
	end
end

function load_AutoclaimNormalCrate()
	while Settings.AutoclaimNormalCrate do
		wait(1)
		local args = {
			[1] = false
		}
		
		game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
		wait(240)
	end
end

function load_AutoclaimBoost()
	while Settings.AutoclaimBoost do
		wait(3)
		if game.Players.LocalPlayer.PlayerGui.Boosts.Bar.TextLabel.TextButton.Visible == true then
			game:GetService("ReplicatedStorage").Events.ClaimFreeBoostStar:FireServer()
		end
	end
end

function load_AutoOverclock()
	while Settings.AutoOverclock do
		wait(3)
		if game.Players.LocalPlayer.PlayerGui.Energy.Frame.Overclock.Overclock.Lock.Visible == false then
			game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer()
		end
	end
end

function load_antiplogger()
	local old 
    local request = syn.request or http_request or request
    old = hookfunction(request, function(...)
        local args = {...}
        if args[1]['Url']:find("ipify")or("checkip")or("ip-api")then
            return 'haha, no.'
        end
        return old(...)
    end)
    local old2
    old2 = hookfunction(game.HttpGet, function(...)
        local args = {...}
        if args[2]:find("ipify")or("checkip")or("ip-api")then
            return 'haha, no.'
        end
        return old2(...)
    end)
end

local version = "1.0.1b"

local xhanware = Library:CreateWindow(quadx .. ' | v' .. version);
Library:SetWatermark('Press Right CTRL for open UI');
Library:Notify('Loading UI...');
wait(1)
Library:Notify('Welcome to Quad X');

local menu = xhanware:AddTab('Menu');

local gameinfotab = menu:AddLeftTabbox('Game Info')
local gameinfo = gameinfotab:AddTab('Info')

local executor = "Undetected"

if syn then 
	executor = "Synapse X"
end

gameinfo:AddBlank(3)
gameinfo:AddLabel('Game Name: Bitcoin Miner ⛏️')
gameinfo:AddLabel('Game ID: ' .. game.PlaceId)
gameinfo:AddLabel('Executor: ' .. executor)
gameinfo:AddLabel('Date: ' .. os.date())

local versionntab = menu:AddLeftTabbox('Version')
local versionn = versionntab:AddTab('Version')

versionn:AddBlank(3)
versionn:AddLabel('Version ' .. version)

local updates = menu:AddLeftTabbox('Updates');
local updates2 = updates:AddTab('Updates');

updates2:AddBlank(3);

updates2:AddLabel('Changed UI Library.');
updates2:AddLabel('Added new features.');
updates2:AddLabel('Added Teleports [MAX]');

local scriptinfotab = menu:AddRightTabbox('Script Info')
local scriptinfo = scriptinfotab:AddTab('Script Info')

scriptinfo:AddBlank(3)

scriptinfo:AddButton('Join Discord Server', function()
	if syn then
		JoinDiscord("https://discord.gg/jcnZzttk9F")
	else
		Library:Notify("You need Synapse X")
	end
end)
scriptinfo:AddButton('Copy Discord Server', function()
	setclipboard('https://discord.gg/jcnZzttk9F')
end)
scriptinfo:AddButton('Website')

local autofarm = xhanware:AddTab('Autofarm');

local autosell = autofarm:AddLeftTabbox('Autosell');
local asbtc = autosell:AddTab('BTC');

asbtc:AddBlank(3);

asbtc:AddToggle('AutosellBTC', { Text = 'Autosell BTC', Default = false }):OnChanged(function()
	Settings.AutosellBTC = Toggles.AutosellBTC.Value
	load_AutosellBTC()
end)

asbtc:AddSlider('SBellTime', { Text = 'Sell Time', Default = 1, Min = 1, Max = 60, Rounding = 1 }):OnChanged(function()
	Settings.BTCSellTime = Options.SBellTime.Value
end)

asbtc:AddButton('Sell 1x', function()
	if btc < 0 then
		Library:Notify("You don't have bitcoin!")
	elseif Settings.AutosellBTC == true then
		Library:Notify("Your BitCoins are already selling!")
	else
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(246.462601, 6.59218264, 92.1437378, -0.00199863943, -0.000296479091, -0.999997973, 2.67664041e-06, 0.99999994, -0.000296485028, 0.999997973, -3.26920167e-06, -0.0019986385)
		wait(0.1)
		exchangebtc()
	end
end)

local assc = autosell:AddTab('Solaris');

assc:AddBlank(3)

assc:AddToggle('Autosell Solaris', { Text = 'Autosell Solaris' });
assc:AddSlider('SSellTime', { Text = 'Sell Time', Default = 1, Min = 1, Max = 60, Rounding = 0.5 });
assc:AddButton('Sell 1x');

local autobuytab = autofarm:AddLeftTabbox('Autobuy');
local autobuy = autobuytab:AddTab('Autobuy');

autobuy:AddBlank(3);

autobuy:AddToggle('AutobuyItem', { Text = 'Autobuy Item' }):OnChanged(function()
	Settings.AutobuyItem = Toggles.AutobuyItem.Value
	load_AutobuyItem()
end)

autobuy:AddSlider('AutobuyDelay', { Text = 'Delay', Default = 1, Min = 1, Max = 60, Rounding = 1, Suffix = 's' }):OnChanged(function()
	Settings.AutobuyDelay = Options.AutobuyDelay.Value
end)

autobuy:AddBlank(3);
autobuy:AddDropdown('GraphicCard', { Text = 'Graphic Card', Default = 1, Values = {"Budget Graphic Card - $40","Weak Graphic Card - $85","Slow Graphic Card - $160","Double Fan Card - $540","Mining Device - $2.5K","Mining Device V2 - $10K","Silver Card - $40K","Diamond Card - $100K","GeProce PTX 970 - $500K","GeProce PTX 1050 - $2M","GeProce PTX 1080 - $5M","GeProceHTX 2000 - $12M","Radon 6000 - $50M","GeProceHTX 3000 - $275M", "Dant Open 130 - $40M", "Dant Card 200 - $65M", "Dant Card 500 - $125M","Dant Open 250 - $350M","Dant Card 600 - $1.5B","Dant Ov 130 [Lvl 1] - $45M","Dant Overclocking Station - $150M","CoreDezintegrator - $20B", "Dant Open 500 - $1B", "FluxCard150 - $10M","FluxCardSlim - $15M","FluxCardSlimV2 - $16.5M","FluxCard 200 - $35M","FluxCard350 - $40M","FluxTable - $75M","FluxTower - $1.2B","FluxCard Omega -  $16.5B","FluxCard Omega X - $50B","FluxCard Omega Z - $75B","Miner Device 150 - $4.5M","Miner Device 200 - $8M","Mining Device nT1 - $15M","Mining Device 350 - $40M","Mining Device nT2 - $225.6M","Super Mining Device - $880M","Chypset A1 - $22B","Chypset A2 - $30B","Chypset Dragon - $38B","Chypset Dragon 2 - $80B","Chypset Dragon 100 - $120B","Chypset B1 - $150B","Chypset Dragon 300 - $185B"} }):OnChanged(function()
	GraphicCardValue = Options.GraphicCard.Value
end)

autobuy:AddButton('Buy 1x', function()
	buyselectedcard()
end)

autobuy:AddButton('Buy 3x', function()
	buyselectedcard()
	wait(0.1)
	buyselectedcard()
	wait(0.1)
	buyselectedcard()
end)

autobuy:AddButton('Buy 5x', function()
	buyselectedcard()
	wait(0.1)
	buyselectedcard()
	wait(0.1)
	buyselectedcard()
	wait(0.1)
	buyselectedcard()
	wait(0.1)
	buyselectedcard()
end)

local autoclaimtab = autofarm:AddRightTabbox('Autoclaim');
local autoclaim = autoclaimtab:AddTab('Autoclaim');

autoclaim:AddBlank(3)
autoclaim:AddToggle('AutoclaimSmallCrate', { Text = 'Autoclaim Small Crate' }):OnChanged(function()
	Settings.AutoclaimSmallCrate = Toggles.AutoclaimSmallCrate.Value
	load_AutoclaimSmallCrate()
end)

autoclaim:AddToggle('AutoclaimNormalCrate', { Text = 'Autoclaim Normal Crate' }):OnChanged(function()
	Settings.AutoclaimNormalCrate = Toggles.AutoclaimNormalCrate.Value
	load_AutoclaimNormalCrate()
end)

autoclaim:AddToggle('AutoclaimBoostStar', { Text = 'Autoclaim Boost Star' }):OnChanged(function()
	Settings.AutoclaimBoost = Toggles.AutoclaimBoostStar.Value
	load_AutoclaimBoost()
end)

autoclaim:AddToggle('AutoOverclock', { Text = 'Auto Overclock' }):OnChanged(function()
	Settings.AutoOverclock = Toggles.AutoOverclock.Value
	load_AutoOverclock()
end)

autoclaim:AddButton('Claim everything', function()
	local args = {
		[1] = true
	}
	
	game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
	wait()
	local args = {
		[1] = true
	}
	
	game:GetService("ReplicatedStorage").Events.ClmFrCrt:FireServer(unpack(args))
	wait()
	game:GetService("ReplicatedStorage").Events.ClaimFreeBoostStar:FireServer()
	wait()
    game:GetService("ReplicatedStorage").Events.Overclk:InvokeServer()
end)

local visuals = xhanware:AddTab('Visuals');

local esptab = visuals:AddLeftTabbox('ESP');
local esp = esptab:AddTab('ESP');

esp:AddBlank(3)

esp:AddToggle('ActivateESP', { Text = 'Activate ESP' }):AddKeyPicker('ESPKeybind', { Text = 'ESP Keybind', Default = '..' }):OnChanged(function()
	ESP.Enabled = Toggles.ActivateESP.Value
	if Toggles.ActivateESP.Value == false then
		ESP.Boxes = false
		ESP.FaceCamera = false
		ESP.Names = false
		ESP.Teamcolor = false
		ESP.Teammates = false
		ESP.Players = false
		wait(0.1)
		ESP.Enabled = true
		wait()
		ESP.Enabled = false
	else
		if Toggles.Boxes.Value == true then
			ESP.Boxes = true
		end
		if Toggles.FaceCamera.Value == true then
			ESP.FaceCamera = true
		end
		if Toggles.Names.Value == true then
			ESP.Names = true
		end
		if Toggles.Teamcolor.Value == true then
			ESP.TeamColor = true
	    end
		if Toggles.Teammates.Value == true then
			ESP.TeamMates = true
		end
		if Toggles.Players.Value == true then
			ESP.Players = true
		end
	end
end)

esp:AddToggle('Boxes', { Text = 'Boxes' }):OnChanged(function()
	ESP.Boxes = Toggles.Boxes.Value
end)

esp:AddToggle('FaceCamera', { Text = 'Face Camera' }):OnChanged(function()
	ESP.FaceCamera = Toggles.FaceCamera.Value
end)

esp:AddToggle('Names', { Text = 'Names' }):OnChanged(function()
	ESP.Names = Toggles.Names.Value
end)

esp:AddToggle('Teamcolor', { Text = 'Teamcolor' }):OnChanged(function()
	ESP.TeamColor = Toggles.Teamcolor.Value
end)

esp:AddToggle('Teammates', { Text = 'Teammates'}):OnChanged(function()
	ESP.TeamMates = Toggles.Teammates.Value
end)

esp:AddToggle('Players', { Text = 'Players' }):OnChanged(function()
	ESP.Players = Toggles.Players.Value
end)

local espsettingstab = visuals:AddRightTabbox('ESP Settings');
local espsettings = espsettingstab:AddTab('ESP Settings');

espsettings:AddBlank(3)
 
espsettings:AddLabel('ESP Color'):AddColorPicker('EspColor', { Default = Color3.fromRGB(255, 170, 0) })

espsettings:AddBlank(3)

espsettings:AddDropdown('BoxSize', { Text = 'BoxSize', Default = 1, Values = {"Normal", "Biggest", "Lowest"} })

espsettings:AddBlank(3)

espsettings:AddSlider('Thickness', { Text = 'Thickness', Default = 2, Min = 1, Max = 30, Rounding = 1 })

espsettings:AddLabel('More features will be added.');

local misc = xhanware:AddTab('Misc')

local charactertab = misc:AddLeftTabbox('Character')
local character = charactertab:AddTab('Character')

character:AddBlank(3)
character:AddToggle('Walkspeed', { Text = 'Walkspeed' }):AddKeyPicker('WalkSpeedKeybind', { Text = 'WS Keybind', Default = '..' }):OnChanged(function()
	Settings.Walkspeed = Toggles.Walkspeed.Value
	if Settings.Walkspeed == false then
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
	else
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Options.SpeedAmount.Value
	end
end)

character:AddSlider('SpeedAmount', { Text = 'Speed Amount', Default = 16, Min = 1, Max = 1000, Rounding = 1 }):OnChanged(function()
	game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Options.SpeedAmount.Value
end)

character:AddToggle('JumpPower', { Text = 'JumpPower' }):AddKeyPicker('JP Keybind', { Text = 'JP Keybind', Default = '..' }):OnChanged(function()
	Settings.JumpPower = Toggles.JumpPower.Value
	if Settings.JumpPower == false then
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = 50
	else
		game.Players.LocalPlayer.Character.Humanoid.JumpPower = Options.PowerAmount.Value
	end
end)

character:AddSlider('PowerAmount', { Text = 'Power Amount', Default = 50, Min = 1, Max = 1500, Rounding = 1 }):OnChanged(function()
	game.Players.LocalPlayer.Character.Humanoid.JumpPower = Options.PowerAmount.Value
end)

character:AddToggle('Hipheight', { Text = 'Hipheight' }):OnChanged(function()
	Settings.HipHeight = Toggles.Hipheight.Value
	if Settings.HipHeight == false then
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = 2
	else
		game.Players.LocalPlayer.Character.Humanoid.HipHeight = Options.HeightAmount.Value
	end
end)

character:AddSlider('HeightAmount', { Text = 'Height Amount', Default = 2, Min = 1, Max = 500, Rounding = 1 }):OnChanged(function()
	game.Players.LocalPlayer.Character.Humanoid.HipHeight = Options.HeightAmount.Value
end)

local teleportstab = misc:AddRightTabbox('Teleports')
local teleports = teleportstab:AddTab('Teleports')

teleports:AddBlank(3)

teleports:AddDropdown('TeleportsArea', { Text = 'Teleports Area', Default = 1, Values = {"Shop", "Plots", "DanT Shop", "Flux Shop", "Chypset", "MinerToolz", "Solaris City", "Train", "Plots Seller", "OptiX", "Solaris Generators", "GenEX", "Solaris Electronics", "Xeno", "Prism Works", "Arctic"} }):OnChanged(function()
	mevtp = Options.TeleportsArea.Value
end)

teleports:AddButton('Teleport!', function()
	teleportarea()
end)

local settings = xhanware:AddTab('Settings')

local creditstab = settings:AddLeftTabbox('Credits')
local credits2 = creditstab:AddTab('Quad X Credits')

credits2:AddBlank(3)
credits2:AddLabel('C# Developer - ZeuS')
credits2:AddLabel('UI Designer - geregee')
credits2:AddLabel('Web Developer - KokoPolis')
credits2:AddLabel('Script Developer - blxtok')
credits2:AddButton('Join Discord Server', function()
	if syn then
		JoinDiscord("https://discord.gg/jcnZzttk9F")
	else
		Library:Notify("You need Synapse X")
	end
end)

credits2:AddButton('Copy Discord Server', function()
	setclipboard("https://discord.gg/jcnZzttk9F")
end)

credits2:AddButton('Website', function()
	setclipboard()
end)

local othercreditstab = settings:AddLeftTabbox('Other Credits')
local othercredits = othercreditstab:AddTab('Other Credits')

othercredits:AddLabel('ESP Library - Kiriot22')
othercredits:AddLabel('UI Library - Inori')

local settingstab = settings:AddRightTabbox('Settings')
local settings = settingstab:AddTab('Settings')

settings:AddBlank(3)

settings:AddToggle('Anti AFK', { Text = 'Anti AFK' }):OnChanged(function()
	local ss = game:service'VirtualUser'
    game:service'Players'.LocalPlayer.Idled:connect(function()
        ss:CaptureController()
        ss:ClickButton2(Vector2.new())
    end)
end)

settings:AddToggle('Anti Logger', { Text = 'Anti Logger' }):OnChanged(function()
	game.Players.LocalPlayer.Name = "QuadX"
	game.Players.LocalPlayer.UserId = "QuadX"
	game.Players.LocalPlayer.AccountAge = "QuadX"
	game.Players.LocalPlayer.DisplayName = "QuadX"
	load_antiplogger()
end)

loadesp()

Options.EspColor:OnChanged(function()
	ESP.Color = Options.EspColor.Value
end)

Options.BoxSize:OnChanged(function()
	if Options.BoxSize.Value == "Normal" then
		ESP.BoxSize = Vector3.new(4,6,0)
	elseif Options.BoxSize.Value == "Biggest" then
		ESP.BoxSize = Vector3.new(8,12,0)
	elseif Options.BoxSize.Value == "Lowest" then
		ESP.BoxSize = Vector3.new(2,3,0)
	end
end)

Options.Thickness:OnChanged(function()
	ESP.Thickness = Options.Thickness.Value
end)

mouse.KeyDown:connect(function(key) 
	key = key:lower() 
	if key == Options.ESPKeybind.Value then
		if Toggles.ActivateESP.Value == true then
			Toggles.ActivateESP.Value = false
		else
			Toggles.ActivateESP.Value = true
		end
	end
end)

Library:Notify('Loaded UI!');
