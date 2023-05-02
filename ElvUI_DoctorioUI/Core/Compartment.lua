local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- OnClick
function DoctorioUI_OnAddonCompartmentClick()
	E:ToggleOptions()
	E.Libs.AceConfigDialog:SelectGroup('ElvUI', 'DoctorioUI')
end

--[[
	function DoctorioUI_OnAddonCompartmentEnter()
		Private:Print('OnEnter Test Print')
	end
]]

--[[
	function DoctorioUI_OnAddonCompartmentLeave()
		Private:Print('OnLeave Test Print')
	end
]]
