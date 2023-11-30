local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Variables & Cache
local IsAddOnLoaded = IsAddOnLoaded
local LoadAddOn = LoadAddOn

-- BigWigs Profile
function DoctorioUI:Setup_BigWigs()
	if not E:IsAddOnEnabled('BigWigs') then return end

	-- Profile name
	local name = 'Doctorio ' .. DoctorioUI.Version

	-- Required to add profiles to BigWigs3DB
	if not IsAddOnLoaded('BigWigs_Core') then LoadAddOn('BigWigs_Core') end

	-- Required to add profiles to Plugins DB
	if not IsAddOnLoaded('BigWigs_Plugins') then LoadAddOn('BigWigs_Plugins') end

	-- Profile creation
	BigWigs3DB['profiles'] = BigWigs3DB['profiles'] or {}
	BigWigs3DB['namespaces'] = BigWigs3DB['namespaces'] or {}
	BigWigs3DB['profiles'][name] = BigWigs3DB['profiles'][name] or {}

	-- Profile misc
	BigWigs3DB['profiles'][name]['fakeDBMVersion'] = true
	BigWigs3DB['profiles'][name]['showZoneMessages'] = false
	BigWigs3DB['profiles'][name]['broadcast'] = true
	BigWigs3DB['profiles'][name]['ignorerole'] = true
	BigWigs3DB['profiles'][name]['shake'] = false
	BigWigs3DB['profiles'][name]['useraidchannel'] = false

	-- Disable minimap icon
	BigWigsIconDB['hide'] = true

	-- Profile DB
	BigWigs3DB['namespaces']['BigWigs_Plugins_BossBlock']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_BossBlock']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_BossBlock']['profiles'][name] = {
		['blockGuildChallenge'] = false,
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_AltPower']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_AltPower']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_AltPower']['profiles'][name] = {
		['lock'] = true,
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_Victory']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Victory']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Victory']['profiles'][name] = {
		['soundName'] = 'None',
		['blizzMsg'] = false,
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_Pull']['profiles'] = {
		['profiles'] = {
			[name] = {
				['endPullSound'] = 'None',
				['engageSound'] = 'BigWigs: Long',
				['voice'] = 'English: David',
			},
		},
	}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Proximity']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Pull']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Proximity']['profiles'][name] = {
		['posx'] = 57.94432091105728,
		['soundName'] = 'Sonar',
		['font'] = 'Dreamspeak',
		['fontName'] = 'Expressway',
		['width'] = 131.6338653564453,
		['posy'] = 602.9558584203769,
		['lock'] = true,
		['height'] = 119.9999618530273,
		['disabled'] = true,
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_Bars']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Bars']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Bars']['profiles'][name] = {
		['BigWigsEmphasizeAnchor_y'] = 549.5556378888105,
		['emphasize'] = false,
		['BigWigsAnchor_width'] = 405,
		['iconPosition'] = 'RIGHT',
		['fill'] = true,
		['BigWigsEmphasizeAnchor_height'] = 20.0000171661377,
		['growup'] = true,
		['fontName'] = 'Expressway',
		['BigWigsAnchor_height'] = 24.9999885559082,
		['visibleBarLimitEmph'] = 5,
		['BigWigsAnchor_y'] = 236,
		['emphasizeGrowup'] = true,
		['spacing'] = 2,
		['texture'] = 'Details Serenity',
		['barStyle'] = 'ElvUI',
		['BigWigsAnchor_x'] = 2,
		['fontSizeEmph'] = 11,
		['BigWigsEmphasizeAnchor_x'] = 608.733305687063,
		['alignText'] = 'CENTER',
		['outline'] = 'OUTLINE',
		['BigWigsEmphasizeAnchor_width'] = 219.9999389648438,
		['emphasizeRestart'] = false,
		['emphasizeTime'] = 14,
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_AutoReply']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_AutoReply']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_AutoReply']['profiles'][name] = {
		['exitCombatOther'] = 1,
		['disabled'] = false,
		['exitCombat'] = 1,
		['modeOther'] = 2,
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_Messages']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Messages']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Messages']['profiles'][name] = {
		['outline'] = 'NONE',
		['disabled'] = true,
		['align'] = 'LEFT',
		['fontName'] = 'Expressway',
		['normalPosition'] = {
			'LEFT', -- [1]
			'LEFT', -- [2]
			53.93504333496094, -- [3]
			-2.928236484527588, -- [4]
		},
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'][name] = {
		['barColor'] = {
			['BigWigs_Plugins_Colors'] = {
				[name] = {
					0.941176470588235, -- [1]
					1, -- [2]
					0.992156862745098, -- [3]
				},
			},
			["BigWigs_Bosses_Gnarlroot"] = {
				[422026] = {
					1, -- [1]
					0.5882353186607361, -- [2]
					0, -- [3]
				},
				[424352] = {
					0.3921568989753723, -- [1]
					0.3921568989753723, -- [2]
					0.3921568989753723, -- [3]
				},
				[422039] = {
					0, -- [1]
					0.5882353186607361, -- [2]
					1, -- [3]
				},
				[421898] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[421972] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
			},
			["BigWigs_Bosses_Igira the Cruel"] = {
				[416048] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				[415623] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[424456] = {
					1, -- [1]
					0.5882353186607361, -- [2]
					0, -- [3]
				},
				[416996] = {
					0, -- [1]
					1, -- [2]
					0.5882353186607361, -- [3]
				},
				[414888] = {
					0, -- [1]
					0.4901961088180542, -- [2]
					1, -- [3]
				},
			},
			["BigWigs_Bosses_Volcoross"] = {
				[423117] = {
					0.3921568989753723, -- [1]
					0.3921568989753723, -- [2]
					0.3921568989753723, -- [3]
				},
				[420933] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				[420415] = {
					0, -- [1]
					0.294117659330368, -- [2]
					1, -- [3]
				},
				[421616] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[421672] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[421703] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
			},
			["BigWigs_Bosses_The Primal Council"] = {
				[397134] = {
					0.6470588445663452, -- [1]
					0.415686309337616, -- [2]
					0.2627451121807098, -- [3]
				},
				[372027] = {
					1, -- [1]
					0.458823561668396, -- [2]
					0.4745098352432251, -- [3]
				},
				[374038] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[372056] = {
					0.4823529720306397, -- [1]
					0.5137255191802979, -- [2]
					0.5098039507865906, -- [3]
				},
				[373059] = {
					0, -- [1]
					0.5882353186607361, -- [2]
					1, -- [3]
				},
				[371624] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
			},
			["BigWigs_Bosses_Nymue, Weaver of the Cycle"] = {
				[430563] = {
					1, -- [1]
					0.3921568989753723, -- [2]
					0, -- [3]
				},
				[427722] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				[420907] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[420846] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[429108] = {
					1, -- [1]
					0.5607843399047852, -- [2]
					0.2980392277240753, -- [3]
				},
				[429615] = {
					0, -- [1]
					0.294117659330368, -- [2]
					1, -- [3]
				},
			},
			["BigWigs_Bosses_Larodar, Keeper of the Flame"] = {
				[422614] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				[417653] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[417634] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[425889] = {
					0.3843137621879578, -- [1]
					0.3019607961177826, -- [2]
					1, -- [3]
				},
				[426206] = {
					0.4235294461250305, -- [1]
					1, -- [2]
					0.8000000715255737, -- [3]
				},
				[418637] = {
					1, -- [1]
					0.4705882668495178, -- [2]
					0, -- [3]
				},
			},
			["BigWigs_Bosses_Smolderon"] = {
				[421343] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[425885] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				[422691] = {
					0, -- [1]
					0.7176470756530762, -- [2]
					1, -- [3]
				},
				[421455] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
			},
			["BigWigs_Bosses_Tindral Sageswift, Seer of the Flame"] = {
				[424495] = {
					1, -- [1]
					0.6901960968971252, -- [2]
					0.5686274766921997, -- [3]
				},
				[421398] = {
					1, -- [1]
					0.3921568989753723, -- [2]
					0, -- [3]
				},
				[420236] = {
					0, -- [1]
					0.3921568989753723, -- [2]
					1, -- [3]
				},
				[424140] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[424579] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[423260] = {
					0.3921568989753723, -- [1]
					0.3921568989753723, -- [2]
					0.3921568989753723, -- [3]
				},
				[423265] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				[424581] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				["stages"] = {
					1, -- [1]
					1, -- [2]
					1, -- [3]
				},
			},
			["BigWigs_Bosses_Fyrakk the Blazing"] = {
				[422935] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[410223] = {
					0, -- [1]
					1, -- [2]
					1, -- [3]
				},
				[422032] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[417431] = {
					0.3921568989753723, -- [1]
					0.3921568989753723, -- [2]
					0.3921568989753723, -- [3]
				},
				[422524] = {
					0.2980392277240753, -- [1]
					0.4235294461250305, -- [2]
					1, -- [3]
				},
				[423717] = {
					0, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[419506] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[417455] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[422837] = {
					1, -- [1]
					0, -- [2]
					0, -- [3]
				},
				[422518] = {
					1, -- [1]
					1, -- [2]
					0, -- [3]
				},
				[420422] = {
					0.6000000238418579, -- [1]
					0.3921568989753723, -- [2]
					0.4941176772117615, -- [3]
				},
				[414186] = {
					1, -- [1]
					0, -- [2]
					1, -- [3]
				},
				[425492] = {
					0.3921568989753723, -- [1]
					0.3921568989753723, -- [2]
					0.3921568989753723, -- [3]
				},
			},
		},
		['barText'] = {
			['BigWigs_Plugins_Colors'] = {
				[name] = {
					0.984313725490196, -- [1]
					0.984313725490196, -- [2]
				},
			},
			['BigWigs_Bosses_Sennarth, The Cold Breath'] = {
				[371983] = {
					0.984313725490196, -- [1]
					0.984313725490196, -- [2]
				},
			},
		},
		['barEmphasized'] = {},
	}

	BigWigs3DB['namespaces']['BigWigs_Plugins_InfoBox']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_InfoBox']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_InfoBox']['profiles'][name] = {
		['posx'] = 887.2556328357387,
		['posy'] = 616.5560653676948,
	}

	-- Boss DB Vault of the Incarnates
	BigWigs3DB['namespaces']['BigWigs_Bosses_Eranog'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Eranog'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Eranog']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Eranog']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Eranog']['profiles'][name] = {
		[396022] = 3064054,
		[370307] = 2801911,
	}

	BigWigs3DB['namespaces']['BigWigs_Bosses_Terros'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Terros'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Terros']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Terros']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Terros']['profiles'][name] = {
		[381315] = 2801910,
		[380487] = 2801911,
	}

	BigWigs3DB['namespaces']['BigWigs_Bosses_Sennarth, The Cold Breath'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Sennarth, The Cold Breath'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Sennarth, The Cold Breath']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Sennarth, The Cold Breath']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Sennarth, The Cold Breath']['profiles'][name] = {
		['ascend'] = 3064054,
		[371979] = 3064054,
		[372238] = 0,
	}

	BigWigs3DB['namespaces']['BigWigs_Bosses_Kurog Grimtotem'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Kurog Grimtotem'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Kurog Grimtotem']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Kurog Grimtotem']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Kurog Grimtotem']['profiles'][name] = {
		[374624] = 2801911,
		[393296] = 0,
		[374430] = 0,
		['berserk'] = 18,
		[372158] = 0,
		[374427] = 2801911,
		[393309] = 0,
		[374623] = 2801911,
		[374321] = 0,
		[393429] = 0,
		[391268] = 0,
	}

	BigWigs3DB['namespaces']['BigWigs_Bosses_Dathea, Ascended'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Dathea, Ascended'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Dathea, Ascended']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Dathea, Ascended']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Dathea, Ascended']['profiles'][name] = {
		[375580] = 3065335,
		[376943] = 2801911,
		[388302] = 2801910,
		[391686] = 3129591,
	}

	BigWigs3DB['namespaces']['BigWigs_Bosses_Broodkeeper Diurna'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Broodkeeper Diurna'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Broodkeeper Diurna']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Broodkeeper Diurna']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Broodkeeper Diurna']['profiles'][name] = {
		[396266] = 3068135,
		[396269] = 3129591,
		[375870] = 3130871,
		[396264] = 3129847,
	}

	BigWigs3DB['namespaces']['BigWigs_Bosses_Raszageth the Storm-Eater'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Raszageth the Storm-Eater'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Raszageth the Storm-Eater']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Bosses_Raszageth the Storm-Eater']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Bosses_Raszageth the Storm-Eater']['profiles'][name] = {
		[377612] = 2801911,
		[381615] = 2801911,
		['custom_off_219878'] = true,
	}

	-- Disable LibDualSpec to set the profile
	BigWigs3DB['namespaces']['LibDualSpec-1.0'] = BigWigs3DB['namespaces']['LibDualSpec-1.0'] or {}
	BigWigs3DB['namespaces']['LibDualSpec-1.0']['char'] = BigWigs3DB['namespaces']['LibDualSpec-1.0']['char'] or {}
	BigWigs3DB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm] = BigWigs3DB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm] or {}
	BigWigs3DB['namespaces']['LibDualSpec-1.0']['char'][E.mynameRealm]['enabled'] = false

	-- Set profile
	BigWigs.db:SetProfile(name)

	DoctorioUI:Print(L["BigWigs profile has been set."])
end
