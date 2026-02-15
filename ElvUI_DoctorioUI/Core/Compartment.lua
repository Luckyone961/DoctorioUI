local _, E = unpack((select(2, ...)))

-- OnClick
function DoctorioUI_OnAddonCompartmentClick()
	E:ToggleOptions()
	E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'DoctorioUI')
end
