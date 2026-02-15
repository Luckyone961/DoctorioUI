local DoctorioUI, E, L = unpack((select(2, ...)))
local DT = E:GetModule('DataTexts')

-- Variables & Cache
local format, print = format, print
local C_UI_Reload = C_UI.Reload
local SetCVar = C_CVar.SetCVar

-- Chat print
function DoctorioUI:Print(msg)
	print(DoctorioUI.Name..': '..msg)
end

-- Reload popup
E.PopupDialogs.DoctorioUI_RL = {
	text = L["Reload required - continue?"],
	button1 = ACCEPT,
	button2 = CANCEL,
	OnAccept = C_UI_Reload,
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
	if E.version < DoctorioUI.RequiredElvUI then
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
	E.private["general"]["chatBubbles"] = "disabled"
	E.private["general"]["chatBubbleFont"] = "Expressway"
	E.private["general"]["chatBubbleFontOutline"] = "OUTLINE"
	E.private["general"]["glossTex"] = "Better Blizzard"
	E.private["general"]["minimap"]["hideTracking"] = true
	E.private["general"]["nameplateFont"] = "Expressway"
	E.private["general"]["nameplateFontOutline"] = "OUTLINE"
	E.private["general"]["nameplateLargeFont"] = "Expressway"
	E.private["general"]["nameplateLargeFontOutline"] = "OUTLINE"
	E.private["general"]["normTex"] = "Better Blizzard"
	E.private["general"]["raidUtility"] = false
	E.private["general"]["totemTracker"] = false
	E.private["skins"]["blizzard"]["losscontrol"] = false
	E.private["skins"]["parchmentRemoverEnable"] = true
	E.private["theme"] = "default"
end

-- E.global & Custom DataText
function DoctorioUI:Setup_GlobalDB()
	----------------------------------------------------------------------
	----------------------- Do Not Touch This Part -----------------------
	----------------------------------------------------------------------
	SetCVar('uiScale', 0.71111111111111)
	SetCVar('useUiScale', 1)
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
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["numPoints"] = 3
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["textJustify"] = "RIGHT"
	E.global["datatexts"]["customPanels"]["Top Panel (Right)"]["width"] = 202
	E.global["general"]["fadeMapWhenMoving"] = false
	E.global["general"]["WorldMapCoordinates"]["position"] = "BOTTOMRIGHT"

	if E:IsAddOnEnabled('BugSack') then
		E.global["datatexts"]["settings"]["LDB_BugSack"]["icon"] = true
		E.global["datatexts"]["settings"]["LDB_BugSack"]["useValueColor"] = true
	end
end

-- ElvUI Nameplates
function DoctorioUI:Setup_ElvUI_Nameplates()
	----------------------------------------------------------------------
	----------------------- Do Not Touch This Part -----------------------
	----------------------------------------------------------------------
	E.private.nameplates.enable = true
	E.db.nameplates.visibility.classColorFriendlyPlayerNames = true
	E.db.nameplates.visibility.showOnlyNames = true
	----------------------------------------------------------------------
	----------------------- Copy/Paste Export Here -----------------------
	----------------------------------------------------------------------
	E.db["nameplates"]["widgets"]["below"] = false

	E.db["nameplates"]["clampToScreen"] = true
	E.db["nameplates"]["clickSize"]["height"] = 18
	E.db["nameplates"]["clickSize"]["width"] = 140
	E.db["nameplates"]["clickThrough"]["friendly"] = true
	E.db["nameplates"]["fadeIn"] = false
	E.db["nameplates"]["font"] = "Expressway"
	E.db["nameplates"]["lowHealthThreshold"] = 0
	E.db["nameplates"]["multiplier"] = 1
	E.db["nameplates"]["overlapH"] = 1
	E.db["nameplates"]["statusbar"] = "Better Blizzard"

	E.db["nameplates"]["visibility"]["enemy"]["guardians"] = true
	E.db["nameplates"]["visibility"]["enemy"]["minions"] = true
	E.db["nameplates"]["visibility"]["friendly"]["npcs"] = false

	E.db["nameplates"]["units"]["TARGET"]["arrow"] = "Arrow61"
	E.db["nameplates"]["units"]["TARGET"]["arrowScale"] = 0.5
	E.db["nameplates"]["units"]["TARGET"]["arrowSpacing"] = -2
	E.db["nameplates"]["units"]["TARGET"]["glowStyle"] = "style7"

	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["desaturate"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["enable"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["numAuras"] = 3
	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["size"] = 18
	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["auras"]["xOffset"] = -100
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["anchorPoint"] = "LEFT"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["isAuraRaidPlayer"] = true
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["xOffset"] = 3
	E.db["nameplates"]["units"]["ENEMY_NPC"]["buffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["displayTarget"] = true
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["fontSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["height"] = 10
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconOffsetX"] = 10
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconPosition"] = "LEFT"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["iconSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["targetAnchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["targetFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["targetFontSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["targetStyle"] = "SEPARATE"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["targetXOffset"] = 1
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["textPosition"] = "ONBAR"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["textXOffset"] = 10
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["width"] = 140
	E.db["nameplates"]["units"]["ENEMY_NPC"]["castbar"]["yOffset"] = -15
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["anchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["isAuraCrowdControl"] = true
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["xOffset"] = -3
	E.db["nameplates"]["units"]["ENEMY_NPC"]["debuffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["healPrediction"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["height"] = 18
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["enable"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["text"]["format"] = ""
	E.db["nameplates"]["units"]["ENEMY_NPC"]["health"]["width"] = 140
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["enable"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["level"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["format"] = "[name]"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["position"] = "CENTER"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["enable"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["questIcon"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["position"] = "RIGHT"
	E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["size"] = 20
	E.db["nameplates"]["units"]["ENEMY_NPC"]["raidTargetIndicator"]["xOffset"] = -20
	E.db["nameplates"]["units"]["ENEMY_NPC"]["showTitle"] = false
	E.db["nameplates"]["units"]["ENEMY_NPC"]["title"]["font"] = "Expressway"

	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["desaturate"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["enable"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["numAuras"] = 3
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["size"] = 18
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["auras"]["xOffset"] = -100
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["anchorPoint"] = "LEFT"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["isAuraBigDefensive"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["isAuraExternalDefensive"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["isAuraImportant"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["isAuraImportantPlayer"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["isAuraRaidPlayer"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["isAuraRaidPlayerDispellable"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["maxDuration"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["priority"] = "Blacklist,Whitelist,Dispellable,blockNoDuration,RaidBuffsElvUI"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["xOffset"] = 3
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["buffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["displayTarget"] = true
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["fontSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["height"] = 10
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconOffsetX"] = 10
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconPosition"] = "LEFT"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["iconSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["targetAnchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["targetFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["targetFontSize"] = 10
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["targetStyle"] = "SEPARATE"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["targetXOffset"] = 1
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["textPosition"] = "ONBAR"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["textXOffset"] = 10
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["width"] = 140
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["castbar"]["yOffset"] = -15
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["anchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["size"] = 30
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["xOffset"] = -3
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["debuffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["healPrediction"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["height"] = 18
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["enable"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["text"]["format"] = ""
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["health"]["width"] = 140
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["enable"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["level"]["format"] = "[difficultycolor][level][shortclassification]"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["format"] = "[name]"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["position"] = "CENTER"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["position"] = "RIGHT"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["size"] = 20
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["raidTargetIndicator"]["xOffset"] = -20
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["showTitle"] = false
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["ENEMY_PLAYER"]["title"]["format"] = "[npctitle]"

	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["anchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["desaturate"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["filter"] = "HARMFUL"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["isAuraCrowdControl"] = true
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["isAuraCrowdControlPlayer"] = true
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["numAuras"] = 3
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["priority"] = "Blacklist,CCDebuffs"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["size"] = 18
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["xOffset"] = -100
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["auras"]["yOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["anchorPoint"] = "LEFT"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["isAuraExternalDefensive"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["isAuraExternalDefensivePlayer"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["isAuraRaidPlayer"] = true
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["isAuraRaidPlayerDispellable"] = true
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["priority"] = "Blacklist,Whitelist,Dispellable,blockNoDuration,RaidBuffsElvUI"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["size"] = 30
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["xOffset"] = 3
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["buffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["displayTarget"] = true
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["fontSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["height"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconOffsetX"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconPosition"] = "LEFT"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["iconSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["targetAnchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["targetFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["targetFontSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["targetStyle"] = "SEPARATE"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["targetXOffset"] = 1
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["textPosition"] = "ONBAR"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["textXOffset"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["width"] = 140
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["castbar"]["yOffset"] = -15
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["anchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["isAuraCrowdControl"] = true
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["isAuraPlayer"] = true
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["isAuraRaid"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["isAuraRaidPlayer"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["priority"] = "Blacklist,blockNoDuration,Personal"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["size"] = 30
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["xOffset"] = -3
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["debuffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["healPrediction"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["height"] = 18
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["enable"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["text"]["format"] = ""
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["health"]["width"] = 140
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["enable"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["level"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["format"] = "[classcolor][name]"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["position"] = "CENTER"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["enable"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["questIcon"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["raidTargetIndicator"]["position"] = "RIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["raidTargetIndicator"]["size"] = 20
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["raidTargetIndicator"]["xOffset"] = -20
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["showTitle"] = false
	E.db["nameplates"]["units"]["FRIENDLY_NPC"]["title"]["font"] = "Expressway"

	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["desaturate"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["enable"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["numAuras"] = 3
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["size"] = 18
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["auras"]["xOffset"] = -100
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["anchorPoint"] = "LEFT"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["isAuraBigDefensive"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["isAuraImportant"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["isAuraImportantPlayer"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["isAuraRaidInCombatPlayer"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["isAuraRaidPlayer"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["isAuraRaidPlayerDispellable"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["priority"] = "Blacklist,Whitelist,Dispellable,blockNoDuration,RaidBuffsElvUI"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["size"] = 30
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["xOffset"] = 3
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["buffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["displayTarget"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["fontSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["height"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconOffsetX"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconPosition"] = "LEFT"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["iconSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["targetAnchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["targetFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["targetFontSize"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["targetStyle"] = "SEPARATE"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["targetXOffset"] = 1
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["textPosition"] = "ONBAR"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["textXOffset"] = 10
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["width"] = 140
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["castbar"]["yOffset"] = -15
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["anchorPoint"] = "RIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFont"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countFontSize"] = 12
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countXOffset"] = 2
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["countYOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["desaturate"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["isAuraCrowdControl"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["isAuraImportant"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["isAuraImportantPlayer"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["isAuraPlayer"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["isAuraRaidPlayerDispellable"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["priority"] = "Blacklist,blockNoDuration,Personal"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["size"] = 30
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["sortMethod"] = "INDEX"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["sourceText"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["xOffset"] = -3
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["debuffs"]["yOffset"] = -6
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["healPrediction"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["height"] = 18
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["enable"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["text"]["format"] = ""
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["health"]["width"] = 140
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["enable"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["level"]["format"] = "[difficultycolor][level][shortclassification]"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["markHealers"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["markTanks"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["position"] = "CENTER"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["name"]["yOffset"] = 0
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["nameOnly"] = true
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["position"] = "RIGHT"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["size"] = 20
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["raidTargetIndicator"]["xOffset"] = -20
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["showTitle"] = false
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["font"] = "Expressway"
	E.db["nameplates"]["units"]["FRIENDLY_PLAYER"]["title"]["format"] = "[npctitle]"
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

	-- ElvUI Nameplates
	DoctorioUI:Setup_ElvUI_Nameplates()

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
	DoctorioUI:MythicVisibility()
end

-- This is called in DoctorioUI:Initialize()
function DoctorioUI:RegisterEvents()
	DoctorioUI:RegisterEvent('PLAYER_ENTERING_WORLD')
end
