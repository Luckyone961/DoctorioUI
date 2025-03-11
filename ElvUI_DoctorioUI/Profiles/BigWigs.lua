local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Temporary
local function addColors(accepted)
	if not accepted then return end

	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles']['Doctorio'] = {
		["barColor"] = {
			["BigWigs_Bosses_Ulgrax the Devourer"] = {
				[435138] = {
					0,
					1,
					0,
				},
				[434803] = {
					1,
					0,
					1,
				},
				[443842] = {
					1,
					1,
					0,
				},
				[435136] = {
					1,
					0,
					0,
				},
				[441452] = {
					0,
					1,
					1,
				},
				[434778] = {
					1,
					0,
					1,
				},
				[438012] = {
					1,
					0,
					0,
				},
				[436200] = {
					1,
					0,
					1,
				},
			},
			["BigWigs_Bosses_The Bloodbound Horror"] = {
				[444363] = {
					1,
					0,
					1,
				},
				[443203] = {
					1,
					0,
					0,
				},
				[452237] = {
					0,
					0.294117659330368,
					1,
				},
				[444497] = {
					0,
					1,
					0,
				},
				[445936] = {
					0,
					1,
					1,
				},
			},
			["BigWigs_Bosses_Sikran, Captain of the Sureki"] = {
				[433517] = {
					1,
					0,
					1,
				},
				[442428] = {
					1,
					0,
					0,
				},
				[456420] = {
					1,
					0.686274528503418,
					0,
				},
			},
			["BigWigs_Bosses_Rasha'nan"] = {
				[454989] = {
					1,
					0,
					1,
				},
				[439789] = {
					0,
					1,
					0,
				},
				[455373] = {
					0,
					1,
					1,
				},
				["stages"] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
				},
				[439811] = {
					1,
					0,
					0,
				},
				[439784] = {
					0.9411765336990356,
					0.917647123336792,
					0.8392157554626465,
				},
			},
			["BigWigs_Bosses_Broodtwister Ovi'nax"] = {
				[442432] = {
					1,
					0,
					0,
				},
				[442526] = {
					1,
					0,
					1,
				},
				[443274] = {
					1,
					0,
					0,
				},
				[446349] = {
					0,
					0.686274528503418,
					1,
				},
			},
			["BigWigs_Bosses_Nexus-Princess Ky'veza"] = {
				[438245] = {
					1,
					0,
					1,
				},
				[439409] = {
					0,
					0.3921568989753723,
					1,
				},
				[439576] = {
					0,
					1,
					0,
				},
				[437620] = {
					1,
					1,
					0,
				},
				[436867] = {
					1,
					0,
					1,
				},
			},
			["BigWigs_Bosses_The Silken Court"] = {
				[460600] = {
					1,
					0,
					0,
				},
				[440504] = {
					1,
					0.686274528503418,
					0,
				},
				[441626] = {
					1,
					0,
					0.0470588281750679,
				},
				[450045] = {
					0.7843137979507446,
					1,
					0.5882353186607361,
				},
				[438656] = {
					1,
					0,
					0,
				},
				[439838] = {
					0.9411765336990356,
					0.917647123336792,
					0.8392157554626465,
				},
				[441791] = {
					1,
					1,
					0,
				},
				[441782] = {
					1,
					0.5882353186607361,
					0.8705883026123047,
				},
				[442994] = {
					1,
					0.3921568989753723,
					0.294117659330368,
				},
				[450129] = {
					0,
					0.2196078598499298,
					1,
				},
				[443068] = {
					0.5882353186607361,
					0.294117659330368,
					0,
				},
				[438677] = {
					0.9843137860298157,
					0,
					1,
				},
				[438801] = {
					0,
					1,
					0.03921568766236305,
				},
				[438355] = {
					0.4901961088180542,
					0.686274528503418,
					1,
				},
			},
			["BigWigs_Bosses_Queen Ansurek"] = {
				[451600] = {
					0,
					0.294117659330368,
					1,
				},
				[439814] = {
					1,
					0,
					1,
				},
				[451278] = {
					1,
					0.5882353186607361,
					0,
				},
				[448147] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
				},
				[443325] = {
					0,
					1,
					0.686274528503418,
				},
				[440899] = {
					0,
					1,
					0,
				},
				[443888] = {
					0,
					0,
					1,
				},
				[437592] = {
					1,
					0,
					0,
				},
				[438976] = {
					1,
					0,
					0,
				},
				[439299] = {
					0.9411765336990356,
					0.917647123336792,
					0.8392157554626465,
				},
				[441865] = {
					1,
					0,
					0,
				},
				[447411] = {
					1,
					0,
					0,
				},
				[444829] = {
					0,
					1,
					0,
				},
			},
		}
	}
end

-- BigWigs Profile
function DoctorioUI:Setup_BigWigs()
	if not E:IsAddOnEnabled('BigWigs') then return end

	-- Profile name
	local name = 'Doctorio'

	-- Profile strings
	local profile = ''

	-- Profile import
	-- API.RegisterProfile(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI.RegisterProfile('DoctorioUI', profile, name, addColors)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
