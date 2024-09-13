local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Variables & Cache
local ipairs = ipairs
local pairs = pairs

-- Aura Filters DB
function DoctorioUI:Setup_AuraFilters()

	local global = E.global
	local unitframe = global.unitframe or {}
	local aurafilters = unitframe.aurafilters or {}
	local aurawatch = unitframe.aurawatch or {}

	local function Add(list, ids, value)
		for _, id in ipairs(ids) do
			list[id] = list[id] or value
		end
	end

	local classes = {
		DRUID = aurawatch.DRUID or {},
		EVOKER = aurawatch.EVOKER or {},
		MONK = aurawatch.MONK or {},
		PALADIN = aurawatch.PALADIN or {},
		PRIEST = aurawatch.PRIEST or {},
		SHAMAN = aurawatch.SHAMAN or {},
		ROGUE = aurawatch.ROGUE or {}
	}

	local ids = {
		blacklist = {
			378277, 407475, 202019, 449042, 429025, 442604, 71909, 429983, 403655, 142861, 451086, 387847, 401809,
			403978, 396201, 139485, 410355, 377780, 420812, 463461, 264689, 440193, 433627, 422026, 463464, 429231,
			404369, 392193, 407302, 433759, 139840, 428852, 460600, 447532, 405394, 440393, 425479, 442437, 450661,
			408204, 87024, 425417, 436255, 374864, 424143, 458505, 391568, 396222, 459273, 403747, 402052, 427329,
			421407, 384050, 443274, 377612, 445570, 375458, 407576, 423195, 372514, 429252, 114216, 422750, 460360,
			460364, 372517, 326809, 396233, 426897, 396106, 447170, 420714, 410642, 372648, 382912, 441626, 396109,
			427602, 425180, 393879, 387441, 425564, 417543, 413070, 396113, 402617, 451764, 459986, 390569, 448005,
			45181, 328605, 436580, 427928, 407329, 429204, 117519, 443612, 401383, 157131, 199368, 410247, 421368,
			451965, 424269, 396085, 25771, 435136, 463428, 421298, 425128, 373681, 374466, 464442, 420858, 407917,
			414356, 371070, 144351, 401718, 374609, 447571, 401525, 137731, 396023, 424734, 443305, 396212
		},
		whitelist = {
			2825, 31821, 32182, 62618, 80353, 90355, 97462, 116841, 196718, 325174, 357170,
			390386, 443526
		},
		DRUID = { 774, 8936, 33763, 48438, 102342, 102351, 102352, 155777, 157982, 188550, 200389, 203554, 207386, 391891 },
		EVOKER = { 355941, 357170, 360827, 361022, 363502, 364343, 366155, 367364, 373267, 376788, 395152, 395296, 406732, 406789, 410089 },
		MONK = { 115175, 116841, 116849, 119611, 124682, 191840, 325209 },
		PALADIN = { 1022, 1044, 6940, 53563, 148039, 156322, 156910, 157047, 200025, 200654, 204018, 223306, 395180, 431381 },
		PRIEST = { 17, 139, 6788, 10060, 33206, 41635, 47788, 77489, 193065, 194384, 214206 },
		SHAMAN = { 974, 61295, 383648 }
	}

	for class, classIDs in pairs(ids) do
		if class == 'blacklist' then
			Add(aurafilters.Blacklist or {}, classIDs, {enable = true, priority = 0})
		elseif class == 'whitelist' then
			Add(aurafilters.Whitelist or {}, classIDs, {enable = false})
		else
			Add(classes[class], classIDs, {enable = true, color = {}})
		end
	end

	-- Druid
	classes["DRUID"][102342]["enabled"] = false
	classes["DRUID"][102342]["anyUnit"] = false
	classes["DRUID"][102342]["point"] = "CENTER"
	classes["DRUID"][102342]["id"] = 102342
	classes["DRUID"][102342]["displayText"] = false
	classes["DRUID"][102342]["textThreshold"] = -1
	classes["DRUID"][102342]["yOffset"] = 0
	classes["DRUID"][102342]["countAnchor"] = "BOTTOMRIGHT"
	classes["DRUID"][102342]["sizeOffset"] = 5
	classes["DRUID"][102342]["style"] = "texturedIcon"
	classes["DRUID"][102342]["countY"] = 1
	classes["DRUID"][102342]["countX"] = 1
	classes["DRUID"][102342]["xOffset"] = 0
	classes["DRUID"][102342]["color"]["b"] = 1
	classes["DRUID"][102342]["color"]["g"] = 1
	classes["DRUID"][102342]["color"]["r"] = 1
	classes["DRUID"][102342]["onlyShowMissing"] = false
	classes["DRUID"][207386]["enabled"] = false
	classes["DRUID"][207386]["style"] = "texturedIcon"
	classes["DRUID"][188550]["point"] = "CENTER"
	classes["DRUID"][188550]["style"] = "texturedIcon"
	classes["DRUID"][157982]["enabled"] = false
	classes["DRUID"][157982]["style"] = "texturedIcon"
	classes["DRUID"][203554]["point"] = "CENTER"
	classes["DRUID"][203554]["xOffset"] = -52
	classes["DRUID"][203554]["enabled"] = false
	classes["DRUID"][203554]["style"] = "texturedIcon"
	classes["DRUID"][774]["point"] = "BOTTOMRIGHT"
	classes["DRUID"][774]["style"] = "texturedIcon"
	classes["DRUID"][48438]["point"] = "CENTER"
	classes["DRUID"][48438]["style"] = "texturedIcon"
	classes["DRUID"][48438]["xOffset"] = -26
	classes["DRUID"][102351]["point"] = "CENTER"
	classes["DRUID"][102351]["xOffset"] = 20
	classes["DRUID"][102351]["sizeOffset"] = 5
	classes["DRUID"][102351]["style"] = "texturedIcon"
	classes["DRUID"][102352]["point"] = "CENTER"
	classes["DRUID"][102352]["xOffset"] = 20
	classes["DRUID"][102352]["sizeOffset"] = 5
	classes["DRUID"][102352]["style"] = "texturedIcon"
	classes["DRUID"][200389]["enabled"] = false
	classes["DRUID"][200389]["style"] = "texturedIcon"
	classes["DRUID"][8936]["point"] = "TOPRIGHT"
	classes["DRUID"][8936]["style"] = "texturedIcon"
	classes["DRUID"][33763]["point"] = "CENTER"
	classes["DRUID"][33763]["style"] = "texturedIcon"
	classes["DRUID"][391891]["point"] = "TOPRIGHT"
	classes["DRUID"][391891]["style"] = "texturedIcon"
	classes["DRUID"][155777]["point"] = "BOTTOMRIGHT"
	classes["DRUID"][155777]["style"] = "texturedIcon"
	classes["DRUID"][155777]["xOffset"] = -20

	-- Evoker
	classes["EVOKER"][355941]["style"] = "texturedIcon"
	classes["EVOKER"][357170]["point"] = "CENTER"
	classes["EVOKER"][357170]["enabled"] = false
	classes["EVOKER"][357170]["sizeOffset"] = 5
	classes["EVOKER"][357170]["style"] = "texturedIcon"
	classes["EVOKER"][360827]["style"] = "texturedIcon"
	classes["EVOKER"][361022]["enabled"] = false
	classes["EVOKER"][361022]["style"] = "texturedIcon"
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
	classes["EVOKER"][406732]["enabled"] = false
	classes["EVOKER"][406732]["style"] = "texturedIcon"
	classes["EVOKER"][406789]["enabled"] = false
	classes["EVOKER"][406789]["style"] = "texturedIcon"
	classes["EVOKER"][410089]["sizeOffset"] = 5
	classes["EVOKER"][410089]["style"] = "texturedIcon"

	-- Monk
	classes["MONK"][115175]["point"] = "TOPRIGHT"
	classes["MONK"][115175]["enabled"] = false
	classes["MONK"][115175]["style"] = "texturedIcon"
	classes["MONK"][116841]["point"] = "CENTER"
	classes["MONK"][116841]["enabled"] = false
	classes["MONK"][116841]["sizeOffset"] = 5
	classes["MONK"][116841]["style"] = "texturedIcon"
	classes["MONK"][116849]["point"] = "CENTER"
	classes["MONK"][116849]["enabled"] = false
	classes["MONK"][116849]["sizeOffset"] = 5
	classes["MONK"][116849]["style"] = "texturedIcon"
	classes["MONK"][119611]["point"] = "BOTTOMRIGHT"
	classes["MONK"][119611]["style"] = "texturedIcon"
	classes["MONK"][124682]["point"] = "TOP"
	classes["MONK"][124682]["style"] = "texturedIcon"
	classes["MONK"][191840]["point"] = "TOPRIGHT"
	classes["MONK"][191840]["enabled"] = false
	classes["MONK"][191840]["style"] = "texturedIcon"
	classes["MONK"][325209]["style"] = "texturedIcon"

	-- Paladin
	classes["PALADIN"][1022]["point"] = "CENTER"
	classes["PALADIN"][1022]["enabled"] = false
	classes["PALADIN"][1022]["sizeOffset"] = 5
	classes["PALADIN"][1022]["style"] = "texturedIcon"
	classes["PALADIN"][1044]["point"] = "CENTER"
	classes["PALADIN"][1044]["enabled"] = false
	classes["PALADIN"][1044]["sizeOffset"] = 5
	classes["PALADIN"][1044]["style"] = "texturedIcon"
	classes["PALADIN"][6940]["point"] = "CENTER"
	classes["PALADIN"][6940]["enabled"] = false
	classes["PALADIN"][6940]["sizeOffset"] = 5
	classes["PALADIN"][6940]["style"] = "texturedIcon"
	classes["PALADIN"][53563]["point"] = "TOP"
	classes["PALADIN"][53563]["style"] = "texturedIcon"
	classes["PALADIN"][148039]["point"] = "CENTER"
	classes["PALADIN"][148039]["sizeOffset"] = 5
	classes["PALADIN"][148039]["style"] = "texturedIcon"
	classes["PALADIN"][156322]["point"] = "TOPRIGHT"
	classes["PALADIN"][156322]["xOffset"] = -23
	classes["PALADIN"][156322]["enabled"] = false
	classes["PALADIN"][156322]["style"] = "texturedIcon"
	classes["PALADIN"][156910]["point"] = "TOP"
	classes["PALADIN"][156910]["style"] = "texturedIcon"
	classes["PALADIN"][157047]["enabled"] = false
	classes["PALADIN"][157047]["style"] = "texturedIcon"
	classes["PALADIN"][200025]["point"] = "BOTTOMRIGHT"
	classes["PALADIN"][200025]["style"] = "texturedIcon"
	classes["PALADIN"][200025]["xOffset"] = -23
	classes["PALADIN"][200654]["point"] = "TOPRIGHT"
	classes["PALADIN"][200654]["color"]["r"] = 1
	classes["PALADIN"][200654]["color"]["g"] = 1
	classes["PALADIN"][200654]["color"]["b"] = 1
	classes["PALADIN"][200654]["displayText"] = false
	classes["PALADIN"][200654]["yOffset"] = 0
	classes["PALADIN"][200654]["enabled"] = true
	classes["PALADIN"][200654]["anyUnit"] = false
	classes["PALADIN"][200654]["cooldownX"] = 1
	classes["PALADIN"][200654]["id"] = 200654
	classes["PALADIN"][200654]["countY"] = 1
	classes["PALADIN"][200654]["textThreshold"] = -1
	classes["PALADIN"][200654]["countAnchor"] = "BOTTOMRIGHT"
	classes["PALADIN"][200654]["sizeOffset"] = 0
	classes["PALADIN"][200654]["style"] = "texturedIcon"
	classes["PALADIN"][200654]["cooldownY"] = 1
	classes["PALADIN"][200654]["countX"] = 1
	classes["PALADIN"][200654]["xOffset"] = 0
	classes["PALADIN"][200654]["cooldownAnchor"] = "CENTER"
	classes["PALADIN"][200654]["onlyShowMissing"] = false
	classes["PALADIN"][204018]["point"] = "CENTER"
	classes["PALADIN"][204018]["enabled"] = false
	classes["PALADIN"][204018]["sizeOffset"] = 5
	classes["PALADIN"][204018]["style"] = "texturedIcon"
	classes["PALADIN"][223306]["point"] = "CENTER"
	classes["PALADIN"][223306]["xOffset"] = 25
	classes["PALADIN"][223306]["enabled"] = false
	classes["PALADIN"][223306]["sizeOffset"] = 5
	classes["PALADIN"][223306]["style"] = "texturedIcon"
	classes["PALADIN"][395180]["point"] = "CENTER"
	classes["PALADIN"][395180]["sizeOffset"] = 5
	classes["PALADIN"][395180]["style"] = "texturedIcon"
	classes["PALADIN"][431381]["point"] = "BOTTOMRIGHT"
	classes["PALADIN"][431381]["style"] = "texturedIcon"

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
	classes["PRIEST"][33206]["enabled"] = false
	classes["PRIEST"][33206]["sizeOffset"] = 5
	classes["PRIEST"][33206]["style"] = "texturedIcon"
	classes["PRIEST"][41635]["point"] = "BOTTOM"
	classes["PRIEST"][41635]["style"] = "texturedIcon"
	classes["PRIEST"][47788]["point"] = "CENTER"
	classes["PRIEST"][47788]["xOffset"] = 0
	classes["PRIEST"][47788]["enabled"] = false
	classes["PRIEST"][47788]["sizeOffset"] = 5
	classes["PRIEST"][47788]["style"] = "texturedIcon"
	classes["PRIEST"][77489]["enabled"] = false
	classes["PRIEST"][77489]["style"] = "texturedIcon"
	classes["PRIEST"][193065]["point"] = "CENTER"
	classes["PRIEST"][193065]["xOffset"] = 0
	classes["PRIEST"][193065]["enabled"] = false
	classes["PRIEST"][193065]["sizeOffset"] = 5
	classes["PRIEST"][193065]["style"] = "texturedIcon"
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
