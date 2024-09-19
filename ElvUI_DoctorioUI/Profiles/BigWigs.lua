local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Temporary
local function addColors(accepted)
	if not accepted then return end

	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] = BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles'] or {}
	-- Wipe old Shadowlands and Dragonflight colors
	-- Cleanup for upcoming TWW colors
	BigWigs3DB['namespaces']['BigWigs_Plugins_Colors']['profiles']['Doctorio'] = {}
end

-- BigWigs Profile
function DoctorioUI:Setup_BigWigs()
	if not E:IsAddOnEnabled('BigWigs') then return end

	-- Profile name
	local name = 'Doctorio'

	-- Profile strings
	local profile = 'BW1:Lvv3Unoru41YncTIvqtQ2USAPOfKajwjQOPuquHeQUnDBkTPr5h2T9kpXzI9ODS9WmJtA4cqkxX15rOpc5cUfPChsCXO8i0haqQpbmNXX2z36lS85mNZ35NVZCS1FYwpeleiFCZybrsIJeFXCCilit80EhwRrNATu2ww3gfZdr08JCoR2XDuLWwlwIXHX0yUyypwcNrX730(R3(7SmVD6rtsvufE9n2T85yCuQgBZBhVXOmf29gJP04r7BBoBNEXCuKpEFJ0Egvv54(PYgeRE3YCOnwkjr(I)yDECIKsIWonUOrTjdIJKTj)k(lxaLxxgdZ9qcS7KbO(yjje30ENTRElC45XrXEb84qCGPxCS21gOq8n1UMX1rzeASboqNAthVaKmywFIGrrJbKknd86I0OpVZj1p8NUOBNZQ3O2mFE8OUSriEFrWKebM4P74U34rrcHh09CZJiKSx2crj(rQs3ewKtSYr6aRdMSOy3EHeFTeCZWbNARFypgq)L62ytESxBjIlpiIe6Y20OxNjhr4ypGknhQknda5Ibdey5RTUdS6abtBrlK2ix2gGMdJJP9Jhf1ijShMl0OboDF0Q25IMZahsX7slJqBgYtNW23cc62P2fibDzLxf72JimSRjbCI59X80IYYYY(gq5jyIFG8Znga18YwnpRlxugx(dp4wqAvknRtLsFMm5iSajt46oAXXPdlGu(WsWctpjrg32drXlZAOaoMJ)LeCK34MRPNf3Jv(EnLpRBtwL3UQ7mMHBXixJP3wuQqyTtT0qDWXNPlor5BkmYL9rRYTaTEeK(64S0xOcoF1zM7X5QsPeAruWr(YGhYwFvQOwFFS7ImelgUMNPcY3TwKbuQbqt473R49UvTzpnZeO9DisiBQhsiEuDHTCGmlp6eq8EJUGf2Pezk5QQAKwoaznfC5vK(YGDNaFEvCCOvEsLsTRm(96uhw5YXBnmxpAOEww3ME87MLgI2EApu6mO4NxO)0b59g9n5KO(NMVqQ41UGjDGCnaPb3m2YxQ60t(X)73np5FyBpjdD9P)7NappZwF8FzESb0QP3jGe6oD)tTb0GSvtHvDE1oSkE6ercvr(k8nNWY2rREH6fw)tLzAqYxw8XQpuvDkodZG7gseKEuSdIFgjKi)7PMToD0RYA1Q(lpPZu81S07CFLPfNfivV7YrbMTsyUoWcq3jAhmKZrRZwp3KwybSziWbWWLd0zchp)iSerOINFSEJg0kAlhtXTQrh2ToxKs3LMN(RN0KyVzPsMi0)P98ZcTgqx1tuBUm)1IkBNbek1DrEsav1wSnENsgAWVV6tduL3AE2FkaDpHTrUNNNqLegLG5WVk2PaYZJhQ3wLtdPdkBoDq2fMVTc3UIVvLEwZ1LxXpANP7szsxPSv20hS2hmPBD9ndCKuT2vQsQsV3JEK63yLZrpJfhOjXNPkJwKFcuzpeQbDhO1WyIhEETiFkreS)ZpiC8)d'

	-- Profile import
	-- API:ImportProfileString(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI:ImportProfileString('DoctorioUI', profile, name, addColors)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
