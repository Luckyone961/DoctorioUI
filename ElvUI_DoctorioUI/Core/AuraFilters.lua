local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Variables & Cache
local pairs = pairs

-- Aura Filters DB
function DoctorioUI:Setup_AuraFilters()
	-- Aura Filters Creation
	E.global["unitframe"]["aurafilters"] = E.global["unitframe"]["aurafilters"] or {}
	E.global["unitframe"]["aurafilters"]["Blacklist"] = E.global["unitframe"]["aurafilters"]["Blacklist"] or {}
	E.global["unitframe"]["aurafilters"]["Whitelist"] = E.global["unitframe"]["aurafilters"]["Whitelist"] or {}
	-- Class Filters Creation
	E.global["unitframe"]["aurawatch"] = E.global["unitframe"]["aurawatch"] or {}
	E.global["unitframe"]["aurawatch"]["DRUID"] = E.global["unitframe"]["aurawatch"]["DRUID"] or {}
	E.global["unitframe"]["aurawatch"]["EVOKER"] = E.global["unitframe"]["aurawatch"]["EVOKER"] or {}
	E.global["unitframe"]["aurawatch"]["MONK"] = E.global["unitframe"]["aurawatch"]["MONK"] or {}
	E.global["unitframe"]["aurawatch"]["PALADIN"] = E.global["unitframe"]["aurawatch"]["PALADIN"] or {}
	E.global["unitframe"]["aurawatch"]["PRIEST"] = E.global["unitframe"]["aurawatch"]["PRIEST"] or {}
	E.global["unitframe"]["aurawatch"]["ROGUE"] = E.global["unitframe"]["aurawatch"]["ROGUE"] or {}
	E.global["unitframe"]["aurawatch"]["SHAMAN"] = E.global["unitframe"]["aurawatch"]["SHAMAN"] or {}

	-- Blacklist IDs
	for _, idB in pairs({ 114216, 114216, 157131, 157131, 25771, 264689, 264689, 328605, 328605, 371070, 371070, 372514, 372514, 372517, 372517, 372648, 372648, 373681, 373681, 374466, 374466, 374609, 374609, 374864, 374864, 375458, 375458, 377612, 377612, 377780, 377780, 382912, 382912, 384050, 384050, 387441, 387441, 387847, 387847, 390435, 390435, 390569, 390569, 392193, 392193, 393879, 393879, 396023, 396023, 396085, 396085, 396106, 396106, 396109, 396109, 396113, 396113, 396201, 396201, 396212, 396212, 396222, 396222, 396233, 396233, 401383, 401383, 401525, 401525, 401718, 401718, 401809, 401809, 402052, 402052, 402617, 402617, 403655, 403655, 403747, 403747, 403978, 403978, 405394, 405394, 407302, 407302, 407329, 407329, 407475, 407475, 407576, 407576, 407917, 407917, 408204, 408204, 410247, 410247, 410642, 410642, 413070, 413070, 45181, 45181 }) do
		E.global.unitframe.aurafilters.Blacklist.spells[idB] = {}
		E.global.unitframe.aurafilters.Blacklist.spells[idB] = { enable = true, priority = 0 }
	end

	-- Whitelist IDs
	for _, idW in pairs({ 196718, 2825, 31821, 32182, 325174, 390386, 62618, 80353, 90355, 97462 }) do
		E.global.unitframe.aurafilters.Whitelist.spells[idW] = {}
		E.global.unitframe.aurafilters.Whitelist.spells[idW] = { enable = false }
	end

	-- Classes
	for _, idDruid in pairs({ 774, 8936, 33763, 48438, 102342, 102351, 102352, 155777, 188550, 200389, 203554, 207386, 391891 }) do
		E.global["unitframe"]["aurawatch"]["DRUID"][idDruid] = E.global["unitframe"]["aurawatch"]["DRUID"][idDruid] or {}
		E.global["unitframe"]["aurawatch"]["DRUID"][idDruid]["color"] = E.global["unitframe"]["aurawatch"]["DRUID"][idDruid]["color"] or {}
	end
	E.global["unitframe"]["aurawatch"]["DRUID"][774]["point"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["DRUID"][774]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][8936]["point"] = "TOPRIGHT"
	E.global["unitframe"]["aurawatch"]["DRUID"][8936]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][33763]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["DRUID"][33763]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][48438]["point"] = "TOP"
	E.global["unitframe"]["aurawatch"]["DRUID"][48438]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][48438]["xOffset"] = -26
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["anyUnit"] = false
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["color"]["b"] = 1
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["color"]["g"] = 1
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["color"]["r"] = 1
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["countAnchor"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["countX"] = 1
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["countY"] = 1
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["displayText"] = false
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["enabled"] = true
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["id"] = 102342
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["onlyShowMissing"] = false
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["textThreshold"] = -1
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["xOffset"] = 0
	E.global["unitframe"]["aurawatch"]["DRUID"][102342]["yOffset"] = 0
	E.global["unitframe"]["aurawatch"]["DRUID"][102351]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["DRUID"][102351]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["DRUID"][102351]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][102351]["xOffset"] = 20
	E.global["unitframe"]["aurawatch"]["DRUID"][102352]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["DRUID"][102352]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["DRUID"][102352]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][102352]["xOffset"] = 20
	E.global["unitframe"]["aurawatch"]["DRUID"][155777]["point"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["DRUID"][155777]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][155777]["xOffset"] = -20
	E.global["unitframe"]["aurawatch"]["DRUID"][157982]["enabled"] = false
	E.global["unitframe"]["aurawatch"]["DRUID"][157982]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][188550]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["DRUID"][188550]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][200389]["enabled"] = false
	E.global["unitframe"]["aurawatch"]["DRUID"][200389]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][203554]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["DRUID"][203554]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][203554]["xOffset"] = -52
	E.global["unitframe"]["aurawatch"]["DRUID"][207386]["enabled"] = false
	E.global["unitframe"]["aurawatch"]["DRUID"][207386]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["DRUID"][391891]["point"] = "TOPRIGHT"
	E.global["unitframe"]["aurawatch"]["DRUID"][391891]["style"] = "texturedIcon"

	for _, idEvoker in pairs({ 355941, 357170, 357170, 357170, 360827, 363502, 363502, 364343, 364343, 366155, 367364, 373267, 373267, 376788, 395152, 395296, 406732, 406732, 410089, 410089 }) do
		E.global["unitframe"]["aurawatch"]["EVOKER"][idEvoker] = E.global["unitframe"]["aurawatch"]["EVOKER"][idEvoker] or {}
	end
	E.global["unitframe"]["aurawatch"]["EVOKER"][355941]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][357170]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["EVOKER"][357170]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["EVOKER"][357170]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][360827]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][363502]["enabled"] = false
	E.global["unitframe"]["aurawatch"]["EVOKER"][363502]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][364343]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["EVOKER"][364343]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][366155]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][367364]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][373267]["point"] = "BOTTOM"
	E.global["unitframe"]["aurawatch"]["EVOKER"][373267]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][376788]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][395152]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][395296]["enabled"] = false
	E.global["unitframe"]["aurawatch"]["EVOKER"][406732]["point"] = "BOTTOM"
	E.global["unitframe"]["aurawatch"]["EVOKER"][406732]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["EVOKER"][410089]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["EVOKER"][410089]["style"] = "texturedIcon"

	for _, idMonk in pairs({ 115175, 116841, 116849, 119611, 124682, 191840, 325209 }) do
		E.global["unitframe"]["aurawatch"]["MONK"][idMonk] = E.global["unitframe"]["aurawatch"]["MONK"][idMonk] or {}
	end
	E.global["unitframe"]["aurawatch"]["MONK"][115175]["point"] = "TOPRIGHT"
	E.global["unitframe"]["aurawatch"]["MONK"][115175]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["MONK"][115175]["xOffset"] = -20
	E.global["unitframe"]["aurawatch"]["MONK"][116841]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["MONK"][116841]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["MONK"][116841]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["MONK"][116849]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["MONK"][116849]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["MONK"][116849]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["MONK"][119611]["point"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["MONK"][119611]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["MONK"][124682]["point"] = "TOP"
	E.global["unitframe"]["aurawatch"]["MONK"][124682]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["MONK"][191840]["point"] = "TOPRIGHT"
	E.global["unitframe"]["aurawatch"]["MONK"][191840]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["MONK"][325209]["style"] = "texturedIcon"

	for _, idPaladin in pairs({ 1022, 1044, 6940, 53563, 148039, 156910, 157047, 200025, 204018, 223306, 287280, 395180 }) do
		E.global["unitframe"]["aurawatch"]["PALADIN"][idPaladin] = E.global["unitframe"]["aurawatch"]["PALADIN"][idPaladin] or {}
	end
	E.global["unitframe"]["aurawatch"]["PALADIN"][1022]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PALADIN"][1022]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PALADIN"][1022]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][1044]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PALADIN"][1044]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PALADIN"][1044]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][6940]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PALADIN"][6940]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PALADIN"][6940]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][53563]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][148039]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PALADIN"][148039]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PALADIN"][148039]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][156910]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][157047]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][200025]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][204018]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PALADIN"][204018]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PALADIN"][204018]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][223306]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PALADIN"][223306]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PALADIN"][223306]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][223306]["xOffset"] = 25
	E.global["unitframe"]["aurawatch"]["PALADIN"][287280]["point"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["PALADIN"][287280]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PALADIN"][395180]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PALADIN"][395180]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PALADIN"][395180]["style"] = "texturedIcon"

	for _, idPriest in pairs({ 17, 139, 6788, 10060, 33206, 41635, 47788, 77489, 193065, 194384, 214206 }) do
		E.global["unitframe"]["aurawatch"]["PRIEST"][idPriest] = E.global["unitframe"]["aurawatch"]["PRIEST"][idPriest] or {}
	end
	E.global["unitframe"]["aurawatch"]["PRIEST"][17]["point"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["PRIEST"][17]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][139]["point"] = "TOPRIGHT"
	E.global["unitframe"]["aurawatch"]["PRIEST"][139]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][6788]["point"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["PRIEST"][6788]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][6788]["xOffset"] = -20
	E.global["unitframe"]["aurawatch"]["PRIEST"][10060]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PRIEST"][10060]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PRIEST"][10060]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][33206]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PRIEST"][33206]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PRIEST"][33206]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][41635]["point"] = "BOTTOM"
	E.global["unitframe"]["aurawatch"]["PRIEST"][41635]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][47788]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PRIEST"][47788]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PRIEST"][47788]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][47788]["xOffset"] = 0
	E.global["unitframe"]["aurawatch"]["PRIEST"][77489]["enabled"] = false
	E.global["unitframe"]["aurawatch"]["PRIEST"][77489]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][193065]["enabled"] = false
	E.global["unitframe"]["aurawatch"]["PRIEST"][193065]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["PRIEST"][193065]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PRIEST"][193065]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][193065]["xOffset"] = 0
	E.global["unitframe"]["aurawatch"]["PRIEST"][194384]["point"] = "TOP"
	E.global["unitframe"]["aurawatch"]["PRIEST"][194384]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PRIEST"][194384]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["PRIEST"][214206]["point"] = "TOP"
	E.global["unitframe"]["aurawatch"]["PRIEST"][214206]["sizeOffset"] = 5
	E.global["unitframe"]["aurawatch"]["PRIEST"][214206]["style"] = "texturedIcon"

	for _, idShaman in pairs({ 974, 61295, 383648 }) do
		E.global["unitframe"]["aurawatch"]["SHAMAN"][idShaman] = E.global["unitframe"]["aurawatch"]["SHAMAN"][idShaman] or {}
	end
	E.global["unitframe"]["aurawatch"]["SHAMAN"][974]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["SHAMAN"][974]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["SHAMAN"][61295]["point"] = "BOTTOMRIGHT"
	E.global["unitframe"]["aurawatch"]["SHAMAN"][61295]["style"] = "texturedIcon"
	E.global["unitframe"]["aurawatch"]["SHAMAN"][383648]["point"] = "CENTER"
	E.global["unitframe"]["aurawatch"]["SHAMAN"][383648]["style"] = "texturedIcon"

	E.global["unitframe"]["aurawatch"]["ROGUE"][57934] = E.global["unitframe"]["aurawatch"]["ROGUE"][57934] or {}
	E.global["unitframe"]["aurawatch"]["ROGUE"][57934]["style"] = "texturedIcon"
end
