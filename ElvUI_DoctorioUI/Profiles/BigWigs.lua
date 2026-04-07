local DoctorioUI, E, L = unpack((select(2, ...)))

local function CustomBossSettings()
	-- Bar colors (Boss specific)
	BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"] or {}
	BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] = BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"] or {}
	BigWigs3DB["namespaces"]["BigWigs_Plugins_Colors"]["profiles"]["Doctorio"] = {
		["barColor"] = {
			-- Dreamrift
			["BigWigs_Bosses_Chimaerus the Undreamt God"] = {
				[1245396] = {
					1,
					0,
					0,
				},
				[1257087] = {
					1,
					0.3921568989753723,
					0,
				},
				[1262289] = {
					1,
					0.7843137979507446,
					0.3921568989753723,
				},
				[1264756] = {
					1,
					0,
					1,
				},
				[1258610] = {
					1,
					0,
					0,
				},
			},
			-- Voidspire
			["BigWigs_Bosses_Imperator Averzian"] = {
				[1249262] = {
					1,
					0.7843137979507446,
					0.3921568989753723,
				},
				[1249251] = {
					1,
					0,
					0,
				},
				[1251361] = {
					0,
					1,
					0,
				},
				[1280015] = {
					1,
					0,
					1,
				},
			},
			["BigWigs_Bosses_Vorasius"] = {
				[1256855] = {
					0,
					0.294117659330368,
					1,
				},
				[1241692] = {
					1,
					0.3921568989753723,
					0,
				},
				[1260052] = {
					1,
					0,
					0,
				},
				[1254199] = {
					0,
					1,
					0,
				},
			},
			["BigWigs_Bosses_Fallen-King Salhadaar"] = {
				[1246175] = {
					1,
					1,
					0,
				},
				[1250803] = {
					1,
					0.3921568989753723,
					0,
				},
				[1248697] = {
					0,
					0.294117659330368,
					1,
				},
				[1254081] = {
					1,
					0,
					1,
				},
				[1247738] = {
					0,
					1,
					0,
				},
			},
			["BigWigs_Bosses_Vaelgor & Ezzorak"] = {
				[1262623] = {
					0.8313726186752319,
					0.5254902243614197,
					1,
				},
				[1244221] = {
					1,
					0,
					1,
				},
				[1245391] = {
					0,
					0.294117659330368,
					1,
				},
				[1244917] = {
					0,
					1,
					0,
				},
				[1265131] = {
					0.294117659330368,
					0.1960784494876862,
					0.3921568989753723,
				},
				[1245645] = {
					0.3921568989753723,
					0.5098039507865906,
					0.5882353186607361,
				},
			},
			["BigWigs_Bosses_Lightblinded Vanguard"] = {
				[1248983] = {
					1,
					0,
					1,
				},
				[1246749] = {
					1,
					0,
					0,
				},
				[1246736] = {
					0.5882353186607361,
					0.2745098173618317,
					0.2745098173618317,
				},
				["empowered_divine_storm"] = {
					1,
					0.7843137979507446,
					0.5882353186607361,
				},
				[1248674] = {
					0,
					1,
					0,
				},
				[1246485] = {
					1,
					0.3921568989753723,
					0,
				},
				["empowered_avengers_shield"] = {
					1,
					0.3921568989753723,
					0,
				},
				[1251857] = {
					0.294117659330368,
					0.294117659330368,
					0.5882353186607361,
				},
				[1248710] = {
					1,
					0.294117659330368,
					0.5882353186607361,
				},
				["empowered_searing_radiance"] = {
					1,
					0,
					0,
				},
			},
			["BigWigs_Bosses_Crown of the Cosmos"] = {
				[1238843] = {
					0.7843137979507446,
					0.6666666865348816,
					1,
				},
				[1233865] = {
					1,
					0.3921568989753723,
					0,
				},
				[1261016] = {
					0,
					1,
					0.4901961088180542,
				},
				[1246918] = {
					1,
					1,
					0,
				},
				[1243982] = {
					1,
					1,
					1,
				},
				[1237837] = {
					0,
					1,
					0,
				},
				[1233602] = {
					1,
					1,
					1,
				},
				[1255368] = {
					1,
					0,
					1,
				},
				[1261339] = {
					0,
					1,
					0,
				},
				[1239080] = {
					0,
					1,
					1,
				},
				[1246461] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
				},
				[1233787] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
				},
				[1232467] = {
					0,
					0.294117659330368,
					1,
				},
			},
			-- March
			["BigWigs_Bosses_Belo'ren, Child of Al'ar"] = {
				[1242260] = {
					1,
					0.3921568989753723,
					0,
				},
				[1242981] = {
					1,
					0.7843137979507446,
					0.5882353186607361,
				},
				[1260763] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
				},
				[1242515] = {
					1,
					0.5882353186607361,
					0.7843137979507446,
				},
				[1246709] = {
					1,
					0,
					0,
				},
				[1244344] = {
					1,
					0,
					0,
				},
				[1241282] = {
					0,
					1,
					0,
				},
			},
			["BigWigs_Bosses_Midnight Falls"] = {
				[1279420] = {
					0,
					0.294117659330368,
					1,
				},
				[1251386] = {
					0,
					1,
					0,
				},
				[1266897] = {
					0,
					0,
					1,
				},
				[1266388] = {
					0,
					1,
					1,
				},
				[1281194] = {
					1,
					0,
					0,
				},
				[1249620] = {
					1,
					0,
					1,
				},
				[1250898] = {
					1,
					0,
					0,
				},
				[1253915] = {
					1,
					1,
					0,
				},
				[1267049] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
				},
				[1284525] = {
					1,
					0,
					1,
				},
			},
		}
	}
end

-- Runs after successful profile import
local function CallbackFunction(accepted)
	if not accepted then return end

	-- Handle minimap icon
	local LDBI = LibStub('LibDBIcon-1.0')
	BigWigsIconDB.hide = true
	LDBI:Hide('BigWigs')

	-- Set boss colors (Midnight season 1)
	CustomBossSettings()
end

-- BigWigs profile
function DoctorioUI:Setup_BigWigs()
	if not BigWigsAPI then DoctorioUI:Print('BigWigs ' .. L["is not installed or enabled."]) return end

	-- Profile names
	local profileName = 'Doctorio'

	-- Profile strings
	local profileString = [[BW2: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]]

	-- Profile import
	-- API.RegisterProfile(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI.RegisterProfile('DoctorioUI', profileString, profileName, CallbackFunction)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
