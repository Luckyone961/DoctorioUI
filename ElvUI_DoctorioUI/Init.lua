local E, _, V, P, G = unpack(ElvUI)
local L = E.Libs.ACL:GetLocale('ElvUI', E.global.general.locale)
local EP = LibStub('LibElvUIPlugin-1.0')
local PI = E:GetModule('PluginInstaller')

-- Variables & Cache
local _G = _G
local GetAddOnMetadata = (C_AddOns and C_AddOns.GetAddOnMetadata) or GetAddOnMetadata

-- Create the plugin
local addon, Engine = ...
local DoctorioUI = E:NewModule(addon, 'AceConsole-3.0', 'AceHook-3.0', 'AceEvent-3.0', 'AceTimer-3.0')

-- Setup engine parts
Engine[1] = DoctorioUI -- DoctorioUI
Engine[2] = E -- ElvUI Engine
Engine[3] = L -- ElvUI Locales
Engine[4] = V -- ElvUI PrivateDB
Engine[5] = P -- ElvUI ProfileDB
Engine[6] = G -- ElvUI GlobalDB
_G[addon] = Engine

-- Constants
DoctorioUI.Config = {}
DoctorioUI.Logo = 'Interface\\AddOns\\ElvUI_DoctorioUI\\Media\\Textures\\Logo.tga'
DoctorioUI.Name = '|cffFF7C0ADoctorioUI|r'
DoctorioUI.RequiredVersion = 13.64
DoctorioUI.Version = GetAddOnMetadata(addon, 'Version')

-- Private db defaults
V.DoctorioUI = {}
-- Profile db defaults
P.DoctorioUI = {}
-- Global db defaults
G.DoctorioUI = { install_version = nil }

-- This function initializes our plugin
function DoctorioUI:Initialize()
	if E.private.install_complete == nil then
		E.private.install_complete = E.version
	end

	if E.global.DoctorioUI.install_version == nil then
		PI:Queue(DoctorioUI.InstallerData)
	end

	EP:RegisterPlugin(addon, DoctorioUI.Config)
	DoctorioUI:RegisterEvents()
end

-- Callback to ElvUI
local function CallbackInitialize()
	DoctorioUI:Initialize()
end

-- ElvUI is ready and our plugin is initialized
E:RegisterModule(addon, CallbackInitialize)
