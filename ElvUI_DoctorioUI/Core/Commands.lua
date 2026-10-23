local _, Private = ...
local L = Private.L

local strlower = string.lower
local unpack = unpack

local _G = _G
local SlashCmdList = _G.SlashCmdList

local E = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')

-- Alt setup, the config button runs this too
function Private:AltSetup()
	Private:Setup_PrivateDB()
	Private:Print(L["Alt setup imported successfully."])
	E:StaticPopup_Show('DoctorioUI_RL')
end

-- Open settings helper
local function OpenSettings()
	E:ToggleOptions('DoctorioUI')
	E:Config_UpdateSize(true)
end

-- Addon Compartment OnClick TOC func
_G.DoctorioUI_OnAddonCompartmentClick = OpenSettings

-- DoctorioUI chat commands
local commands = {
	install = function() PI:Queue(Private.InstallerData) end,
	config = OpenSettings,
	alt = Private.AltSetup,
	twink = Private.AltSetup,
}

local function Toggles(msg)
	local command = commands[strlower(msg)]
	if command then
		command()
	end
end

-- Register all commands
function Private:LoadCommands()
	_G.SLASH_DOCTORIOUI1 = '/doctorioui'
	_G.SLASH_DOCTORIOUI2 = '/doctorio'
	_G.SLASH_DOCTORIOUI3 = '/doc'
	SlashCmdList.DOCTORIOUI = Toggles
end
