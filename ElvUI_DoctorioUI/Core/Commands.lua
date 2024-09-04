local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))
local PI = E:GetModule('PluginInstaller')

-- Chat commands
function DoctorioUI:Toggles(msg)
	if msg == 'install' then
		PI:Queue(DoctorioUI.InstallerData)
	elseif msg == 'config' then
		E:ToggleOptions()
		E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'DoctorioUI')
	elseif msg == 'alt' then
		DoctorioUI:Setup_PrivateDB()
		DoctorioUI:Print(L["Alt setup imported successfully."])
		E:StaticPopup_Show('DoctorioUI_RL')
	elseif msg == 'twink' then
		DoctorioUI:Setup_PrivateDB()
		DoctorioUI:Print(L["Alt setup imported successfully."])
		E:StaticPopup_Show('DoctorioUI_RL')
	end
end

-- Register all commands
function DoctorioUI:LoadCommands()
	self:RegisterChatCommand('doctorioui', 'Toggles')
	self:RegisterChatCommand('doctorio', 'Toggles')
	self:RegisterChatCommand('doc', 'Toggles')
end
