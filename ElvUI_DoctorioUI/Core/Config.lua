local DoctorioUI, E, L  = unpack((select(2, ...)))
local PI = E:GetModule('PluginInstaller')

-- Variables & Cache
local ACH
local format = format

-- DoctorioUI config panel
function DoctorioUI:Config()

	-- Add DoctorioUI version on top of the ElvUI config
	E.Options.name = format('%s + %s |cff99ff33%.2f|r', E.Options.name, DoctorioUI.Name, DoctorioUI.Version)

	-- LibAceConfigHelper
	ACH = E.Libs.ACH

	-- Header
	DoctorioUI.Options = ACH:Group(DoctorioUI.Name, nil, 20)

	-- Spacer
	DoctorioUI.Options.args.header = ACH:Spacer(1, 'full')

	-- Installer
	DoctorioUI.Options.args.setup = ACH:Group(L["Install"], nil, 2)
	DoctorioUI.Options.args.setup.args.header = ACH:Header(L["Install"], 1)
	DoctorioUI.Options.args.setup.args.spacer = ACH:Spacer(2, 'full')
	DoctorioUI.Options.args.setup.args.installer = ACH:Execute(L["Install"], nil, 3, function() PI:Queue(DoctorioUI.InstallerData) E:ToggleOptions() end)
	DoctorioUI.Options.args.setup.args.alts = ACH:Execute(L["Import Private Database"], L["Make sure to click this button once on each of your alts to ensure the unused ElvUI modules are properly disabled."], 4, function() DoctorioUI:Setup_PrivateDB() DoctorioUI:Print(L["Alt setup imported successfully."]) E:StaticPopup_Show('DoctorioUI_RL') end)
	DoctorioUI.Options.args.setup.args.cvars = ACH:Execute(L["Setup CVars"], L["This step will configure some of Blizzards console variables."], 5, function() DoctorioUI:Setup_CVars() end)

	-- Links
	DoctorioUI.Options.args.links = ACH:Group(L["Links"], nil, 3)
	DoctorioUI.Options.args.links.args.header = ACH:Header(L["Links"], 1)
	DoctorioUI.Options.args.links.args.spacer = ACH:Spacer(2, 'full')
	DoctorioUI.Options.args.links.args.discord = ACH:Input(L["Discord:"], nil, 3, nil, 'full', function() return 'https://doctorio.io/discord' end)
	DoctorioUI.Options.args.links.args.workshop = ACH:Input(L["Workshop"], nil, 4, nil, 'full', function() return 'https://doctorio.io' end)
	DoctorioUI.Options.args.links.args.ticket = ACH:Input(L["Bug Report"], nil, 5, nil, 'full', function() return 'https://github.com/Luckyone961/DoctorioUI/issues/new/choose' end)

	-- Profiles
	DoctorioUI.Options.args.profiles = ACH:Group(L["Profiles"], nil, 4)
	DoctorioUI.Options.args.profiles.args.header = ACH:Header(L["Profiles"], 1)
	DoctorioUI.Options.args.profiles.args.spacer = ACH:Spacer(2, 'full')
	DoctorioUI.Options.args.profiles.args.elvuiGroup = ACH:Group(L["ElvUI"], nil, 3)
	DoctorioUI.Options.args.profiles.args.elvuiGroup.inline = true
	DoctorioUI.Options.args.profiles.args.elvuiGroup.args.profile = ACH:Execute(L["ElvUI Profile"], nil, 1, function() DoctorioUI:Setup_GlobalDB() DoctorioUI:Setup_PrivateDB() DoctorioUI:Setup_Layout() E:StaticPopup_Show('DoctorioUI_RL') end)
	DoctorioUI.Options.args.profiles.args.elvuiGroup.args.auraFilters = ACH:Execute(L["ElvUI Aura Filters"], nil, 2, function() DoctorioUI:Setup_AuraFilters() E:StaticPopup_Show('DoctorioUI_RL') end)
	DoctorioUI.Options.args.profiles.args.addonGroup = ACH:Group(L["AddOns"], nil, 4)
	DoctorioUI.Options.args.profiles.args.addonGroup.inline = true
	DoctorioUI.Options.args.profiles.args.addonGroup.args.baganator = ACH:Execute(L["Baganator"], nil, 1, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/Baganator') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.bcdm= ACH:Execute(L["BetterCooldownManager"], nil, 2, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioBCM') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.bigwigs = ACH:Execute(L["BigWigs"], nil, 3, function() DoctorioUI:Setup_BigWigs() E:StaticPopup_Show('DoctorioUI_RL') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.details = ACH:Execute(L["Details"], nil, 4, function() DoctorioUI:Setup_Details() E:StaticPopup_Show('DoctorioUI_RL') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.plater = ACH:Execute(L["Plater"], nil, 5, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioPlater') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.elvuiNameplates = ACH:Execute(L["ElvUI Nameplates"], nil, 6, function() DoctorioUI:Setup_ElvUI_Nameplates() end)

	E.Options.args.DoctorioUI = DoctorioUI.Options
end

--[[
	ACH:Color(name, desc, order, alpha, width, get, set, disabled, hidden)
	ACH:Description(name, order, fontSize, image, imageCoords, imageWidth, imageHeight, width, hidden)
	ACH:Execute(name, desc, order, func, image, confirm, width, get, set, disabled, hidden)
	ACH:Group(name, desc, order, childGroups, get, set, disabled, hidden, func)
	ACH:Header(name, order, get, set, hidden)
	ACH:Input(name, desc, order, multiline, width, get, set, disabled, hidden, validate)
	ACH:MultiSelect(name, desc, order, values, confirm, width, get, set, disabled, hidden)
	ACH:Range(name, desc, order, values, width, get, set, disabled, hidden)
	ACH:Select(name, desc, order, values, confirm, width, get, set, disabled, hidden)
	ACH:Spacer(order, width, hidden)
	ACH:Toggle(name, desc, order, tristate, confirm, width, get, set, disabled, hidden)
]]
