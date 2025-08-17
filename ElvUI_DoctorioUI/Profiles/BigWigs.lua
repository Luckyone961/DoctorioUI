local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Temporary
local function addColors(accepted)
	if not accepted then return end

	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles']['Doctorio'] = {
		["barColor"] = {
			["BigWigs_Bosses_Plexus Sentinel"] = {
				[1219607] = {
					1,
					0,
					1,
				},
				[1219263] = {
					1,
					0,
					0,
				},
				[1219450] = {
					0,
					0.294117659330368,
					1,
				},
			},
			["BigWigs_Bosses_Loom'ithar"] = {
				[1246921] = {
					1,
					0,
					1,
				},
				[1227226] = {
					1,
					0.5882353186607361,
					0,
				},
				[1237272] = {
					0,
					1,
					0,
				},
				[1226395] = {
					1,
					0.5882353186607361,
					0,
				},
				[1227782] = {
					1,
					0,
					0,
				},
				[1226311] = {
					0,
					0.294117659330368,
					1,
				},
			},
			["BigWigs_Bosses_Soulbinder Naazindhri"] = {
				[1225616] = {
					0,
					0,
					1,
				},
				[1227276] = {
					0,
					1,
					1,
				},
				[1225582] = {
					0,
					1,
					0,
				},
				[1223859] = {
					1,
					0,
					0,
				},
			},
			["BigWigs_Bosses_Forgeweaver Araz"] = {
				[1233415] = {
					0.6235294342041016,
					1,
					0.9254902601242065,
				},
				[1231720] = {
					1,
					0.5882353186607361,
					0.294117659330368,
				},
				[1228214] = {
					0,
					1,
					0,
				},
				[1228216] = {
					1,
					0,
					1,
				},
				[1228188] = {
					0,
					1,
					1,
				},
				[1243901] = {
					0,
					1,
					0,
				},
			},
			["BigWigs_Bosses_The Soul Hunters"] = {
				[1227809] = {
					0,
					1,
					0,
				},
				[1240891] = {
					1,
					1,
					0,
				},
				[1242259] = {
					1,
					0,
					0,
				},
				[1227355] = {
					0,
					0.3921568989753723,
					1,
				},
			},
			["BigWigs_Bosses_Fractillus"] = {
				[1233416] = {
					0,
					1,
					0,
				},
				[1232760] = {
					1,
					0,
					1,
				},
				[1227373] = {
					1,
					0,
					0,
				},
				[1231871] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
				},
			},
			["BigWigs_Bosses_Nexus-King Salhadaar"] = {
				[1228163] = {
					1,
					0.4470588564872742,
					0.6941176652908325,
				},
				[1227549] = {
					1,
					0.5882353186607361,
					0,
				},
				[1228075] = {
					0,
					0,
					1,
				},
				[1224776] = {
					1,
					0,
					1,
				},
				[1226442] = {
					0.5882353186607361,
					0,
					1,
				},
				[1232399] = {
					0.529411792755127,
					1,
					0.9098039865493774,
				},
				[1230302] = {
					1,
					0,
					1,
				},
				["stages"] = {
					1,
					0,
					0,
				},
				[1228115] = {
					0,
					0.5882353186607361,
					1,
				},
				[1226648] = {
					1,
					0.5882353186607361,
					0,
				},
				[1228265] = {
					1,
					0,
					0,
				},
				[1224827] = {
					0,
					0,
					1,
				},
			},
			["BigWigs_Bosses_Dimensius, the All-Devouring"] = {
				[1234263] = {
					1,
					0,
					1,
				},
				[1234044] = {
					1,
					0.5882353186607361,
					0,
				},
				[1243690] = {
					0,
					1,
					1,
				},
				[1245292] = {
					0,
					1,
					0,
				},
				[1230087] = {
					1,
					0.5882353186607361,
					0,
				},
				[1229038] = {
					1,
					0,
					0,
				},
				[1237694] = {
					0,
					1,
					1,
				},
				[1237695] = {
					0,
					1,
					1,
				},
				[1233539] = {
					1,
					0,
					0,
				},
				[1243577] = {
					0,
					1,
					0,
				},
				[1232973] = {
					1,
					0,
					0,
				},
				[1230979] = {
					0,
					0.294117659330368,
					1,
				},
				[1238765] = {
					1,
					0,
					1,
				},
				[1231716] = {
					1,
					0.5882353186607361,
					1,
				},
				[1239262] = {
					0,
					1,
					0,
				},
				[1237325] = {
					0,
					0.294117659330368,
					1,
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
	local profile = 'BW1:Tz1sRnYXt8DOToSjq(7hS2XS7g28)qGaBwILJtiMabp2YVIFi0JSE9PP1OsZ0SJMPt3TKTYLaccKZ6JGpNt6qUgq3cKdd6JGjNta)jiD19mJ0AN5WGQx)QQ(vv3JC(n(IDbPKgavtKmfljw(jtGU8WCXJBTBLZAuPwkXX524erxAuHj3tQSFJ0sGZ0mm2njkri73I3tWJGTRs(8x9voM3UTI6zvugF9fKAbcaITAiM3U(dO5kiTgarrjxTnXyBJwjcACaSTrAlJQYcOTv2Gy57YQH6GsXIdK)YIIKEQiwm4E25NvzyNKyvD2pcF6uS9AY5GWNkbVHDOTbfRluLSXRkFlA80K4e)qrsxi0Wf7Rd9mAx4MkxZf6SCfDGboux6QU(Huv442mjpIoarQ0ymQZTzFsJdpA3V78Mno5OZQmoqKCvt(vurBz4WEsG5RzCVB8JOsPpYEEfzel23uJgXcItlDt3z1eFPyDI1jtnRz3IVgc1bA43JjaFC(0GkcavAj(YOjeY5Am(QpW)6kQq7(DOHxZARcTaSjFruZHaliuDUkeeYnn(SJKRdSgvhRN1Nd0JSgAc4eOJYHVcQA3KKO2jxfFwVUT0r6XxvbxREyEl348QJXaoVthjOEJJrOoN6R7V7H1rX91qbHMQWnr0geMnVJDCCitYBwK)wFwZKv53IPFoEymkNLZV5rfbBhTtrJOOfEI(zsUkZUeFP5QslD5u4HfJ5sWfow)ZsxM)3IQ0BwA6a5pVBN1vyoiMIOyFvp9Fab()Bw9Mzb5X)W8zrvrI)oXSU71tGtPyIDvywYAmGd14SRHi(tMpiZibJ0ZgHrp62j6nA5s3Lttz74IS1B(65oVtpvYUuPQQghMFKoMSfUCGAeY8FRgljXYjVtdP3zx5DtlehOcFSDllFnOs7aWBAEPmBeLbOo29fWp0dI9huDb9neBXF2)9oF(bLP5XzXcd6R3A27nltmZM9ajvHmA(2JLespWivSYo3O(ISr9qu1LjjDZSM3j1VIXbV5w)VWzK1Erpn3zW8JLp5(KDDFAeqg1IApoi)(P6F6s9FR(wNEXTpU4YZzV2eDPbw2HuDLyobjYuD8HF7)8tMNIFqidZrxB9V)i85PeT5F38qq0QOV)Ik1BUTpMGOHNv1mDz3xVbFzFDHOWwU4ZnRoKN)9K0xM(sN)C5XAqkUy7zP)V0dgb5ygExFMK1kcCPItyDzQ)yK5gs8wNA1o6GdBmcUMB5PpZCAoprPS7kqbxb6X9CXlR9gQdWCdXElYxSWLAGexncDrm8e4KTNaMShOOSi5l2xF7lsf1vdIGAvI638iH0o5lnX(zsBrS1yRKjd)16TcYtTgqV01sxnR(1IPe3oSOiVPffb2vpNVY9AzKGF)0pomDPNpj)RAOU14Rue5P9IumEede4N12ygKNM0h8URymyxuwDuN8tqF5YcYYbol3YzIU9M9NcgRzPCPltjPKOhTWhmS5r6d4qSkDHltlLwI8RVx6pZxQa98Pyh9q8PPlrNwyb7ShJ9GMbQ1pH5dtQeheXKHB)ID6o4F)d'

	-- Profile import
	-- API.RegisterProfile(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI.RegisterProfile('DoctorioUI', profile, name, addColors)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
