local _, Private = ...
local L = Private.L

local pcall = pcall
local unpack = unpack

local issecretvalue = issecretvalue
local UnitGUID = UnitGUID

local AddonAPI = Details_iLvlDisplayAPI

local E = unpack(ElvUI)

-- April 7th, 2026
-- Source tag: https://github.com/HK2084/Details_iLvlDisplay
-- License: MIT
E:AddTag('doctorio:itemlevel', 'UNIT_INVENTORY_CHANGED', function(unit)
	if not AddonAPI then return end

    local guid = UnitGUID(unit)
    if not guid or issecretvalue(guid) then return '' end

    local cached = AddonAPI.GetCacheData(guid)
    if not cached or not cached.ilvl then return '' end

    local tag = AddonAPI.GetIlvlColor(cached.ilvl) .. cached.ilvl
    return tag
end)
E:AddTagInfo('doctorio:itemlevel', Private.Name, L["Displays the units average itemlevel."])

if AddonAPI then
	AddonAPI:RegisterCallback('doctorioui', function()
		pcall(E.oUF.Tags.RefreshMethods, E.oUF.Tags, 'doctorio:itemlevel')
	end)
end
