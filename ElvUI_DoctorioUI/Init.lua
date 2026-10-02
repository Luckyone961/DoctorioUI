local Name, Private = ...

local setmetatable = setmetatable
local tonumber = tonumber
local unpack = unpack

local GetAddOnMetadata = C_AddOns.GetAddOnMetadata
local IsAddOnLoaded = C_AddOns.IsAddOnLoaded

local E, _, _, _, G = unpack(ElvUI)

-- ElvUI ships these
Private.Libs = {
	ACH = E.Libs.ACH,
	EP = E.Libs.EP,
	LSM = E.Libs.LSM,
}

-- Locales, the locale files follow the language picked in ElvUI
local translations = {}
Private.L = setmetatable({}, {
	__index = function(_, key) return translations[key] or key end,
	__newindex = function(_, key, value) if value ~= true then translations[key] = value end end,
})

-- Logo, Name
Private.Logo = 'Interface\\AddOns\\ElvUI_DoctorioUI\\Media\\Textures\\Logo.tga'
Private.Name = '|cffFF7C0ADoctorioUI|r'

-- Version
Private.Version = GetAddOnMetadata(Name, 'Version')
Private.RequiredElvUI = tonumber(GetAddOnMetadata(Name, 'X-Required-ElvUI'))

-- API checks
Private.IsAddOnLoaded = IsAddOnLoaded

-- ElvUI module, initialized by ElvUI itself (Core.lua)
Private.Modules = {
	Core = E:NewModule(Name, 'AceEvent-3.0'),
}

-- Global db defaults
G.DoctorioUI = {}
