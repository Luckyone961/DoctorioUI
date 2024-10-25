local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- OmniCD Profile
function DoctorioUI:Setup_OmniCD()
	if not E:IsAddOnEnabled('OmniCD') then return end

	-- Profile name
	local name = 'Doctorio ' .. DoctorioUI.Version

	-- Disable LibDualSpec to set the profile
	OmniCDDB['namespaces']['LibDualSpec-1.0'] = {}
	OmniCDDB['namespaces']['LibDualSpec-1.0']['char'] = {}
	OmniCDDB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm] = {}
	OmniCDDB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm]['enabled'] = false

	-- Global db
	OmniCDDB['cooldowns'] = {}
	OmniCDDB['global']['disableElvMsg'] = true

	-- Safety check
	OmniCDDB['profiles'] = OmniCDDB['profiles'] or {}

	-- Profile creation
	OmniCDDB['profiles'][name] = {}
	OmniCDDB['profiles'][name]['General'] = {}
	OmniCDDB['profiles'][name]['Party'] = {}

	-- Global db
	OmniCDDB['cooldowns'] = {}
	OmniCDDB['global']['disableElvMsg'] = true
	OmniCDDB['version'] = 4

	-- General db
	OmniCDDB['profiles'][name]['General']['fonts'] = {
		['statusBar'] = {
			['font'] = 'Expressway',
			['flag'] = 'OUTLINE',
		},
		['anchor'] = {
			['font'] = 'Expressway',
			['flag'] = 'OUTLINE',
		},
		['icon'] = {
			['font'] = 'Expressway',
		},
	}
	OmniCDDB['profiles'][name]['General']['textures'] = {
		['statusBar'] = {
			['BG'] = 'Details Flat',
			['bar'] = 'Details Flat',
		},
	}

	-- Party db
	OmniCDDB['profiles'][name]['Party']['noneZoneSetting'] = 'party'
	OmniCDDB['profiles'][name]['Party']['scenarioZoneSetting'] = 'party'
	OmniCDDB['profiles'][name]['Party']['visibility'] = {
		['none'] = true,
		['scenario'] = true,
	}
	OmniCDDB['profiles'][name]['Party']['groupSize'] = {
		['party'] = 5,
		['scenario'] = 5,
		['none'] = 5,
	}
	OmniCDDB['profiles'][name]['Party']['arena'] = {
		['general'] = {
			['zoneSelected'] = 'party',
		},
	}

	-- Main db
	OmniCDDB['profiles'][name]['Party']['party'] = {
		['extraBars'] = {
			['raidBar1'] = {
				['sortDirection'] = 'dsc',
				['reverseFill'] = false,
				['locked'] = true,
				['manualPos'] = {
					['raidBar1'] = {
						['y'] = 365.1556512031311,
						['x'] = 334.5776556710371,
					},
				},
				['scale'] = 0.8,
			},
		},
		['manualPos'] = {
			{
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			},
			{
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			},
			{
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			},
			[5] = {
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			},
		},
		["spells"] = {
			["186387"] = false,
			["31661"] = false,
			["205191"] = true,
			["51490"] = false,
			["12975"] = true,
			["279302"] = true,
			["197721"] = true,
			["202138"] = false,
			["115750"] = false,
			["368970"] = false,
			["368412"] = false,
			["8122"] = false,
			["235219"] = false,
			["207684"] = false,
			["386071"] = false,
			["5246"] = false,
			["371032"] = false,
			["157980"] = false,
			["167105"] = false,
			["403876"] = true,
			["443028"] = true,
			["396286"] = false,
			["207167"] = false,
			["51271"] = false,
			["209258"] = false,
			["20594"] = true,
			["108968"] = false,
			["378279"] = false,
			["404381"] = false,
			["179057"] = false,
			["47568"] = true,
			["498"] = true,
			["53480"] = true,
			["13750"] = false,
			["325197"] = true,
			["401150"] = false,
			["386997"] = false,
			["51533"] = false,
			["267217"] = true,
			["462031"] = false,
			["389539"] = true,
			["108270"] = true,
			["200183"] = true,
			["207399"] = true,
			["198144"] = false,
			["31230"] = false,
			["378779"] = false,
			["343142"] = true,
			["199448"] = true,
			["31935"] = false,
			["228049"] = true,
			["5484"] = false,
			["111898"] = false,
			["322118"] = true,
			["132469"] = false,
			["207289"] = false,
			["376079"] = true,
			["114018"] = false,
			["258860"] = false,
			["265221"] = true,
			["202137"] = false,
			["262161"] = false,
			["108416"] = true,
			["414660"] = false,
			["46968"] = false,
			["392966"] = true,
			["157981"] = false,
			["49206"] = true,
			["119381"] = false,
			["198103"] = true,
			["192058"] = false,
			["385627"] = false,
			["357214"] = false,
			["48743"] = true,
			["99"] = false,
			["109304"] = true,
			["193530"] = true,
			["386394"] = false,
			["114556"] = false,
			["264735"] = true,
			["227847"] = true,
			["86949"] = false,
			["372835"] = true,
			["184662"] = true,
			["31850"] = true,
			["370960"] = true,
			["55342"] = true,
			["275699"] = false,
			["200652"] = true,
			["49028"] = false,
			["374348"] = true,
			["383269"] = true,
			["383121"] = false,
			["116844"] = false,
			["58984"] = false,
			["192249"] = true,
			["200733"] = false,
			["110959"] = true,
			["30283"] = false,
			["343721"] = false,
			["19236"] = true,
		},
		['icons'] = {
			['counterScale'] = 1,
			['scale'] = 1,
			['swipeAlpha'] = 1,
			['showTooltip'] = true,
		},
		['position'] = {
			['columns'] = 20,
			['paddingX'] = 1,
			['offsetX'] = 1,
			['offsetY'] = 5,
			['paddingY'] = 1,
		},
		['priority'] = {
			['racial'] = 10,
			['disarm'] = 10,
			['pvptrinket'] = 10,
			['dispel'] = 10,
			['counterCC'] = 10,
			['externalDefensive'] = 18,
			['raidMovement'] = 10,
			['interrupt'] = 10,
			['trinket'] = 10,
			['defensive'] = 20,
			['covenant'] = 10,
			['offensive'] = 1,
			['raidDefensive'] = 17,
			['immunity'] = 19,
		},
		['general'] = {
			['showPlayerEx'] = false,
			['showPlayer'] = true,
			['zoneSelected'] = 'party',
			['showRange'] = true,
		},
		['highlight'] = {
			['glowBuffTypes'] = {
				['other'] = true,
				['racial'] = true,
				['pvptrinket'] = true,
				['raidMovement'] = true,
				['trinket'] = true,
				['offensive'] = true,
			},
		},
	}

	-- Set profile
	OmniCDDB['profileKeys'][E.mynameRealm] = name

	DoctorioUI:Print(L["OmniCD profile has been set."])
end
