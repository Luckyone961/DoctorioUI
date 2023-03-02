local DoctorioUI, E, L, V, P, G = unpack(select(2, ...))

-- Variables & Cache
local format = format
local ReloadUI = ReloadUI

-- Set install version to current DoctorioUI version
local function InstallComplete()
	E.global.DoctorioUI.install_version = DoctorioUI.Version
	ReloadUI()
end

-- Installer table
DoctorioUI.InstallerData = {
	Title = format('|cffC41E3A%s %s|r', DoctorioUI.Name, L["Installation"]),
	Name = DoctorioUI.Name,
	tutorialImage = DoctorioUI.Logo,
	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetText(L["Welcome"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
			PluginInstallFrame.Option1:SetText(format('|cffC80000%s', L["Skip and close the installer"]))
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText(L["ElvUI"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_Layout() end)
			PluginInstallFrame.Option1:SetText(L["Import ElvUI"])
		end,
		[3] = function()
			PluginInstallFrame.SubTitle:SetText(L["Details"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_Details() end)
			PluginInstallFrame.Option1:SetText(L["Import Details"])
		end,
		[4] = function()
			PluginInstallFrame.SubTitle:SetText(L["Plater"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioPlater') end)
			PluginInstallFrame.Option1:SetText(L["Import Plater"])
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText(L["OmniCD"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_OmniCD() end)
			PluginInstallFrame.Option1:SetText(L["Import OmniCD"])
		end,
		[6] = function()
			PluginInstallFrame.SubTitle:SetText(L["BigWigs"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_BigWigs() end)
			PluginInstallFrame.Option1:SetText(L["Import BigWigs"])
		end,
		[7] = function()
			PluginInstallFrame.SubTitle:SetText(L["ArkInventory"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_ArkInventory() end)
			PluginInstallFrame.Option1:SetText(L["Import ArkInventory"])
		end,
		[8] = function()
			PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
			PluginInstallFrame.Desc1:SetText(L["Text 1"])
			PluginInstallFrame.Desc2:SetText(L["Text 2"])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
			PluginInstallFrame.Option1:SetText(L["Finished"])
		end,
	},
	-- Titles on the right side of the installer
	StepTitles = {
		[1] = L["Welcome"],
		[2] = L["ElvUI"],
		[3] = L["Details"],
		[4] = L["Plater"],
		[5] = L["OmniCD"],
		[6] = L["BigWigs"],
		[7] = L["ArkInventory"],
		[8] = L["Installation Complete"],
	},
	-- Color of the title texts on the ride side (when not selected)
	StepTitlesColor = {1, 1, 1},
	-- Color of the title texts on the ride side (when selected, current step)
	StepTitlesColorSelected = {0, 179/255, 1},
	-- Misc, do not edit
	StepTitleWidth = 200,
	StepTitleButtonWidth = 180,
	StepTitleTextJustification = 'CENTER',
}
