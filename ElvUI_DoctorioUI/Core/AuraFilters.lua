local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Variables & Cache
local pairs = pairs

-- Function to add IDs to a list
local function Add(list, ids, value)
	for _, id in pairs(ids) do
		list[id] = list[id] or value
	end
end

-- Aura Filters DB
function DoctorioUI:Setup_AuraFilters()

	-- General setup
	local aurafilters = E.global["unitframe"]["aurafilters"] or {}
	local aurawatch = E.global["unitframe"]["aurawatch"] or {}
	local blacklist = aurafilters["Blacklist"] or {}
	local whitelist = aurafilters["Whitelist"] or {}
	
	-- Classes setup
	local druid = aurawatch["DRUID"] or {}
	local evoker = aurawatch["EVOKER"] or {}
	local monk = aurawatch["MONK"] or {}
	local paladin = aurawatch["PALADIN"] or {}
	local priest = aurawatch["PRIEST"] or {}
	local shaman = aurawatch["SHAMAN"] or {}
	local rogue = aurawatch["ROGUE"] or {}

	-- Blacklist IDs
	local blacklistIDs = { 114216, 114216, 157131, 157131, 25771, 264689, 264689, 328605, 328605, 371070, 371070, 372514, 372514, 372517, 372517, 372648, 372648, 373681, 373681, 374466, 374466, 374609, 374609, 374864, 374864, 375458, 375458, 377612, 377612, 377780, 377780, 382912, 382912, 384050, 384050, 387441, 387441, 387847, 387847, 390435, 390435, 390569, 390569, 392193, 392193, 393879, 393879, 396023, 396023, 396085, 396085, 396106, 396106, 396109, 396109, 396113, 396113, 396201, 396201, 396212, 396212, 396222, 396222, 396233, 396233, 401383, 401383, 401525, 401525, 401718, 401718, 401809, 401809, 402052, 402052, 402617, 402617, 403655, 403655, 403747, 403747, 403978, 403978, 405394, 405394, 407302, 407302, 407329, 407329, 407475, 407475, 407576, 407576, 407917, 407917, 408204, 408204, 410247, 410247, 410642, 410642, 413070, 413070, 45181, 45181 }

	-- Whitelist IDs
	local whitelistIDs = { 196718, 2825, 31821, 32182, 325174, 390386, 62618, 80353, 90355, 97462 }

	-- Classes IDs
	local druidIDs = { 774, 8936, 33763, 48438, 102342, 102351, 102352, 155777, 188550, 200389, 203554, 207386, 391891 }
	local evokerIDs = { 355941, 357170, 357170, 357170, 360827, 363502, 363502, 364343, 364343, 366155, 367364, 373267, 373267, 376788, 395152, 395296, 406732, 406732, 410089, 410089 }
	local monkIDs = { 115175, 116841, 116849, 119611, 124682, 191840, 325209 }
	local paladinIDs = { 1022, 1044, 6940, 53563, 148039, 156910, 157047, 200025, 204018, 223306, 287280, 395180 }
	local priestIDs = { 17, 139, 6788, 10060, 33206, 41635, 47788, 77489, 193065, 194384, 214206 }
	local shamanIDs = { 974, 61295, 383648 }

	-- Add General
	Add(blacklist, blacklistIDs, { enable = true, priority = 0 })
	Add(whitelist, whitelistIDs, { enable = false })

	-- Add Classes
	Add(druid, druidIDs, { enabled = true, color = {} })
	Add(evoker, evokerIDs, { enabled = true })
	Add(monk, monkIDs, { enabled = true })
	Add(paladin, paladinIDs, { enabled = true })
	Add(priest, priestIDs, { enabled = true })
	Add(shaman, shamanIDs, { enabled = true })

	-- Druid
	druid[774]["point"] = "BOTTOMRIGHT"
	druid[774]["style"] = "texturedIcon"
	druid[8936]["point"] = "TOPRIGHT"
	druid[8936]["style"] = "texturedIcon"
	druid[33763]["point"] = "CENTER"
	druid[33763]["style"] = "texturedIcon"
	druid[48438]["point"] = "TOP"
	druid[48438]["style"] = "texturedIcon"
	druid[48438]["xOffset"] = -26
	druid[102342]["anyUnit"] = false
	druid[102342]["color"]["b"] = 1
	druid[102342]["color"]["g"] = 1
	druid[102342]["color"]["r"] = 1
	druid[102342]["countAnchor"] = "BOTTOMRIGHT"
	druid[102342]["countX"] = 1
	druid[102342]["countY"] = 1
	druid[102342]["displayText"] = false
	druid[102342]["enabled"] = true
	druid[102342]["id"] = 102342
	druid[102342]["onlyShowMissing"] = false
	druid[102342]["point"] = "CENTER"
	druid[102342]["sizeOffset"] = 5
	druid[102342]["style"] = "texturedIcon"
	druid[102342]["textThreshold"] = -1
	druid[102342]["xOffset"] = 0
	druid[102342]["yOffset"] = 0
	druid[102351]["point"] = "CENTER"
	druid[102351]["sizeOffset"] = 5
	druid[102351]["style"] = "texturedIcon"
	druid[102351]["xOffset"] = 20
	druid[102352]["point"] = "CENTER"
	druid[102352]["sizeOffset"] = 5
	druid[102352]["style"] = "texturedIcon"
	druid[102352]["xOffset"] = 20
	druid[155777]["point"] = "BOTTOMRIGHT"
	druid[155777]["style"] = "texturedIcon"
	druid[155777]["xOffset"] = -20
	druid[157982]["enabled"] = false
	druid[157982]["style"] = "texturedIcon"
	druid[188550]["point"] = "CENTER"
	druid[188550]["style"] = "texturedIcon"
	druid[200389]["enabled"] = false
	druid[200389]["style"] = "texturedIcon"
	druid[203554]["point"] = "CENTER"
	druid[203554]["style"] = "texturedIcon"
	druid[203554]["xOffset"] = -52
	druid[207386]["enabled"] = false
	druid[207386]["style"] = "texturedIcon"
	druid[391891]["point"] = "TOPRIGHT"
	druid[391891]["style"] = "texturedIcon"

	-- Evoker
	evoker[355941]["style"] = "texturedIcon"
	evoker[357170]["point"] = "CENTER"
	evoker[357170]["sizeOffset"] = 5
	evoker[357170]["style"] = "texturedIcon"
	evoker[360827]["style"] = "texturedIcon"
	evoker[363502]["enabled"] = false
	evoker[363502]["style"] = "texturedIcon"
	evoker[364343]["sizeOffset"] = 5
	evoker[364343]["style"] = "texturedIcon"
	evoker[366155]["style"] = "texturedIcon"
	evoker[367364]["style"] = "texturedIcon"
	evoker[373267]["point"] = "BOTTOM"
	evoker[373267]["style"] = "texturedIcon"
	evoker[376788]["style"] = "texturedIcon"
	evoker[395152]["style"] = "texturedIcon"
	evoker[395296]["enabled"] = false
	evoker[406732]["point"] = "BOTTOM"
	evoker[406732]["style"] = "texturedIcon"
	evoker[410089]["sizeOffset"] = 5
	evoker[410089]["style"] = "texturedIcon"

	-- Monk
	monk[115175]["point"] = "TOPRIGHT"
	monk[115175]["style"] = "texturedIcon"
	monk[115175]["xOffset"] = -20
	monk[116841]["point"] = "CENTER"
	monk[116841]["sizeOffset"] = 5
	monk[116841]["style"] = "texturedIcon"
	monk[116849]["point"] = "CENTER"
	monk[116849]["sizeOffset"] = 5
	monk[116849]["style"] = "texturedIcon"
	monk[119611]["point"] = "BOTTOMRIGHT"
	monk[119611]["style"] = "texturedIcon"
	monk[124682]["point"] = "TOP"
	monk[124682]["style"] = "texturedIcon"
	monk[191840]["point"] = "TOPRIGHT"
	monk[191840]["style"] = "texturedIcon"
	monk[325209]["style"] = "texturedIcon"

	-- Paladin
	paladin[1022]["point"] = "CENTER"
	paladin[1022]["sizeOffset"] = 5
	paladin[1022]["style"] = "texturedIcon"
	paladin[1044]["point"] = "CENTER"
	paladin[1044]["sizeOffset"] = 5
	paladin[1044]["style"] = "texturedIcon"
	paladin[6940]["point"] = "CENTER"
	paladin[6940]["sizeOffset"] = 5
	paladin[6940]["style"] = "texturedIcon"
	paladin[53563]["style"] = "texturedIcon"
	paladin[148039]["point"] = "CENTER"
	paladin[148039]["sizeOffset"] = 5
	paladin[148039]["style"] = "texturedIcon"
	paladin[156910]["style"] = "texturedIcon"
	paladin[157047]["style"] = "texturedIcon"
	paladin[200025]["style"] = "texturedIcon"
	paladin[204018]["point"] = "CENTER"
	paladin[204018]["sizeOffset"] = 5
	paladin[204018]["style"] = "texturedIcon"
	paladin[223306]["point"] = "CENTER"
	paladin[223306]["sizeOffset"] = 5
	paladin[223306]["style"] = "texturedIcon"
	paladin[223306]["xOffset"] = 25
	paladin[287280]["point"] = "BOTTOMRIGHT"
	paladin[287280]["style"] = "texturedIcon"
	paladin[395180]["point"] = "CENTER"
	paladin[395180]["sizeOffset"] = 5
	paladin[395180]["style"] = "texturedIcon"

	-- Priest
	priest[17]["point"] = "BOTTOMRIGHT"
	priest[17]["style"] = "texturedIcon"
	priest[139]["point"] = "TOPRIGHT"
	priest[139]["style"] = "texturedIcon"
	priest[6788]["point"] = "BOTTOMRIGHT"
	priest[6788]["style"] = "texturedIcon"
	priest[6788]["xOffset"] = -20
	priest[10060]["point"] = "CENTER"
	priest[10060]["sizeOffset"] = 5
	priest[10060]["style"] = "texturedIcon"
	priest[33206]["point"] = "CENTER"
	priest[33206]["sizeOffset"] = 5
	priest[33206]["style"] = "texturedIcon"
	priest[41635]["point"] = "BOTTOM"
	priest[41635]["style"] = "texturedIcon"
	priest[47788]["point"] = "CENTER"
	priest[47788]["sizeOffset"] = 5
	priest[47788]["style"] = "texturedIcon"
	priest[47788]["xOffset"] = 0
	priest[77489]["enabled"] = false
	priest[77489]["style"] = "texturedIcon"
	priest[193065]["enabled"] = false
	priest[193065]["point"] = "CENTER"
	priest[193065]["sizeOffset"] = 5
	priest[193065]["style"] = "texturedIcon"
	priest[193065]["xOffset"] = 0
	priest[194384]["point"] = "TOP"
	priest[194384]["sizeOffset"] = 5
	priest[194384]["style"] = "texturedIcon"
	priest[214206]["point"] = "TOP"
	priest[214206]["sizeOffset"] = 5
	priest[214206]["style"] = "texturedIcon"

	-- Shaman
	shaman[974]["point"] = "CENTER"
	shaman[974]["style"] = "texturedIcon"
	shaman[61295]["point"] = "BOTTOMRIGHT"
	shaman[61295]["style"] = "texturedIcon"
	shaman[383648]["point"] = "CENTER"
	shaman[383648]["style"] = "texturedIcon"

	-- Rogue IDs
	rogue[57934]["style"] = "texturedIcon"

	E.global["unitframe"]["aurafilters"] = aurafilters
	E.global["unitframe"]["aurawatch"] = aurawatch
	aurafilters["Blacklist"] = blacklist
	aurafilters["Whitelist"] = whitelist
	aurawatch["DRUID"] = druid
	aurawatch["EVOKER"] = evoker
	aurawatch["MONK"] = monk
	aurawatch["PALADIN"] = paladin
	aurawatch["PRIEST"] = priest
	aurawatch["SHAMAN"] = shaman
	aurawatch["ROGUE"] = rogue
end
