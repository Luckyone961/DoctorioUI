local DoctorioUI, E, L, V, P, G = unpack(select(2, ...))
local DT = E:GetModule('DataTexts')

-- Variables & Cache
local format, print = format, print
local ReloadUI = ReloadUI
local SetCVar = SetCVar

-- Chat print
function DoctorioUI:Print(msg)
	print(DoctorioUI.Name..': '..msg)
end

-- Reload popup
E.PopupDialogs.DoctorioUI_RL = {
	text = L["Reload required - continue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = ReloadUI,
	whileDead = 1,
	hideOnEscape = false,
}

-- Version check popup
E.PopupDialogs.DoctorioUI_VC = {
	text = format('|cffbf0008%s|r', L["Your ElvUI is outdated - please update and reload."]),
	whileDead = 1,
	hideOnEscape = false,
}

-- Editbox popup from ElvUI\Core\General\StaticPopups.lua:78
-- Slightly modified for title text and additional chat print
E.PopupDialogs.DoctorioUI_EDITBOX = {
	text = DoctorioUI.Name,
	button1 = OKAY,
	hasEditBox = 1,
	OnShow = function(self, data)
		self.editBox:SetAutoFocus(false)
		self.editBox.width = self.editBox:GetWidth()
		self.editBox:Width(280)
		self.editBox:AddHistoryLine('text')
		self.editBox.temptxt = data
		self.editBox:SetText(data)
		self.editBox:HighlightText()
		self.editBox:SetJustifyH('CENTER')
		DoctorioUI:Print(data)
	end,
	OnHide = function(self)
		self.editBox:Width(self.editBox.width or 50)
		self.editBox.width = nil
		self.temptxt = nil
	end,
	EditBoxOnEnterPressed = function(self)
		self:GetParent():Hide()
	end,
	EditBoxOnEscapePressed = function(self)
		self:GetParent():Hide()
	end,
	EditBoxOnTextChanged = function(self)
		if self:GetText() ~= self.temptxt then
			self:SetText(self.temptxt)
		end
		self:HighlightText()
		self:ClearFocus()
	end,
	OnAccept = E.noop,
	whileDead = 1,
	preferredIndex = 3,
	hideOnEscape = 1,
}

-- Version check
function DoctorioUI:VersionCheck()
	if E.version < DoctorioUI.RequiredVersion then
		E:StaticPopup_Show('DoctorioUI_VC')
		DoctorioUI:Print(format('|cffbf0008%s|r', L["Your ElvUI is outdated - please update and reload."]))
	end
end

-- E.private & Media
function DoctorioUI:Setup_PrivateDB()
	----------------------------------------------------------------------
	----------------------- Do Not Touch This Part -----------------------
	----------------------------------------------------------------------
	E.private.install_complete = E.version
	----------------------------------------------------------------------
	----------------------- Copy/Paste Export Here -----------------------
	----------------------------------------------------------------------
	E.private["bags"]["enable"] = false
	E.private["general"]["minimap"]["hideTracking"] = true
	E.private["general"]["nameplateFont"] = "Expressway"
	E.private["general"]["nameplateLargeFont"] = "Expressway"
	E.private["general"]["raidUtility"] = false
	E.private["general"]["totemTracker"] = false
	E.private["nameplates"]["enable"] = false
	E.private["skins"]["parchmentRemoverEnable"] = true
end

-- E.global & Custom DataText
function DoctorioUI:Setup_GlobalDB()
	----------------------------------------------------------------------
	----------------------- Do Not Touch This Part -----------------------
	----------------------------------------------------------------------
	SetCVar('uiScale', 0.71111111111111)
	E.global.general.UIScale = 0.71111111111111
	DT:BuildPanelFrame('Top Panel (Left)')
	DT:BuildPanelFrame('Top Panel (Right)')
	----------------------------------------------------------------------
	----------------------- Copy/Paste Export Here -----------------------
	----------------------------------------------------------------------
	E.global["datatexts"]["customPanels"]["Top Panel (Left)"]["backdrop"] = false
	E.global["datatexts"]["customPanels"]["Top Panel (Left)"]["fonts"]["enable"] = true
	E.global["datatexts"]["customPanels"]["Top Panel (Left)"]["fonts"]["font"] = "Expressway"
	E.global["datatexts"]["customPanels"]["Top Panel (Left)"]["height"] = 20
	E.global["datatexts"]["customPanels"]["Top Panel (Left)"]["name"] = "Top Panel (Left)"
	E.global["datatexts"]["customPanels"]["Top Panel (Left)"]["textJustify"] = "LEFT"
	E.global["datatexts"]["customPanels"]["Top Panel (Left)"]["width"] = 350
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["backdrop"] = false
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["fonts"]["enable"] = true
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["fonts"]["font"] = "Expressway"
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["height"] = 20
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["name"] = "Top Panel (Right)"
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["numPoints"] = 4
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["width"] = 201
	E.global["general"]["fadeMapWhenMoving"] = false
	E.global["general"]["WorldMapCoordinates"]["position"] = "BOTTOMRIGHT"

	if E:IsAddOnEnabled('BugSack') then
		E.global["datatexts"]["settings"]["LDB_BugSack"]["icon"] = true
		E.global["datatexts"]["settings"]["LDB_BugSack"]["useValueColor"] = true
	end
end

-- ElvUI Layout setup
function DoctorioUI:Setup_Layout()
	-- Disable LibDualSpec to set the profile
	ElvDB["namespaces"]["LibDualSpec-1.0"] = ElvDB["namespaces"]["LibDualSpec-1.0"] or {}
	ElvDB["namespaces"]["LibDualSpec-1.0"]["char"] = ElvDB["namespaces"]["LibDualSpec-1.0"]["char"] or {}
	ElvDB["namespaces"]["LibDualSpec-1.0"]["char"][E.mynameRealm] = ElvDB["namespaces"]["LibDualSpec-1.0"]["char"][E.mynameRealm] or {}
	ElvDB["namespaces"]["LibDualSpec-1.0"]["char"][E.mynameRealm]["enabled"] = false

	-- Create a fresh profile in ElvUI
	E.data:SetProfile('DoctorioUI '..DoctorioUI.Version)

	-- E.global & Custom DataText
	DoctorioUI:Setup_GlobalDB()

	-- E.private & Media
	DoctorioUI:Setup_PrivateDB()

	-- E.db & Movers
	DoctorioUI:Setup_ElvUI()

	-- Aura filters
	DoctorioUI:Setup_AuraFilters()

	-- Push the update
	E:StaggeredUpdateAll()

	DoctorioUI:Print(L["Layout has been set."])
end

----------------------------------------------------------------------
------------------------------- Events -------------------------------
----------------------------------------------------------------------

-- Stuff in here runs on login and reload
function DoctorioUI:PLAYER_ENTERING_WORLD(_, initLogin, isReload)
	if initLogin or isReload then
		DoctorioUI:VersionCheck()
	end
	DoctorioUI:LoadCommands()
end

-- This is called in DoctorioUI:Initialize()
function DoctorioUI:RegisterEvents()
	DoctorioUI:RegisterEvent('PLAYER_ENTERING_WORLD')
end
