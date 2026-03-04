local DoctorioUI, E, L = unpack((select(2, ...)))

-- Variables & Cache
local ipairs = ipairs
local pairs = pairs

-- Function to add IDs to a list
local function Add(list, ids, value)
	for _, id in ipairs(ids) do
		list[id] = list[id] or value
	end
end

-- Aura Filters DB
function DoctorioUI:Setup_AuraFilters()

	-- General vars
	local unitframe = E.global['unitframe'] or {}
	local aurawatch = unitframe['aurawatch'] or {}
	local auraHighlight = unitframe['AuraHighlightColors'] or {}

	-- Classes setup
	local classes = {
		-- Healers
		DRUID = aurawatch['DRUID'] or {},
		EVOKER = aurawatch['EVOKER'] or {},
		MONK = aurawatch['MONK'] or {},
		PALADIN = aurawatch['PALADIN'] or {},
		PRIEST = aurawatch['PRIEST'] or {},
		SHAMAN = aurawatch['SHAMAN'] or {},
	}

	local ids = {
		DRUID = {
			-- Restoration
			774, -- Rejuvenation
			8936, -- Regrowth
			33763, -- Lifebloom
			48438, -- Wild Growth
			155777, -- Germination
		},
		EVOKER = {
			-- Preservation
			355941, -- Dream Breath
			376788, -- Dream Breath (Echo)
			363502, -- Dream Flight
			366155, -- Reversion
			367364, -- Reversion (Echo)
			373267, -- Life Bind
			364343, -- Echo
			-- Augmentation
			360827, -- Blistering Scales
			410089, -- Prescience
			395152, -- Ebon Might
		},
		MONK = {
			-- Mistweaver
			115175, -- Soothing Mist
			119611, -- Renewing Mist
			450769, -- Aspect of Harmony
			124682, -- Enveloping Mist
		},
		PALADIN = {
			-- Holy
			53563, -- Beacon of Light
			156910, -- Beacon of Faith
			200025, -- Beacon of Virtue
			156322, -- Eternal Flame
		},
		PRIEST = {
			-- Discipline
			17, -- Power Word: Shield
			194384, -- Atonement
			-- Holy
			139, -- Renew
			41635, -- Prayer of Mending
			77489, -- Echo of Light
		},
		SHAMAN = {
			-- Restoration
			974, -- Earth Shield
			61295, -- Riptide
			383648, -- Earth Shield (Elemental Orbit)
			207400, -- Ancestral Vigor
			382024, -- Earthliving Weapon
			444490, -- Hydrobubble
		},
		-- ToDo
		-- 1244893, -- Beacon of the Savior (Holy Paladin)
		-- 1253593, -- Void Shield (Discipline Priest)
		-- 410263, -- Inferno's Blessing (Augmentation Evoker)
		-- 410686, -- Symbiotic Bloom (Augmentation Evoker)
		-- 413984, -- Shifting Sands (Augmentation Evoker)
	}

	for class, classIDs in pairs(ids) do
		Add(classes[class], classIDs, { enabled = true, color = {} })
	end

	auraHighlight[364343] = { -- Echo
		["enable"] = true,
		["ownOnly"] = true,
		["style"] = "FILL",
		["color"] = {
			["a"] = 1,
			["r"] = 0.7843137979507446,
			["g"] = 0.5882353186607361,
			["b"] = 0,
		},
	}
	auraHighlight[194384] = { -- Atonement
		["enable"] = true,
		["ownOnly"] = true,
		["style"] = "FILL",
		["color"] = {
			["a"] = 1,
			["r"] = 0.7843137979507446,
			["g"] = 0.5882353186607361,
			["b"] = 0,
		},
	}

	classes['PALADIN'][53563] = {
		["point"] = "BOTTOMRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PALADIN'][1244893] = {
		["point"] = "TOPRIGHT",
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PALADIN'][156910] = {
		["point"] = "BOTTOMRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PALADIN'][200025] = {
		["point"] = "BOTTOMRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PALADIN'][156322] = {
		["point"] = "TOPRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}

	classes['PRIEST'][41635] = {
		["point"] = "TOPRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PRIEST'][17] = {
		["point"] = "TOPRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PRIEST'][21562] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PRIEST'][77489] = {
		["enabled"] = false,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PRIEST'][139] = {
		["point"] = "TOPRIGHT",
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PRIEST'][194384] = {
		["enabled"] = false,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['PRIEST'][1253593] = {
		["point"] = "TOPRIGHT",
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}

	classes['EVOKER'][367364] = {
		["enabled"] = false,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][376788] = {
		["enabled"] = false,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][363502] = {
		["point"] = "BOTTOMRIGHT",
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][395152] = {
		["point"] = "TOPRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][413984] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][410089] = {
		["point"] = "BOTTOMRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][364343] = {
		["enabled"] = false,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][410263] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][410686] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][366155] = {
		["point"] = "TOPRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][369459] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][381748] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][360827] = {
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][355941] = {
		["point"] = "BOTTOMRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['EVOKER'][373267] = {
		["point"] = "TOPRIGHT",
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}

	classes['DRUID'][774] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['DRUID'][474754] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['DRUID'][1126] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['DRUID'][8936] = {
		["point"] = "BOTTOMRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['DRUID'][33763] = {
		["point"] = "TOPRIGHT",
		["xOffset"] = -48,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['DRUID'][48438] = {
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['DRUID'][155777] = {
		["point"] = "TOPRIGHT",
		["xOffset"] = -24,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}

	classes['MONK'][450769] = {
		["enabled"] = false,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['MONK'][119611] = {
		["point"] = "TOPRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['MONK'][115175] = {
		["enabled"] = false,
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['MONK'][124682] = {
		["point"] = "BOTTOMRIGHT",
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}

	classes['SHAMAN'][61295] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['SHAMAN'][462854] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['SHAMAN'][974] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['SHAMAN'][383648] = {
		["countAnchor"] = "TOPRIGHT",
		["style"] = "texturedIcon",
	}
	classes['SHAMAN'][444490]['enabled'] = false -- Hydrobubble
	classes['SHAMAN'][207400]['enabled'] = false -- Ancestral Vigor
	classes['SHAMAN'][382024]['enabled'] = false -- Earthliving Weapon

	DoctorioUI:Print('Imported: ' .. L["ElvUI Aura Filters"])
end
