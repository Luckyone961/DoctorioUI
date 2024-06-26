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
		['spells'] = {
			['186387'] = false,
			['31661'] = false,
			['205191'] = true,
			['51490'] = false,
			['12975'] = true,
			['279302'] = true,
			['115750'] = false,
			['368970'] = false,
			['368412'] = false,
			['8122'] = false,
			['235219'] = false,
			['360966'] = true,
			['207684'] = false,
			['5246'] = false,
			['371032'] = false,
			['157980'] = false,
			['167105'] = false,
			['403876'] = true,
			['200733'] = false,
			['396286'] = false,
			['207167'] = false,
			['51271'] = false,
			['209258'] = false,
			['20594'] = true,
			['108968'] = false,
			['378279'] = false,
			['404381'] = false,
			['288853'] = false,
			['498'] = true,
			['53480'] = true,
			['13750'] = false,
			['325197'] = true,
			['267217'] = true,
			['19236'] = true,
			['200652'] = true,
			['228049'] = true,
			['199448'] = true,
			['389539'] = true,
			['179057'] = false,
			['200183'] = true,
			['374348'] = true,
			['48743'] = true,
			['31230'] = false,
			['47568'] = true,
			['378779'] = false,
			['359816'] = true,
			['343142'] = true,
			['207289'] = false,
			['31935'] = false,
			['370960'] = true,
			['322118'] = true,
			['197721'] = true,
			['198144'] = false,
			['132469'] = false,
			['376079'] = true,
			['262161'] = false,
			['258860'] = false,
			['98008'] = false,
			['202137'] = false,
			['55342'] = true,
			['108416'] = true,
			['51533'] = false,
			['46968'] = false,
			['31821'] = false,
			['392966'] = true,
			['157981'] = false,
			['119381'] = false,
			['97462'] = false,
			['198103'] = true,
			['192058'] = false,
			['265221'] = true,
			['385627'] = false,
			['357214'] = false,
			['42650'] = true,
			['15286'] = false,
			['99'] = false,
			['109304'] = true,
			['383121'] = false,
			['193530'] = true,
			['386997'] = false,
			['5484'] = false,
			['386394'] = false,
			['114556'] = false,
			['202138'] = false,
			['264735'] = true,
			['227847'] = true,
			['86949'] = false,
			['372835'] = true,
			['184662'] = true,
			['31850'] = true,
			['265202'] = false,
			['108280'] = false,
			['275699'] = false,
			['49028'] = false,
			['51052'] = false,
			['383269'] = true,
			['357210'] = true,
			['116844'] = false,
			['192249'] = true,
			['49206'] = true,
			['110959'] = true,
			['30283'] = false,
			['343721'] = false,
			['196718'] = false,
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
