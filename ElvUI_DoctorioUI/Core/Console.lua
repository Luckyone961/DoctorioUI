local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

local SetCVar = SetCVar

-- General CVars
function DoctorioUI:Setup_CVars()
	-- Action Bars Tab
	SetCVar('enableMultiActionBars', 1) -- Remove Bar 2 Action Page
	SetCVar('enableMultiActionBars', 3) -- Remove Bar 3 Action Page
	SetCVar('enableMultiActionBars', 7) -- Remove Bar 4 Action Page
	SetCVar('enableMultiActionBars', 15) -- Remove Bar 5 Action Page
	-- Larger Nameplates off
	SetCVar('NamePlateHorizontalScale', 1)
	SetCVar('NamePlateVerticalScale', 1)
	SetCVar('NamePlateClassificationScale', 1)
	-- Hostile, Quest and Interactive NPCs
	SetCVar('UnitNameFriendlySpecialNPCName', 1)
	SetCVar('UnitNameHostleNPC', 1)
	SetCVar('UnitNameInteractiveNPC', 1)
	SetCVar('UnitNameNPC', 0)
end
