local DoctorioUI, E = unpack((select(2, ...)))
local _, _, _, _, G = unpack(ElvUI)

-- Lua functions
local unpack = unpack

-- API cache
local GetInstanceInfo = GetInstanceInfo

-- ElvUI reference
local E = unpack(ElvUI)
local UF = E:GetModule('UnitFrames')

-- Update raid visibility based on instance type and difficulty
local function UpdateRaidVisibility()

	local _, instanceType, difficultyID = GetInstanceInfo()

	local defaultVisibility =
	(E.db.unitframe.units.raid1.visibility == '[@raid6,noexists][@raid21,exists] hide;show') and
	(E.db.unitframe.units.raid2.visibility == '[@raid21,noexists][@raid31,exists] hide;show')

	local mythicVisibility =
	(E.db.unitframe.units.raid1.visibility == '[nogroup] hide;show') and
	(E.db.unitframe.units.raid2.visibility == 'hide')

	-- Make sure maxAllowedGroups is enabled
	if not E.db.unitframe.maxAllowedGroups then
		E.db.unitframe.maxAllowedGroups = true
	end

	if instanceType == 'raid' then
		if difficultyID == 16 then
			if not mythicVisibility then
				E.db.unitframe.units.raid1.visibility = '[nogroup] hide;show'
				E.db.unitframe.units.raid2.visibility = 'hide'
				UF:CreateAndUpdateHeaderGroup('raid1')
				UF:CreateAndUpdateHeaderGroup('raid2')
			end
		else
			if not defaultVisibility then
				E.db.unitframe.units.raid1.visibility = '[@raid6,noexists][@raid21,exists] hide;show'
				E.db.unitframe.units.raid2.visibility = '[@raid21,noexists][@raid31,exists] hide;show'
				UF:CreateAndUpdateHeaderGroup('raid1')
				UF:CreateAndUpdateHeaderGroup('raid2')
			end
		end
	else
		if not defaultVisibility then
			E.db.unitframe.units.raid1.visibility = '[@raid6,noexists][@raid21,exists] hide;show'
			E.db.unitframe.units.raid2.visibility = '[@raid21,noexists][@raid31,exists] hide;show'
			UF:CreateAndUpdateHeaderGroup('raid1')
			UF:CreateAndUpdateHeaderGroup('raid2')
		end
	end
end

function DoctorioUI:MythicVisibility()
	E:Delay(1, UpdateRaidVisibility)
end
