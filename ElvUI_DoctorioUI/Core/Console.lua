local DoctorioUI = unpack((select(2, ...)))

local SetCVar = C_CVar.SetCVar

-- General CVars
function DoctorioUI:Setup_CVars()
	-- General
	SetCVar('AutoPushSpellToActionBar', 0)
	SetCVar('cameraDistanceMaxZoomFactor', 2.6)
	SetCVar('countdownForCooldowns', 1)
	SetCVar('fstack_preferParentKeys', 0)
	SetCVar('minimapTrackingShowAll', 1)
	SetCVar('screenshotQuality', 10)
	SetCVar('showNPETutorials', 0)
	SetCVar('showTutorials', 0)
	SetCVar('UberTooltips', 1)
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
	-- Name only & Class color in name only
	SetCVar('nameplateShowOnlyNameForFriendlyPlayerUnits', 1)
	SetCVar('nameplateUseClassColorForFriendlyPlayerUnitNames', 1)
end
