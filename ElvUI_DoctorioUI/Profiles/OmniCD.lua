local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- OmniCD Profile
function DoctorioUI:Setup_OmniCD()
	if not E:IsAddOnEnabled('OmniCD') then return end

	-- Profile name
	local name = 'Doctorio ' .. DoctorioUI.Version

	-- Disable LibDualSpec to set the profile
	OmniCDDB['namespaces']['LibDualSpec-1.0'] = OmniCDDB['namespaces']['LibDualSpec-1.0'] or {}
	OmniCDDB['namespaces']['LibDualSpec-1.0']['char'] = OmniCDDB['namespaces']['LibDualSpec-1.0']['char'] or {}
	OmniCDDB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm] = OmniCDDB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm] or {}
	OmniCDDB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm]['enabled'] = false

	-- Global db
	OmniCDDB['cooldowns'] = {}
	OmniCDDB['global']['disableElvMsg'] = true

	-- Profile creation
	OmniCDDB['profiles'] = OmniCDDB['profiles'] or {}
	OmniCDDB['profiles'][name] = OmniCDDB['profiles'][name] or {}
	OmniCDDB['profiles'][name]['General'] = OmniCDDB['profiles'][name]['General'] or {}
	OmniCDDB['profiles'][name]['Party'] = OmniCDDB['profiles'][name]['Party'] or {}

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
			['BG'] = 'Minimalist',
			['bar'] = 'Minimalist',
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
		["party"] = 5,
		["scenario"] = 5,
		["none"] = 5,
	}
	OmniCDDB['profiles'][name]['Party']['arena'] = {
		['general'] = {
			['zoneSelected'] = 'party',
		},
	}

	-- Main db
	OmniCDDB['profiles'][name]['Party']['party'] = {
		['extraBars'] = {
			['raidBar0'] = {
				['scale'] = 0.7,
				['statusBarWidth'] = 240,
				['locked'] = true,
				['paddingY'] = 0,
				['manualPos'] = {
					['raidBar0'] = {
						['y'] = 326.1143742161039,
						['x'] = 345.885685458743,
					},
				},
				['reverseFill'] = false,
				['useIconAlpha'] = true,
				['paddingX'] = 0,
			},
			['raidBar1'] = {
				['manualPos'] = {
					['raidBar1'] = {
						['y'] = 483.269492606436,
						['x'] = 302.5081858196736,
					},
				},
			},
		},
		['general'] = {
			['showPlayerEx'] = false,
			['showPlayer'] = true,
			['zoneSelected'] = 'party',
			['showRange'] = true,
		},
		['spells'] = {
			["374227"] = false,
			["152279"] = true,
			["31935"] = false,
			["387184"] = true,
			["375087"] = true,
			["205191"] = true,
			["8143"] = false,
			["31821"] = false,
			["12975"] = true,
			["200183"] = true,
			["279302"] = true,
			["343142"] = true,
			["197721"] = true,
			["265187"] = true,
			["58984"] = true,
			["115750"] = false,
			["370960"] = true,
			["124974"] = true,
			["201430"] = true,
			["212295"] = false,
			["50334"] = true,
			["376079"] = true,
			["360952"] = true,
			["7744"] = false,
			["370537"] = true,
			["8122"] = false,
			["235219"] = false,
			["360966"] = true,
			["6940"] = true,
			["55342"] = true,
			["192249"] = true,
			["48020"] = false,
			["1122"] = true,
			["265221"] = true,
			["205180"] = true,
			["187650"] = false,
			["199452"] = false,
			["336126"] = false,
			["215652"] = false,
			["392966"] = true,
			["59752"] = false,
			["383269"] = true,
			["108416"] = true,
			["288613"] = true,
			["97462"] = false,
			["102543"] = true,
			["365350"] = true,
			["384352"] = true,
			["34433"] = true,
			["197268"] = false,
			["5246"] = false,
			["15286"] = false,
			["210918"] = false,
			["204021"] = true,
			["345231"] = false,
			["55233"] = true,
			["336135"] = false,
			["359816"] = true,
			["357210"] = true,
			["209258"] = false,
			["121471"] = true,
			["42650"] = true,
			["102560"] = true,
			["6789"] = false,
			["20594"] = true,
			["108968"] = false,
			["196718"] = false,
			["108281"] = true,
			["64044"] = false,
			["1719"] = true,
			["198067"] = true,
			["227847"] = true,
			["107574"] = true,
			["114556"] = false,
			["86659"] = true,
			["377509"] = false,
			["264735"] = true,
			["498"] = true,
			["86949"] = false,
			["53480"] = false,
			["228260"] = true,
			["2094"] = false,
			["13750"] = true,
			["372835"] = true,
			["325197"] = true,
			["184662"] = true,
			["31850"] = true,
			["401150"] = true,
			["12472"] = true,
			["378441"] = false,
			["51533"] = true,
			["267217"] = true,
			["193530"] = true,
			["372048"] = false,
			["30884"] = false,
			["853"] = false,
			["198103"] = true,
			["49028"] = true,
			["114051"] = true,
			["49206"] = true,
			["102558"] = true,
			["204018"] = true,
			["47482"] = false,
			["110959"] = true,
			["198111"] = false,
			["236320"] = false,
			["152173"] = true,
			["378464"] = false,
			["198838"] = false,
			["391528"] = true,
			["123904"] = true,
			["31230"] = false,
			["114050"] = true,
			["194223"] = true,
			["322118"] = true,
			["204336"] = false,
		},
		['icons'] = {
			['counterScale'] = 1,
			['scale'] = 1,
			['showTooltip'] = true,
			['swipeAlpha'] = 1,
		},
		['position'] = {
			['columns'] = 20,
			['paddingX'] = 0,
			['offsetX'] = -1,
			['offsetY'] = 5,
			['paddingY'] = 1,
		},
		['priority'] = {
			['other'] = 10,
			['racial'] = 10,
			['disarm'] = 10,
			['pvptrinket'] = 10,
			['dispel'] = 10,
			['immunity'] = 19,
			['externalDefensive'] = 18,
			['interrupt'] = 10,
			['trinket'] = 10,
			['defensive'] = 20,
			['covenant'] = 10,
			['offensive'] = 1,
			['raidDefensive'] = 17,
			['counterCC'] = 10,
			['raidMovement'] = 10,
		},
		['highlight'] = {
			['glowBuffTypes'] = {
				['other'] = true,
				['racial'] = true,
				['trinket'] = true,
				['pvptrinket'] = true,
				['offensive'] = true,
				['raidMovement'] = true,
			},
		},
		['manualPos'] = {
			{
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			}, -- [1]
			{
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			}, -- [2]
			{
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			}, -- [3]
			[5] = {
				['y'] = 384.4249868775114,
				['x'] = 682.2416491518998,
			},
		},
	}

	-- Set profile
	OmniCDDB['profileKeys'][E.mynameRealm] = name

	DoctorioUI:Print(L['OmniCD profile has been set.'])
end
