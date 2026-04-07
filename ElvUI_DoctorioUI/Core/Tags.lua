local E = unpack(ElvUI)

local pcall = pcall

local UnitGUID = UnitGUID

-- April 7th, 2026
-- Source tag: https://github.com/HK2084/Details_iLvlDisplay
-- License: MIT
E:AddTag('doctorio:itemlevel', 'UNIT_INVENTORY_CHANGED', function(unit)
	if not E:IsAddOnEnabled('Details_iLvlDisplay') then return end

    local guid = UnitGUID(unit)
    if not guid then return '' end

    local cached = AddonAPI.GetCacheData(guid)
    if not cached or not cached.ilvl then return '' end

    local tag = AddonAPI.GetIlvlColor(cached.ilvl) .. cached.ilvl
    return tag
end)
E:AddTagInfo('doctorio:itemlevel', 'DoctorioUI', 'Displays the units average itemlevel.')

local AddonAPI = Details_iLvlDisplayAPI
if AddonAPI then
	AddonAPI:RegisterCallback('elvui', function()
		pcall(E.oUF.Tags.RefreshMethods, E.oUF.Tags, 'doctorio:itemlevel')
	end)
end
