local DoctorioUI, E, L, V, P, G = unpack(select(2, ...))
local PI = E:GetModule('PluginInstaller')

-- Chat commands
function DoctorioUI:Toggles(msg)
	if msg == 'install' then
		PI:Queue(DoctorioUI.InstallerData)
	elseif msg == 'config' then
		E:ToggleOptions()
		E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'DoctorioUI')
	end
end

-- Register all commands
function DoctorioUI:LoadCommands()
	self:RegisterChatCommand('doctorioui', 'Toggles')
end
