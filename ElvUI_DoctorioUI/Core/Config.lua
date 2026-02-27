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
	DoctorioUI.Options.args.setup.args.alts = ACH:Execute(L["Setup for alts"], L["Make sure to click this button once on each of your alts to ensure the unused ElvUI modules are properly disabled."], 4, function() DoctorioUI:Setup_PrivateDB() DoctorioUI:Print(L["Alt setup imported successfully."]) E:StaticPopup_Show('DoctorioUI_RL') end)
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
	DoctorioUI.Options.args.profiles.args.addonGroup.args.bigwigs = ACH:Execute(L["BigWigs"], nil, 3, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioBigWigs') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.details = ACH:Execute(L["Details"], nil, 4, function() DoctorioUI:Setup_Details() E:StaticPopup_Show('DoctorioUI_RL') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.plater = ACH:Execute(L["Plater"], nil, 5, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioPlater') end)
	DoctorioUI.Options.args.profiles.args.addonGroup.args.elvuiNameplates = ACH:Execute(L["ElvUI Nameplates"], nil, 6, function() DoctorioUI:Setup_ElvUI_Nameplates() end)

	-- WeakAuras
	--[[
		DoctorioUI.Options.args.cdm = ACH:Group(L["Cooldown Manager"], nil, 5)
		DoctorioUI.Options.args.cdm.args.header = ACH:Header(L["Cooldown Manager"], 1)
		DoctorioUI.Options.args.cdm.args.spacer = ACH:Spacer(2, 'full')
		DoctorioUI.Options.args.cdm.args.hunter = ACH:Group(L["Hunter"], nil, 4)
		DoctorioUI.Options.args.cdm.args.hunter.inline = true
		DoctorioUI.Options.args.cdm.args.hunter.args.hunter1 = ACH:Execute(format('|cffAAD372%s|r', L["Beastmaster"]), nil, 3, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.hunter.args.hunter2 = ACH:Execute(format('|cffAAD372%s|r', L["Marksman"]), nil, 4, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.hunter.args.hunter3 = ACH:Execute(format('|cffAAD372%s|r', L["Survival"]), nil, 5, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.shaman = ACH:Group(L["Shaman"], nil, 5)
		DoctorioUI.Options.args.cdm.args.shaman.inline = true
		DoctorioUI.Options.args.cdm.args.shaman.args.shaman1 = ACH:Execute(format('|cff0070DD%s|r', L["Enhancer"]), nil, 6, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.shaman.args.shaman2 = ACH:Execute(format('|cff0070DD%s|r', L["Elemental"]), nil, 7, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.shaman.args.shaman3 = ACH:Execute(format('|cff0070DD%s|r', L["Restoration"]), nil, 8, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.monk = ACH:Group(L["Monk"], nil, 6)
		DoctorioUI.Options.args.cdm.args.monk.inline = true
		DoctorioUI.Options.args.cdm.args.monk.args.monk1 = ACH:Execute(format('|cff00FF98%s|r', L["Windwalker"]), nil, 9, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.monk.args.monk2 = ACH:Execute(format('|cff00FF98%s|r', L["Brewmaster"]), nil, 10, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.monk.args.monk3 = ACH:Execute(format('|cff00FF98%s|r', L["Mistweaver"]), nil, 11, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.paladin = ACH:Group(L["Paladin"], nil, 7)
		DoctorioUI.Options.args.cdm.args.paladin.inline = true
		DoctorioUI.Options.args.cdm.args.paladin.args.paladin1 = ACH:Execute(format('|cffF48CBA%s|r', L["Retribution"]), nil, 12, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.paladin.args.paladin2 = ACH:Execute(format('|cffF48CBA%s|r', L["Protection"]), nil, 13, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.paladin.args.paladin3 = ACH:Execute(format('|cffF48CBA%s|r', L["Holy"]), nil, 14, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.druid = ACH:Group(L["Druid"], nil, 8)
		DoctorioUI.Options.args.cdm.args.druid.inline = true
		DoctorioUI.Options.args.cdm.args.druid.args.druid1 = ACH:Execute(format('|cffFF7C0A%s|r', L["Feral"]), nil, 15, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.druid.args.druid2 = ACH:Execute(format('|cffFF7C0A%s|r', L["Balance"]), nil, 16, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.druid.args.druid3 = ACH:Execute(format('|cffFF7C0A%s|r', L["Guardian"]), nil, 17, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.druid.args.druid4 = ACH:Execute(format('|cffFF7C0A%s|r', L["Restoration"]), nil, 18, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.evoker = ACH:Group(L["Evoker"], nil, 9)
		DoctorioUI.Options.args.cdm.args.evoker.inline = true
		DoctorioUI.Options.args.cdm.args.evoker.args.evoker1 = ACH:Execute(format('|cff33937F%s|r', L["Devastation"]), nil, 19, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.evoker.args.evoker2 = ACH:Execute(format('|cff33937F%s|r', L["Preservation"]), nil, 20, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.evoker.args.evoker3 = ACH:Execute(format('|cff33937F%s|r', L["Augmentation"]), nil, 21, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.warrior = ACH:Group(L["Warrior"], nil, 10)
		DoctorioUI.Options.args.cdm.args.warrior.inline = true
		DoctorioUI.Options.args.cdm.args.warrior.args.warrior1 = ACH:Execute(format('|cffC69B6D%s|r', L["Arms"]), nil, 22, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.warrior.args.warrior2 = ACH:Execute(format('|cffC69B6D%s|r', L["Fury"]), nil, 23, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.warrior.args.warrior3 = ACH:Execute(format('|cffC69B6D%s|r', L["Protection"]), nil, 24, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.dk = ACH:Group(L["Death Knight"], nil, 11)
		DoctorioUI.Options.args.cdm.args.dk.inline = true
		DoctorioUI.Options.args.cdm.args.dk.args.dk1 = ACH:Execute(format('|cffC41E3A%s|r', L["Unholy"]), nil, 25, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.dk.args.dk2 = ACH:Execute(format('|cffC41E3A%s|r', L["Frost"]), nil, 26, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.dk.args.dk3 = ACH:Execute(format('|cffC41E3A%s|r', L["Blood"]), nil, 27, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.dh = ACH:Group(L["Demon Hunter"], nil, 12)
		DoctorioUI.Options.args.cdm.args.dh.inline = true
		DoctorioUI.Options.args.cdm.args.dh.args.dh1 = ACH:Execute(format('|cffA330C9%s|r', L["Havoc"]), nil, 28, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.dh.args.dh2 = ACH:Execute(format('|cffA330C9%s|r', L["Vengeance"]), nil, 29, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.dh.args.dh3 = ACH:Execute(format('|cffA330C9%s|r', L["Devourer"]), nil, 30, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.priest = ACH:Group(L["Priest"], nil, 13)
		DoctorioUI.Options.args.cdm.args.priest.inline = true
		DoctorioUI.Options.args.cdm.args.priest.args.priest1 = ACH:Execute(format('|cffFFFFFF%s|r', L["Shadow"]), nil, 31, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.priest.args.priest2 = ACH:Execute(format('|cffFFFFFF%s|r', L["Discipline"]), nil, 32, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.priest.args.priest3 = ACH:Execute(format('|cffFFFFFF%s|r', L["Holy"]), nil, 33, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.warlock = ACH:Group(L["Warlock"], nil, 14)
		DoctorioUI.Options.args.cdm.args.warlock.inline = true
		DoctorioUI.Options.args.cdm.args.warlock.args.warlock1 = ACH:Execute(format('|cff8788EE%s|r', L["Destruction"]), nil, 34, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.warlock.args.warlock2 = ACH:Execute(format('|cff8788EE%s|r', L["Affliction"]), nil, 35, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.warlock.args.warlock3 = ACH:Execute(format('|cff8788EE%s|r', L["Demonology"]), nil, 36, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.mage = ACH:Group(L["Mage"], nil, 15)
		DoctorioUI.Options.args.cdm.args.mage.inline = true
		DoctorioUI.Options.args.cdm.args.mage.args.mage1 = ACH:Execute(format('|cff3FC7EB%s|r', L["Fire"]), nil, 37, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.mage.args.mage2 = ACH:Execute(format('|cff3FC7EB%s|r', L["Frost"]), nil, 38, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.mage.args.mage3 = ACH:Execute(format('|cff3FC7EB%s|r', L["Arcane"]), nil, 39, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.rogue = ACH:Group(L["Rogue"], nil, 16)
		DoctorioUI.Options.args.cdm.args.rogue.inline = true
		DoctorioUI.Options.args.cdm.args.rogue.args.rogue1 = ACH:Execute(format('|cffFFF468%s|r', L["Assa"]), nil, 40, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.rogue.args.rogue2 = ACH:Execute(format('|cffFFF468%s|r', L["Outlaw"]), nil, 41, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
		DoctorioUI.Options.args.cdm.args.rogue.args.rogue3 = ACH:Execute(format('|cffFFF468%s|r', L["Sub"]), nil, 42, function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'URL') end)
	]]

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
