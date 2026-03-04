local DoctorioUI, E, L = unpack((select(2, ...)))

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
			PluginInstallFrame.Desc1:SetText(format('|cffFF7C0A%s', L["No install version or outdated install version detected - Reinstall recommended."]))
			PluginInstallFrame.Desc2:SetText(L["The DoctorioUI installer will guide you through some steps and apply the profiles of your choice."])
			PluginInstallFrame.Desc3:SetText(format('|cff4beb2c%s', L["Your existing profiles will not change. The installer will create a fresh profile."]))
			PluginInstallFrame.Desc4:SetText(L["Please read the steps carefully before clicking any buttons."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', InstallComplete)
			PluginInstallFrame.Option1:SetText(format('|cffC80000%s', L["Skip and close the installer"]))
		end,
		[2] = function()
			PluginInstallFrame.SubTitle:SetText(L["ElvUI"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for ElvUI."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_Layout() end)
			PluginInstallFrame.Option1:SetText('1: ' .. L["Import ElvUI"])
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() DoctorioUI:Setup_AuraFilters() end)
			PluginInstallFrame.Option2:SetText('2: ' .. L["ElvUI Aura Filters"])
		end,
		[3] = function()
			PluginInstallFrame.SubTitle:SetText(L["Console Variables"])
			PluginInstallFrame.Desc1:SetText(L["This step will configure some of Blizzards console variables."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Desc3:SetText(L["This will only modify CVars that are already covered by the supported AddOns."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_CVars() end)
			PluginInstallFrame.Option1:SetText(L["Setup CVars"])
		end,
		[4] = function()
			PluginInstallFrame.SubTitle:SetText(L["BetterCooldownManager"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to get the Wago URL for Doctorios BetterCooldownManager profile."])
			PluginInstallFrame.Desc2:SetText(format('|cffFF7C0A%s', L["PLEASE MAKE SURE TO READ THE WAGO DESCRIPTION OF THE PROFILE."]))
			PluginInstallFrame.Desc3:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioBCM') end)
			PluginInstallFrame.Option1:SetText(L["BetterCooldownManager"])
		end,
		[5] = function()
			PluginInstallFrame.SubTitle:SetText(L["Details"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to apply Doctorios profile for Details."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_Details() end)
			PluginInstallFrame.Option1:SetText(L["Import Details"])
		end,
		[6] = function()
			PluginInstallFrame.SubTitle:SetText(L["Nameplates"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to choose between ElvUI Nameplates and Plater."])
			PluginInstallFrame.Desc2:SetText(L["Doctorio uses and recommends using ElvUI Nameplates."])
			PluginInstallFrame.Desc3:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_ElvUI_Nameplates() end)
			PluginInstallFrame.Option1:SetText(L["|cff4beb2cElvUI|r"])
			PluginInstallFrame.Option2:Show()
			PluginInstallFrame.Option2:SetScript('OnClick', function() E.private.nameplates.enable = false E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioPlater') end)
			PluginInstallFrame.Option2:SetText(L["Plater"])
		end,
		[7] = function()
			PluginInstallFrame.SubTitle:SetText(L["BigWigs"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to get the Wago URL for Doctorios BigWigs profile."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/DoctorioBigWigs') end)
			PluginInstallFrame.Option1:SetText(L["Import BigWigs"])
		end,
		[8] = function()
			PluginInstallFrame.SubTitle:SetText(L["Baganator"])
			PluginInstallFrame.Desc1:SetText(L["Please click the button below to get the Wago URL for Doctorios Baganator profile."])
			PluginInstallFrame.Desc2:SetText(format('|cff4beb2c%s', L["Recommended step. Should not be skipped."]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://wago.io/Baganator') end)
			PluginInstallFrame.Option1:SetText(L["Import Baganator"])
		end,
		[9] = function()
			PluginInstallFrame.SubTitle:SetText(L["Import Private Database"])
			PluginInstallFrame.Desc1:SetText(L["Congrats, the setup is almost complete\n\nRemember: Each of your alts has to import the private profile using the\n [Import Private Database] button below."])
			PluginInstallFrame.Desc2:SetText(format('|cffFF7C0A%s', L["This button can also be found on the first page of /doc config"]))
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() DoctorioUI:Setup_PrivateDB() DoctorioUI:Print(L["Alt setup imported successfully."]) end)
			PluginInstallFrame.Option1:SetText(L["Import Private Database"])
		end,
		[10] = function()
			PluginInstallFrame.SubTitle:SetText(L["Installation Complete"])
			PluginInstallFrame.Desc1:SetText(L["You have completed the installation process, please click 'Finished' to reload the UI."])
			PluginInstallFrame.Desc2:SetText(L["Feel free to join our community Discord for support and social chats."])
			PluginInstallFrame.Option1:Show()
			PluginInstallFrame.Option1:SetScript('OnClick', function() E:StaticPopup_Show('DoctorioUI_EDITBOX', nil, nil, 'https://doctorio.io/discord') end)
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
		[3] = L["Console Variables"],
		[4] = L["BetterCooldownManager"],
		[5] = L["Details"],
		[6] = L["Nameplates"],
		[7] = L["BigWigs"],
		[8] = L["Baganator"],
		[9] = L["Import Private Database"],
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
