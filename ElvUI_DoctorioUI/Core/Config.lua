local _, Private = ...
local L = Private.L
local ACH = Private.Libs.ACH

local format = string.format
local unpack = unpack

local E = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')

-- ElvUI config integration, LibElvUIPlugin calls this once ElvUI_Options is loaded
function Private:RegisterElvUIConfig()
	E.Options.name = format('%s + %s |cff99ff33%s|r', E.Options.name, Private.Name, Private.Version)

	-- Header
	Private.Config = ACH:Group(Private.Name, nil, 20)
	Private.Config.args.header = ACH:Spacer(1, 'full')

	-- Installer
	Private.Config.args.setup = ACH:Group(L["Install"], nil, 2)
	Private.Config.args.setup.args.header = ACH:Header(L["Install"], 1)
	Private.Config.args.setup.args.spacer = ACH:Spacer(2, 'full')
	Private.Config.args.setup.args.installer = ACH:Execute(L["Install"], nil, 3, function() PI:Queue(Private.InstallerData) E:ToggleOptions() end)
	Private.Config.args.setup.args.alts = ACH:Execute(L["Import Private Database"], L["Make sure to click this button once on each of your alts to ensure the unused ElvUI modules are properly disabled."], 4, function() Private:AltSetup() end, nil, true)
	Private.Config.args.setup.args.cvars = ACH:Execute(L["Setup CVars"], L["This step will configure some of Blizzards console variables."], 5, function() Private:Setup_CVars() end, nil, true)

	-- Links
	Private.Config.args.links = ACH:Group(L["Links"], nil, 3)
	Private.Config.args.links.args.header = ACH:Header(L["Links"], 1)
	Private.Config.args.links.args.spacer = ACH:Spacer(2, 'full')
	Private.Config.args.links.args.discord = ACH:Input(L["Discord:"], nil, 3, nil, 'full', function() return 'https://doctorio.io/discord' end)
	Private.Config.args.links.args.workshop = ACH:Input(L["Workshop"], nil, 4, nil, 'full', function() return 'https://doctorio.io' end)
	Private.Config.args.links.args.ticket = ACH:Input(L["Bug Report"], nil, 5, nil, 'full', function() return 'https://github.com/Luckyone961/DoctorioUI/issues/new/choose' end)

	-- Profiles
	Private.Config.args.profiles = ACH:Group(L["Profiles"], nil, 4)
	Private.Config.args.profiles.args.header = ACH:Header(L["Profiles"], 1)
	Private.Config.args.profiles.args.spacer = ACH:Spacer(2, 'full')
	Private.Config.args.profiles.args.elvuiGroup = ACH:Group(L["ElvUI"], nil, 3)
	Private.Config.args.profiles.args.elvuiGroup.inline = true
	Private.Config.args.profiles.args.elvuiGroup.args.profile = ACH:Execute(L["ElvUI Profile"], nil, 1, function() Private:Setup_Layout() E:StaticPopup_Show('DoctorioUI_RL') end, nil, true)
	Private.Config.args.profiles.args.elvuiGroup.args.auraFilters = ACH:Execute(L["ElvUI Aura Filters"], nil, 2, function() Private:Setup_AuraFilters() E:StaticPopup_Show('DoctorioUI_RL') end)
	Private.Config.args.profiles.args.addonGroup = ACH:Group(L["AddOns"], nil, 4)
	Private.Config.args.profiles.args.addonGroup.inline = true
	Private.Config.args.profiles.args.addonGroup.args.baganator = ACH:Execute(L["Baganator"], nil, 1, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/Baganator') end)
	Private.Config.args.profiles.args.addonGroup.args.scm = ACH:Execute(L["SkironCooldownManager"], nil, 2, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioSCM') end)
	Private.Config.args.profiles.args.addonGroup.args.bigwigs = ACH:Execute(L["BigWigs"], nil, 3, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioBigWigs') end)
	Private.Config.args.profiles.args.addonGroup.args.details = ACH:Execute(L["Details"], nil, 4, function() Private:Setup_Details() E:StaticPopup_Show('DoctorioUI_RL') end, nil, true)
	Private.Config.args.profiles.args.addonGroup.args.platynator = ACH:Execute(L["Platynator"], nil, 5, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/Platynator') end)

	E.Options.args.DoctorioUI = Private.Config
end

--[[
	ACH:Color(name, desc, order, alpha, width, get, set, disabled, hidden)
	ACH:Description(name, order, fontSize, image, imageCoords, imageWidth, imageHeight, width, hidden)
	ACH:Execute(name, desc, order, func, image, confirm, width, get, set, disabled, hidden)
	ACH:Group(name, desc, order, childGroups, get, set, disabled, hidden, func)
	ACH:Header(name, order, get, set, hidden)
	ACH:Input(name, desc, order, multiline, width, get, set, disabled, hidden, validate)
	ACH:MultiSelect(name, desc, order, values, confirm, width, get, set, disabled, hidden, sortByValue)
	ACH:Range(name, desc, order, values, width, get, set, disabled, hidden)
	ACH:Select(name, desc, order, values, confirm, width, get, set, disabled, hidden, sortByValue)
	ACH:Spacer(order, width, hidden)
	ACH:Toggle(name, desc, order, tristate, confirm, width, get, set, disabled, hidden)
]]
