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
	local profile = 'BW1:DnvWUTTrq0qSrhckqIScGcksCHZLcuGKGkLMuaDPO0M2wQ2Ycsu1O5exsoMCrwsUy3vsw9sa0PCwFc(q(a0pqa4TcKdl0Nqox0c4VGUlPinq3dl2zgoV5nVzO1NyntaHahbJYeejjlv895qclUYCG)HodDDgRqwwFnnJNGP1HSpZ5yxvdWA7omomJMXfZ9zZ4mk0Be6hF1pBvCB7tNv6OR56NqJJ4aKw6bvCBhSex5a5VeO0Sf9qfX64NXXPrqVcR3u4QlhclTlqS7T74WeqkjPrIp2KNntsjPG9Wlg6S6QSu5eYFc)Wwt7nLXaEawaERUchcsscmc15vD)Qj45zPzbX8SeiUqlowN6qCcCJZ1mUUklWllGZ4t12oiglJ3esemkEPbPgBmzDrz1ZDpT)H)2ftDpR)qNnr8SftzlW8qr8QzcGeOvCVBcOyHiWOEE1v0q2)ymMsIsvnUj5ooT2hZlv6FFR(Pno49AyNLgoOwDU761MpXfUwojghMTyGLLfIVZ1Gt)L)9dfN6hi0Qk01r)NVZCEksh(ZfhKbnhnbXcn7chGmOnh4c96qx7l7WAfOjIuxO069P2RyvlmDDVyK6fwFP1gnm1dQNPEeFN(SgQWo(25ebXNc2y(zKeI8VwxifUA9D84(NCQ7A4A2Pajkw(YCJmwvqv3BRr5eTCpJ5zBMkER0jCjjugFutwZ6pzmiKyUm22GHhxQ1LzCi)iqIjuXbhtXsJKmrUKcJDOZN2Nly4anZBKx()qjjEZMsRIke(T(rvLwdON6jQ274V2uHSVIqPEBRjHPR2N94)xlBe6Vr98y1E7NxT(A89e2JRZ88zujHrja3S)25oippBo4DB94OCHP9AdofVFBloQvKvlFRCD7D3F)B0QuL17uifIEV7)Wvt7pcZHuP6(Vt1q1OXF)q1q2E1OxnlVs9i1tv7H3whX0zpW0dAfy88msaK7KgrjI4Eh8Rjl)Vd'

	-- Profile import
	-- API:ImportProfileString(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI:ImportProfileString('DoctorioUI', profile, name, addColors)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
