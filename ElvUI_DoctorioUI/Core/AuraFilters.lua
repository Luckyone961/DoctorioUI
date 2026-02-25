local DoctorioUI, E = unpack((select(2, ...)))

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
		},
		-- ToDo
		-- 1244893, -- Beacon of the Savior (Holy Paladin)
		-- 1253593, -- Void Shield (Discipline Priest)
		-- 410263, -- Inferno's Blessing (Augmentation Evoker)
		-- 410686, -- Symbiotic Bloom (Augmentation Evoker)
		-- 413984, -- Shifting Sands (Augmentation Evoker)
	}

	for class, classIDs in pairs(ids) do
		Add(classes[class], classIDs, { enable = true, color = {} })
	end
end
