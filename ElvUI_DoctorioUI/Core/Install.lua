local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Variables & Cache
local format = format
local C_UI_Reload = C_UI.Reload

-- Set install version to current DoctorioUI version
local function InstallComplete()
	E.global.DoctorioUI.install_version = DoctorioUI.Version
	C_UI_Reload()
end

-- Installer table
DoctorioUI.InstallerData = {
	Title = format('|cffFF7C0A%s %s|r', DoctorioUI.Name, L["Installation"]),
	Name = DoctorioUI.Name,
	tutorialImage = DoctorioUI.Logo,
	Pages = {
		[1] = function()
			PluginInstallFrame.SubTitle:SetText(L["Welcome"])
			PluginInstallFrame.Desc1:SetText(L["The DoctorioUI installer will guide you through some steps and apply the profiles of your choice."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Your existing profiles will not change. The installer will create a fresh profile."]))
			PluginInstallFrame.Desc3:SetText(L["Please read the steps carefully before clicking any buttons."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
			PluginInstallFrame.Option1:SetText(format('|cffC80000%s', L["Skip and close the installer"]))
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText(L["ElvUI"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for ElvUI."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_Layout() DoctorioUI:Setup_AuraFilters() end)
			PluginInstallFrame.Option1:SetText(L["Import ElvUI"])
		end,
		[3] = function()
			PluginInstallFrame.SubTitle:SetText(L["Details"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for Details."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_Details() end)
			PluginInstallFrame.Option1:SetText(L["Import Details"])
		end,
		[4] = function()
			PluginInstallFrame.SubTitle:SetText(L["Plater"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to get the Wago URL for Doctorios Plater profile."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioPlater') end)
			PluginInstallFrame.Option1:SetText(L["Import Plater"])
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText(L["OmniCD"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for OmniCD."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_OmniCD() end)
			PluginInstallFrame.Option1:SetText(L["Import OmniCD"])
		end,
		[6] = function()
			PluginInstallFrame.SubTitle:SetText(L["BigWigs"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for BigWigs."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_BigWigs() end)
			PluginInstallFrame.Option1:SetText(L["Import BigWigs"])
		end,
		[7] = function()
			PluginInstallFrame.SubTitle:SetText(L["Baganator"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for Baganator."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_Baganator() end)
			PluginInstallFrame.Option1:SetText(L["Import Baganator"])
		end,
		[8] = function()
			PluginInstallFrame.SubTitle:SetText(L["Method Raid Tools"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for Method Raid Tools."])
			PluginInstallFrame.Desc2:SetText(format('|cffC80000%s', L["This cannot be imported like the other AddOns and will override your existing profile."]))
			PluginInstallFrame.Desc3:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_MRT() end)
			PluginInstallFrame.Option1:SetText(L["Import MRT"])
		end,
		[9] = function()
			PluginInstallFrame.SubTitle:SetText(L["WeakAuras"])
			PluginInstallFrame.Desc1:SetText(L["Class WeakAuras for all classes and specs can be found in:"])
			PluginInstallFrame.Desc2:SetText(L["/doctorioui config -> WeakAuras tab"])
		end,
		[10] = function()
			PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
			PluginInstallFrame.Desc1:SetText(L["You have completed the installation process, please click 'Finished' to reload the UI."])
			PluginInstallFrame.Desc2:SetText(L["Feel free to join our community Discord for support and social chats."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://doctorio.eu/discord') end)
			PluginInstallFrame.Option1:SetText('Discord')
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', InstallComplete)
			PluginInstallFrame.Option2:SetText(format('|cff4beb2c%s', L["Finished"]))
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
		[7] = L["Baganator"],
		[8] = L["Method Raid Tools"],
		[9] = L["WeakAuras"],
		[10] = L["Installation Complete"],
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
