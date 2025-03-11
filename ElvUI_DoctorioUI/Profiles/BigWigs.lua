local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Temporary
local function addColors(accepted)
	if not accepted then return end

	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] or {}
	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles']['Doctorio'] = {
		["barColor"] = {
			["BigWigs_Bosses_BossName"] = {},
		}
	}
end

-- BigWigs Profile
function DoctorioUI:Setup_BigWigs()
	if not E:IsAddOnEnabled('BigWigs') then return end

	-- Profile name
	local name = 'Doctorio'

	-- Profile strings
	local profile = 'BW1:LvvZVTrru8UARpuqcIDuDjQuubPIesLQg3gqeHekBIZxKpSSDOFCAhV(5Dh1z3DyMztI5ciFIZ5pHCMt(axrY3qIdJ8FcrCUi5)cyE7NwT7Hv777FV3V3mR1FYxjeKsIp0jwsv04i5xodc5bfIhoy72N0VDxTTL1nrXIqcR0KZrT3TVUgynpphBhZIfYZhWteCgSzh7N(KV1k9TZawsMIw4RNB31xaquMg703oEJjfkShmgyS4l20o126dIfKiFyZuPnsv1sadZKtZyRf5yOhOu0iF5VVIiorXOrGZjNEs7jJIJu9O)c8vZX27moheEej4ozeziOOHqh71FsRBqJhhhf7fiIdHG0zXUMqpHecx3(sUWuLliJtthQt30XlGOcMoKk5mYymt1MIrDAw1N1F)d2(hp9S(hDWjTN6lIV4m(feXqzWKejq9mtC3R9yeP0dNEULveb7R6syu)iDTRdRWeVEKPWMIPQA2NoxbxQWWs5GdTnp8gy2rDl1q8MOY9mWyhQa8qESNIiu6AlqdVGouf0Ni8b1J4RGA2hO(bQtvbGq(OuF2sYnb2LyI1nZN9muvFtJFemszXxfvTDCmBy8frNKeoWePlVjcW3VUT6FANPyaNoAKeuVYAwbOZMU3GIM5UjiSkULMXXZAvyohGtXQKNQV)wlkCoNlef0qLxV06guyzkVysUea2bKevIWmXRmNTmHsLltgQ596YV4So86fdPDfWpNarEJ7CBZk7gP4Zjwmeez0MLLvoTv1Y9hZHUC6La7Mk3XIN7j6th08rMouw)6kNC5FsPdIyVTIOH7GnHbv287USPuQaT7MJ1L7aDTmkTQqqKVk4ozCFbr3EOp4oVyGV0wy9L9Q3fuEUBy6YCdhgF3gvVFwlB(AfUSvIkEBIu1XGqQhZ0H5RWfOPFa17nMoxANrRzuT(5Ps94epZbeR0vScHjOWRJJdFND1dIo3SdbblTp(sRRY8OSDw6qrX5K7(UyTNhHb2xnGKrRYFAU5thI3Bmh)tIgEy5TyvVEg6sFeXbedws3ee5QoC)F4)(10NYpSTNuKDJ13(z4Z9TnM)R0hBmBTnxKqKMfLHhAJzdBodD2Y5fRZB4zaIcB6Y79BoHxCXU(X6hB9pnMAss5nmFQ(J1p)kOiNbloNkPdyGdrCenKQ(7RsVQcVgOB3d2B)(xbxYZMtFD6H2IcPhUOml4Ewc31bV10DIjG0ZY7ScFLsx6csC5mWbZHRaj1ebmBhqrOm5d31Cniok6PgZGUTzNF2bczgpxBw2)RYaXgtZKsRW)U2a)IsBsOR(E6M543iQTDgrzm35LGa7QhWx9DAzCa)H6ppqx)bZk(9cQ7E8vlJ84eMIYzuqG)Fz9QuEC85G7IsAiBrP5vJko88nne2n8TAmWAMP9Q(78uZuQq61ABTn7w3(JMC2bMZhqKsF7xRRPRz)hFG(341lZEbloYqI3xxNmV0c2z3b7bZeO75Xupyw7iFgvgS5d3kC8)d'

	-- Profile import
	-- API.RegisterProfile(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI.RegisterProfile('DoctorioUI', profile, name, addColors)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
