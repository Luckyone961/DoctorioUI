local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Temporary
local function addColors(accepted)
	if not accepted then return end

	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles']['Doctorio'] = {
		["barColor"] = {
			["BigWigs_Bosses_Vexie and the Geargrinders"] = {
				[459943] = {
					0,
					1,
					0,
				},
				[459678] = {
					1,
					0,
					1,
				},
				[460116] = {
					0.9411765336990356,
					1,
					0.9921569228172302,
				},
				[468216] = {
					1,
					0,
					0,
				},
			},
			["BigWigs_Bosses_Cauldron of Carnage"] = {
				[473650] = {
					1,
					0.3921568989753723,
					0,
				},
				[1213690] = {
					1,
					0,
					0,
				},
				[472233] = {
					1,
					0,
					1,
				},
			},
			["BigWigs_Bosses_Rik Reverb"] = {
				[466979] = {
					1,
					0,
					0,
				},
				[472306] = {
					0,
					1,
					0,
				},
				[473260] = {
					0,
					1,
					1,
				},
				[467606] = {
					1,
					0.6705882549285889,
					0.5333333611488342,
				},
				[466866] = {
					0,
					1,
					1,
				},
				[473748] = {
					1,
					0,
					1,
				},
			},
			["BigWigs_Bosses_Stix Bunkjunker"] = {
				[464149] = {
					1,
					0,
					0,
				},
				[464399] = {
					1,
					0,
					1,
				},
				[467117] = {
					0.3058823645114899,
					1,
					0.9686275124549866,
				},
			},
			["BigWigs_Bosses_Sprocketmonger Lockenstock"] = {
				[1218319] = {
					1,
					0,
					0,
				},
				[465232] = {
					1,
					0,
					0,
				},
				[1216802] = {
					1,
					0.2705882489681244,
					0.4823529720306397,
				},
				[1214878] = {
					1,
					0.3921568989753723,
					0,
				},
				[1217231] = {
					1,
					0,
					1,
				},
				[473276] = {
					0,
					0.3607843220233917,
					1,
				},
				[1216509] = {
					1,
					1,
					0,
				},
			},
			["BigWigs_Bosses_The One-Armed Bandit"] = {
				[469993] = {
					1,
					0,
					0,
				},
				[461060] = {
					0,
					1,
					0,
				},
				[471927] = {
					1,
					0.3921568989753723,
					0,
				},
			},
			["BigWigs_Bosses_Mug'Zee, Heads of Security"] = {
				[466518] = {
					1,
					0.8941177129745483,
					0.3490196168422699,
				},
				[472631] = {
					0.3921568989753723,
					0,
					1,
				},
				[466476] = {
					0.1960784494876862,
					0.5921568870544434,
					1,
				},
				[466545] = {
					1,
					1,
					0,
				},
				[467380] = {
					1,
					0,
					0,
				},
				[466539] = {
					1,
					0,
					1,
				},
				[466509] = {
					1,
					1,
					0,
				},
				[1215953] = {
					1,
					0,
					0,
				},
			},
			["BigWigs_Bosses_Chrome King Gallywix"] = {
				[1214755] = {
					1,
					0,
					1,
				},
				[465952] = {
					1,
					1,
					0,
				},
				[1217292] = {
					1,
					0.3921568989753723,
					0.3333333432674408,
				},
				[1214369] = {
					1,
					0,
					0,
				},
				[466340] = {
					1,
					0,
					0,
				},
				[467182] = {
					0,
					1,
					1,
				},
				[466751] = {
					1,
					0.3921568989753723,
					0,
				},
				[466341] = {
					1,
					0,
					0,
				},
				[469327] = {
					1,
					0,
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
	local profile = 'BW1:Tz1sRnYXt8DOToSjq(7hS2XS7g28)qGaBwILJtiMabp2YVIFi0JSE9PP1OsZ0SJMPt3TKTYLaccKZ6JGpNt6qUgq3cKdd6JGjNta)jiD19mJ0AN5WGQx)QQ(vv3JC(n(IDbPKgavtKmfljw(jtGU8WCXJBTBLZAuPwkXX524erxAuHj3tQSFJ0sGZ0mm2njkri73I3tWJGTRs(8x9voM3UTI6zvugF9fKAbcaITAiM3U(dO5kiTgarrjxTnXyBJwjcACaSTrAlJQYcOTv2Gy57YQH6GsXIdK)YIIKEQiwm4E25NvzyNKyvD2pcF6uS9AY5GWNkbVHDOTbfRluLSXRkFlA80K4e)qrsxi0Wf7Rd9mAx4MkxZf6SCfDGboux6QU(Huv442mjpIoarQ0ymQZTzFsJdpA3V78Mno5OZQmoqKCvt(vurBz4WEsG5RzCVB8JOsPpYEEfzel23uJgXcItlDt3z1eFPyDI1jtnRz3IVgc1bA43JjaFC(0GkcavAj(YOjeY5Am(QpW)6kQq7(DOHxZARcTaSjFruZHaliuDUkeeYnn(SJKRdSgvhRN1Nd0JSgAc4eOJYHVcQA3KKO2jxfFwVUT0r6XxvbxREyEl348QJXaoVthjOEJJrOoN6R7V7H1rX91qbHMQWnr0geMnVJDCCitYBwK)wFwZKv53IPFoEymkNLZV5rfbBhTtrJOOfEI(zsUkZUeFP5QslD5u4HfJ5sWfow)ZsxM)3IQ0BwA6a5pVBN1vyoiMIOyFvp9Fab()Bw9Mzb5X)W8zrvrI)oXSU71tGtPyIDvywYAmGd14SRHi(tMpiZibJ0ZgHrp62j6nA5s3Lttz74IS1B(65oVtpvYUuPQQghMFKoMSfUCGAeY8FRgljXYjVtdP3zx5DtlehOcFSDllFnOs7aWBAEPmBeLbOo29fWp0dI9huDb9neBXF2)9oF(bLP5XzXcd6R3A27nltmZM9ajvHmA(2JLespWivSYo3O(ISr9qu1LjjDZSM3j1VIXbV5w)VWzK1Erpn3zW8JLp5(KDDFAeqg1IApoi)(P6F6s9FR(wNEXTpU4YZzV2eDPbw2HuDLyobjYuD8HF7)8tMNIFqidZrxB9V)i85PeT5F38qq0QOV)Ik1BUTpMGOHNv1mDz3xVbFzFDHOWwU4ZnRoKN)9K0xM(sN)C5XAqkUy7zP)V0dgb5ygExFMK1kcCPItyDzQ)yK5gs8wNA1o6GdBmcUMB5PpZCAoprPS7kqbxb6X9CXlR9gQdWCdXElYxSWLAGexncDrm8e4KTNaMShOOSi5l2xF7lsf1vdIGAvI638iH0o5lnX(zsBrS1yRKjd)16TcYtTgqV01sxnR(1IPe3oSOiVPffb2vpNVY9AzKGF)0pomDPNpj)RAOU14Rue5P9IumEede4N12ygKNM0h8URymyxuwDuN8tqF5YcYYbol3YzIU9M9NcgRzPCPltjPKOhTWhmS5r6d4qSkDHltlLwI8RVx6pZxQa98Pyh9q8PPlrNwyb7ShJ9GMbQ1pH5dtQeheXKHB)ID6o4F)d'

	-- Profile import
	-- API.RegisterProfile(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI.RegisterProfile('DoctorioUI', profile, name, addColors)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
