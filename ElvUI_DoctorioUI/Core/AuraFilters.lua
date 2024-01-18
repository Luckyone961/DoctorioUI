local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Variables & Cache
local pairs = pairs

-- Aura Filters DB
function DoctorioUI:Setup_AuraFilters()

	-- Function to add IDs to a list
	local function Add(list, ids, value)
		for _, id in pairs(ids) do
			list[id] = list[id] or value
		end
	end

	-- General setup
	local unitframe = E.global["unitframe"] or {}
	local aurafilters = unitframe["aurafilters"] or {}
	local aurawatch = unitframe["aurawatch"] or {}
	
	-- Classes setup
	local classes = {
		DRUID = aurawatch["DRUID"] or {},
		EVOKER = aurawatch["EVOKER"] or {},
		MONK = aurawatch["MONK"] or {},
		PALADIN = aurawatch["PALADIN"] or {},
		PRIEST = aurawatch["PRIEST"] or {},
		SHAMAN = aurawatch["SHAMAN"] or {},
		ROGUE = aurawatch["ROGUE"] or {}
	}

	local ids = {
		blacklist = { 114216, 157131, 25771, 264689, 328605, 371070, 372514, 372517, 372648, 373681, 374466, 374609, 374864, 375458, 377612, 377780, 382912, 384050, 387441, 387847, 390435, 390569, 392193, 393879, 396023, 396085, 396106, 396109, 396113, 396201, 396212, 396222, 396233, 401383, 401525, 401718, 401809, 402052, 402617, 403655, 403747, 403978, 405394, 407302, 407329, 407475, 407576, 407917, 408204, 410247, 410642, 413070, 45181 },
		whitelist = { 196718, 2825, 31821, 32182, 325174, 390386, 62618, 80353, 90355, 97462 },
		DRUID = { 774, 8936, 33763, 48438, 102342, 102351, 102352, 155777, 188550, 200389, 203554, 207386, 391891 },
		EVOKER = { 355941, 357170, 360827, 363502, 364343, 366155, 367364, 373267, 376788, 395152, 395296, 406732, 410089 },
		MONK = { 115175, 116841, 116849, 119611, 124682, 191840, 325209 },
		PALADIN = { 1022, 1044, 6940, 53563, 148039, 156910, 157047, 200025, 204018, 223306, 287280, 395180 },
		PRIEST = { 17, 139, 6788, 10060, 33206, 41635, 47788, 77489, 193065, 194384, 214206 },
		SHAMAN = { 974, 61295, 383648 }
	}

	for class, classIDs in pairs(ids) do
		if class == 'blacklist' then
			Add(aurafilters["Blacklist"] or {}, classIDs, { enable = true, priority = 0 })
		elseif class == 'whitelist' then
			Add(aurafilters["Whitelist"] or {}, classIDs, { enable = false })
		else
			Add(classes[class], classIDs, { enable = true, color = {} })
		end
	end

	-- Druid
	classes["DRUID"][774]["point"] = "BOTTOMRIGHT"
	classes["DRUID"][774]["style"] = "texturedIcon"
	classes["DRUID"][8936]["point"] = "TOPRIGHT"
	classes["DRUID"][8936]["style"] = "texturedIcon"
	classes["DRUID"][33763]["point"] = "CENTER"
	classes["DRUID"][33763]["style"] = "texturedIcon"
	classes["DRUID"][48438]["point"] = "TOP"
	classes["DRUID"][48438]["style"] = "texturedIcon"
	classes["DRUID"][48438]["xOffset"] = -26
	classes["DRUID"][102342]["anyUnit"] = false
	classes["DRUID"][102342]["color"]["b"] = 1
	classes["DRUID"][102342]["color"]["g"] = 1
	classes["DRUID"][102342]["color"]["r"] = 1
	classes["DRUID"][102342]["countAnchor"] = "BOTTOMRIGHT"
	classes["DRUID"][102342]["countX"] = 1
	classes["DRUID"][102342]["countY"] = 1
	classes["DRUID"][102342]["displayText"] = false
	classes["DRUID"][102342]["enabled"] = true
	classes["DRUID"][102342]["id"] = 102342
	classes["DRUID"][102342]["onlyShowMissing"] = false
	classes["DRUID"][102342]["point"] = "CENTER"
	classes["DRUID"][102342]["sizeOffset"] = 5
	classes["DRUID"][102342]["style"] = "texturedIcon"
	classes["DRUID"][102342]["textThreshold"] = -1
	classes["DRUID"][102342]["xOffset"] = 0
	classes["DRUID"][102342]["yOffset"] = 0
	classes["DRUID"][102351]["point"] = "CENTER"
	classes["DRUID"][102351]["sizeOffset"] = 5
	classes["DRUID"][102351]["style"] = "texturedIcon"
	classes["DRUID"][102351]["xOffset"] = 20
	classes["DRUID"][102352]["point"] = "CENTER"
	classes["DRUID"][102352]["sizeOffset"] = 5
	classes["DRUID"][102352]["style"] = "texturedIcon"
	classes["DRUID"][102352]["xOffset"] = 20
	classes["DRUID"][155777]["point"] = "BOTTOMRIGHT"
	classes["DRUID"][155777]["style"] = "texturedIcon"
	classes["DRUID"][155777]["xOffset"] = -20
	classes["DRUID"][157982]["enabled"] = false
	classes["DRUID"][157982]["style"] = "texturedIcon"
	classes["DRUID"][188550]["point"] = "CENTER"
	classes["DRUID"][188550]["style"] = "texturedIcon"
	classes["DRUID"][200389]["enabled"] = false
	classes["DRUID"][200389]["style"] = "texturedIcon"
	classes["DRUID"][203554]["point"] = "CENTER"
	classes["DRUID"][203554]["style"] = "texturedIcon"
	classes["DRUID"][203554]["xOffset"] = -52
	classes["DRUID"][207386]["enabled"] = false
	classes["DRUID"][207386]["style"] = "texturedIcon"
	classes["DRUID"][391891]["point"] = "TOPRIGHT"
	classes["DRUID"][391891]["style"] = "texturedIcon"

	-- Evoker
	classes["EVOKER"][355941]["style"] = "texturedIcon"
	classes["EVOKER"][357170]["point"] = "CENTER"
	classes["EVOKER"][357170]["sizeOffset"] = 5
	classes["EVOKER"][357170]["style"] = "texturedIcon"
	classes["EVOKER"][360827]["style"] = "texturedIcon"
	classes["EVOKER"][363502]["enabled"] = false
	classes["EVOKER"][363502]["style"] = "texturedIcon"
	classes["EVOKER"][364343]["sizeOffset"] = 5
	classes["EVOKER"][364343]["style"] = "texturedIcon"
	classes["EVOKER"][366155]["style"] = "texturedIcon"
	classes["EVOKER"][367364]["style"] = "texturedIcon"
	classes["EVOKER"][373267]["point"] = "BOTTOM"
	classes["EVOKER"][373267]["style"] = "texturedIcon"
	classes["EVOKER"][376788]["style"] = "texturedIcon"
	classes["EVOKER"][395152]["style"] = "texturedIcon"
	classes["EVOKER"][395296]["enabled"] = false
	classes["EVOKER"][406732]["point"] = "BOTTOM"
	classes["EVOKER"][406732]["style"] = "texturedIcon"
	classes["EVOKER"][410089]["sizeOffset"] = 5
	classes["EVOKER"][410089]["style"] = "texturedIcon"

	-- Monk
	classes["MONK"][115175]["point"] = "TOPRIGHT"
	classes["MONK"][115175]["style"] = "texturedIcon"
	classes["MONK"][115175]["xOffset"] = -20
	classes["MONK"][116841]["point"] = "CENTER"
	classes["MONK"][116841]["sizeOffset"] = 5
	classes["MONK"][116841]["style"] = "texturedIcon"
	classes["MONK"][116849]["point"] = "CENTER"
	classes["MONK"][116849]["sizeOffset"] = 5
	classes["MONK"][116849]["style"] = "texturedIcon"
	classes["MONK"][119611]["point"] = "BOTTOMRIGHT"
	classes["MONK"][119611]["style"] = "texturedIcon"
	classes["MONK"][124682]["point"] = "TOP"
	classes["MONK"][124682]["style"] = "texturedIcon"
	classes["MONK"][191840]["point"] = "TOPRIGHT"
	classes["MONK"][191840]["style"] = "texturedIcon"
	classes["MONK"][325209]["style"] = "texturedIcon"

	-- Paladin
	classes["PALADIN"][1022]["point"] = "CENTER"
	classes["PALADIN"][1022]["sizeOffset"] = 5
	classes["PALADIN"][1022]["style"] = "texturedIcon"
	classes["PALADIN"][1044]["point"] = "CENTER"
	classes["PALADIN"][1044]["sizeOffset"] = 5
	classes["PALADIN"][1044]["style"] = "texturedIcon"
	classes["PALADIN"][6940]["point"] = "CENTER"
	classes["PALADIN"][6940]["sizeOffset"] = 5
	classes["PALADIN"][6940]["style"] = "texturedIcon"
	classes["PALADIN"][53563]["style"] = "texturedIcon"
	classes["PALADIN"][148039]["point"] = "CENTER"
	classes["PALADIN"][148039]["sizeOffset"] = 5
	classes["PALADIN"][148039]["style"] = "texturedIcon"
	classes["PALADIN"][156910]["style"] = "texturedIcon"
	classes["PALADIN"][157047]["style"] = "texturedIcon"
	classes["PALADIN"][200025]["style"] = "texturedIcon"
	classes["PALADIN"][204018]["point"] = "CENTER"
	classes["PALADIN"][204018]["sizeOffset"] = 5
	classes["PALADIN"][204018]["style"] = "texturedIcon"
	classes["PALADIN"][223306]["point"] = "CENTER"
	classes["PALADIN"][223306]["sizeOffset"] = 5
	classes["PALADIN"][223306]["style"] = "texturedIcon"
	classes["PALADIN"][223306]["xOffset"] = 25
	classes["PALADIN"][287280]["point"] = "BOTTOMRIGHT"
	classes["PALADIN"][287280]["style"] = "texturedIcon"
	classes["PALADIN"][395180]["point"] = "CENTER"
	classes["PALADIN"][395180]["sizeOffset"] = 5
	classes["PALADIN"][395180]["style"] = "texturedIcon"

	-- Priest
	classes["PRIEST"][17]["point"] = "BOTTOMRIGHT"
	classes["PRIEST"][17]["style"] = "texturedIcon"
	classes["PRIEST"][139]["point"] = "TOPRIGHT"
	classes["PRIEST"][139]["style"] = "texturedIcon"
	classes["PRIEST"][6788]["point"] = "BOTTOMRIGHT"
	classes["PRIEST"][6788]["style"] = "texturedIcon"
	classes["PRIEST"][6788]["xOffset"] = -20
	classes["PRIEST"][10060]["point"] = "CENTER"
	classes["PRIEST"][10060]["sizeOffset"] = 5
	classes["PRIEST"][10060]["style"] = "texturedIcon"
	classes["PRIEST"][33206]["point"] = "CENTER"
	classes["PRIEST"][33206]["sizeOffset"] = 5
	classes["PRIEST"][33206]["style"] = "texturedIcon"
	classes["PRIEST"][41635]["point"] = "BOTTOM"
	classes["PRIEST"][41635]["style"] = "texturedIcon"
	classes["PRIEST"][47788]["point"] = "CENTER"
	classes["PRIEST"][47788]["sizeOffset"] = 5
	classes["PRIEST"][47788]["style"] = "texturedIcon"
	classes["PRIEST"][47788]["xOffset"] = 0
	classes["PRIEST"][77489]["enabled"] = false
	classes["PRIEST"][77489]["style"] = "texturedIcon"
	classes["PRIEST"][193065]["enabled"] = false
	classes["PRIEST"][193065]["point"] = "CENTER"
	classes["PRIEST"][193065]["sizeOffset"] = 5
	classes["PRIEST"][193065]["style"] = "texturedIcon"
	classes["PRIEST"][193065]["xOffset"] = 0
	classes["PRIEST"][194384]["point"] = "TOP"
	classes["PRIEST"][194384]["sizeOffset"] = 5
	classes["PRIEST"][194384]["style"] = "texturedIcon"
	classes["PRIEST"][214206]["point"] = "TOP"
	classes["PRIEST"][214206]["sizeOffset"] = 5
	classes["PRIEST"][214206]["style"] = "texturedIcon"

	-- Shaman
	classes["SHAMAN"][974]["point"] = "CENTER"
	classes["SHAMAN"][974]["style"] = "texturedIcon"
	classes["SHAMAN"][61295]["point"] = "BOTTOMRIGHT"
	classes["SHAMAN"][61295]["style"] = "texturedIcon"
	classes["SHAMAN"][383648]["point"] = "CENTER"
	classes["SHAMAN"][383648]["style"] = "texturedIcon"

	-- Rogue IDs
	classes["ROGUE"][57934]["style"] = "texturedIcon"
end
