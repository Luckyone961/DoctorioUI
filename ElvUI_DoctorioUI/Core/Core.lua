local Name, Private = ...
local L = Private.L
local EP = Private.Libs.EP
local Core = Private.Modules.Core

local format = string.format
local print = print
local tonumber = tonumber
local unpack = unpack

local C_UI = C_UI

local ACCEPT = ACCEPT
local CANCEL = CANCEL
local OKAY = OKAY

local E = unpack(ElvUI)
local PI = E:GetModule('PluginInstaller')

-- Chat print
function Private:Print(msg)
	print(Private.Name .. ': ' .. msg)
end

-- Reload popup
E.PopupDialogs.DoctorioUI_RL = {
	text = L["Reload required - continue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = function() C_UI.Reload() end,
	whileDead = 1,
	hideOnEscape = false,
}

-- Version check popup
E.PopupDialogs.DoctorioUI_VC = {
	text = format('|cffbf0008%s|r', L["Your ElvUI is outdated - please update and reload."]),
	whileDead = 1,
	hideOnEscape = false,
}

-- Editbox popup, also prints the text to chat
-- E:StaticPopup_Show('DoctorioUI_EDITBOX', text_arg1, text_arg2, data)
local function CloseEditBox(self)
	self:GetParent():Hide()
end

E.PopupDialogs.DoctorioUI_EDITBOX = {
	text = Private.Name,
	button1 = OKAY,
	hasEditBox = 1,
	OnShow = function(self, data)
		local editBox = self.editBox
		editBox:SetAutoFocus(false)
		editBox.width = editBox:GetWidth()
		editBox:Width(280)
		editBox.temptxt = data
		editBox:SetText(data)
		editBox:SetJustifyH('CENTER')
		Private:Print(data)
	end,
	OnHide = function(self)
		local editBox = self.editBox
		editBox:Width(editBox.width or 50)
		editBox.width = nil
		editBox.temptxt = nil
	end,
	EditBoxOnEnterPressed = CloseEditBox,
	EditBoxOnEscapePressed = CloseEditBox,
	EditBoxOnTextChanged = function(self)
		if self.temptxt and self:GetText() ~= self.temptxt then
			self:SetText(self.temptxt)
		end
		self:HighlightText()
	end,
	whileDead = 1,
	preferredIndex = 3,
	hideOnEscape = 1,
}

-- Version check
local function VersionCheck()
	if E.version < Private.RequiredElvUI then
		E:StaticPopup_Show('DoctorioUI_VC')
		Private:Print(format('|cffbf0008%s|r', L["Your ElvUI is outdated - please update and reload."]))
	end
end

----------------------------------------------------------------------
------------------------------- Events -------------------------------
----------------------------------------------------------------------

-- Version check on login and reload, raid visibility on every loading screen
function Core:PLAYER_ENTERING_WORLD(_, initLogin, isReload)
	if initLogin or isReload then
		VersionCheck()
	end
	Private:MythicVisibility()
end

function Core:PLAYER_SPECIALIZATION_CHANGED(_, unit)
	-- Fires for other units as well, only react to the player
	if unit ~= 'player' then return end

	Private:MythicVisibility()
end

function Core:PLAYER_DIFFICULTY_CHANGED()
	Private:MythicVisibility()
end

-- ElvUI calls this from its own init, before its installer check
function Core:Initialize()
	-- Skip the ElvUI installer
	if E.private.install_complete == nil then
		E.private.install_complete = E.version
	end

	if not E.global.DoctorioUI.install_version or tonumber(E.global.DoctorioUI.install_version) < tonumber(Private.Version) then
		PI:Queue(Private.InstallerData)
	end

	EP:RegisterPlugin(Name, Private.RegisterElvUIConfig)
	Private:LoadCommands()

	self:RegisterEvent('PLAYER_ENTERING_WORLD')
	self:RegisterEvent('PLAYER_SPECIALIZATION_CHANGED')
	self:RegisterEvent('PLAYER_DIFFICULTY_CHANGED')
end

E:RegisterModule(Name)
