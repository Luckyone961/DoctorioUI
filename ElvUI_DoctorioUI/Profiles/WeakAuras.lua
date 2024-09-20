local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- WeakAuras import data
function DoctorioUI:WeakAurasImport(aura)
	if not E:IsAddOnEnabled('WeakAuras') then return end

	local import = WeakAuras.Import

	if aura == 'raidFrameVisibility' then
		import('!WA:2!vF1tVTXTs8QAGxEqOij2VgJhsVSWb1Yg2wo2T1TnfUOs2RtuQ8FWk54K(qWkUl5QLpVICdjxlPE0OhYzFP31HEQ9I(iKpblm6Na)riFc6qUYoY2YniWfbTlG0YHC4mdN53mC2CpzIwtGNq69ffxALI3Fc8lxq0D7GajrLtWturugrS9U1RwzlBXbeHKYzJ3NYc4IwifqmzFyOpX(actjdJTWuzCeQBDshLBgtUXUkAlYaQCXtF1SerAI876geX5IWxJy(HCXgculs9UXeVAR5yBV1rignt1RuUfIY2OScwSmJZihJteMvC1tjKeFodlpKGKgbKERxPhwtjiSMQWB4iviHAJ0BMER0BNoE6eW7)Zn8cOmQm8ItFKKefSdNYuEL3UE9T3C5eru8SHkvS8blUyButErkFr7Od2TYcB2vfs9x4juj1JgrvDx8ReDg4v9KKwGJ0zPIFzX7FmkrbNXTJ1wTmVa5BgSszWgut75Niv8wDYrPbwUpSOr4wQqcZAHfSwNZkOSejmleRRLphtSa2Y4HkTyCLfHH8Ii48wWte3hfzzBTQvclg5V)mgoN1SM5pyZ69yx0HOq0O3IEsKeXPQjI3SjbBrzwkUv2Unsu)iiQebZqsy4rOnSxXe4WgOdZfBH6ukkI3MGFiG(ILgJ4mz92yEvlLiHCzDHayHlHDqXD3a4X(bpKO2KJtIiZuyxqAgeMSWS5HnDeM7M51BK(X5tVtEpadfqBMp(ExnSnwq8P6mJX804GkRF0s(F(3)Is)aznhFEex84XGNdBZf49eO4d3BWG4BNPkTi3ngJuehIop61akJiyOONKLW9ZlNqX9RZ2d)IoQV2(jv7fq7qW7rXQWF6J6P4(dYm)V5(T(9ZsBYGQRzVvDBhX)hudnOB5Q2BuVVmeH5TxZyx5YLBSEYephstnU7UtMEZJbspaF0e8PmSNKNaP3E0wXCH64S9(Sbq5(M4aKpHuOX6pK)5dhW4thWypDIindJxgtK(X3EteGJ86AvnXF)UqU7jqMaxNx7BowLlbKXFYi95zdC0UEC8uxDyPfh7cMgPr5ioc)lorGZn6UtTY9pcaVUmGsewws)rYKoTsIu0890Z7ZB5HuHo(riPCY0hN3tHIGGIEOzJgX0OSmM4RN7edTlhk4GuCXDN6BxvqzAVx80PpEYYcef3WtctfrsDIN7QTxCxgQf13vfkiYqEeU7HkbfsTeYBo9rjSbe5fdg8YjprBpiigj8aanPrpmXljiqxSt8i7Q7SXUvJhxZttcugN6xlK3EBwJJfeuuTysu0wq8lxQvN)9)kiHzQ9mJbbo7W5Ox3kp)zLb(BwvPmZXDEyxWLdmFZ9gZdxQfeq9bms3kRdMku)OYG1Ra3eoZSdT3wMs)VPYV1QMfN5c1U0JKf1yJLkEWqmVQvH)hJBqpp3kKIjFdGeAxyw4uIFlcA5lki92lmSTHjbi4qCTmUVtp9kZZ4KouPs(8SjwEP5hqFDn6ZK3f0WNnsnCkeXaA17FQ9k5UUD1spZED3D0VCCnLaRS1dD3BBNQRp15Vsb27WHAJjOvxHZZ2awppoyvRLw5YSneO9syHrY8iUz7QcaJgC8UjXLVGenOKrkIHU28bRbLmuKsmC29upIaLVfMRDNX4VwAqS46iJLhHmon78m6ij5QC3xgE)xG)(DaVF9IdVta))5eVgI(sXU3T427Ny27P411nwDDItNlMmyS(n8ZZuivgxOw9s13TM1BRAQdt36C((z9XA(SR05C8dj(7NoxzTZZt3SdrCOUlenDJt5v7CsTowpV80wrAC0zdZDOzyfSmF8eVPnh4WfzA154Z1sZjsZR14qxt82S05E1AHiL1MePe1KaFkN1jqBTMdxnObjAN(URvQwDx4y6u)SL2rqGLCQTJD1QMw9GoB93Vr846pl7as9S2U0Q)x)GYbCMQNDhO3FPSnQBpHPfA9LiLvqVDtrXX3lRLOfSY(Eqlhiyy(ydR3G1pulNAqtO3zId(9NM(PPt)h')
		DoctorioUI:Print('https://wago.io/ElvUI-Mythic-Visibility')
	elseif aura == 'handleFriendlyNameplates' then
		import('!WA:2!fA1YUTTrx466fbqO5MZpcA7)ImWTn2jns2onjTiOzHOU44czlxkz7eeeWmKZqYjMAg2zgAj1LgDrx7nDVw3cuOhH8eqyu0Uppc5jONziTIDBCdbm0C7C77CoFhp3UlmybYck)7xBT7x7Elq(5QYXDddvu9CsrMoHXPYU70VZgB1sEavQyc(LNY4Hc5aSg2ujfryQ0e84(0rAVIZ9s90Sb0YDZLEZZ)jj0iCWyVWeHqg)gmpiwiBlXdO9hNs971WTvRTocZzfw7bodWmEBhnCPdxWPhtYK2B8mhjv0abNOoKIvwfKFPxzw2tlP8iD8fCvASu3o)I5xk)Y5xj)QWVlCb)qgNPI)NhFKIMeUTGX1(oD73V7M3ntMKE7yTov9WvwziosuJjwjgZjj02sgf(D8wGRVDcwtvR81YrLiPVIoaap37w7RQT6X4mneKDtnUTQIehyx8ahWj030pitPfdgn)FvT6ZEwfe81pMPqyiordzjjOyCW(imKC4eKoMIayOkDetPz8iKWQvKwGeGbtWPOWshd9wpZQ1HXSekcWJG9ncs50bN(ni)XOmL5goCwvbh0WabHIGOfbXK1AZ0TI9JuRwbdVw6iJWWp1qBI3hSrMKAUqsteycchQPseBqQqAusTkp)5vQmly3ienwKbXhfbLewxdeftEjalO2cU24aRiKfRn29oGFsTirOijrm0iYEu8(1be7HwD(UZyVnwnQY6fgq2JYpOMmJJEekmJBZnlFlRAQwf1lwmezXcdQuaKjIaCcsb3y0OcKBDQUXUy5YlzEuQXeg56YlQoulvOow4Pf6rOLwDjtuWr9EpIFh0A3cYxKtCQzbYzZhOL7dyYIBIJyblcyJeqonR6jz8cNOH3mPRb2D2MtkN7bkA51mw8eR1KPW(qLdH6Nbv3Ncckp5CbGMf33LFIYFlqmtuagw7)eg(3k5oOvpdC0iHbni6yOdjk(uUxG98hDMqE93riBLVFH4lpZd5cDPgSo37d3oJs0YmAHlc)Der4v0J)I8Rvj))vXhOSczrvs)SZNLmvsdygU359nfXB08i)izt69z7g7giseYVBE47WHcjzpjo9W9kxKELctzu5oPeWbDPhq563aKAujhNSBbL(VC3mgz63VgzJGWx(nRoA0Kq2ikzpgrh)tF0eTiOK7)JN73(9PfS0fmJnATv)wUst7jlCStNwT7pvfJjIHnS(1CW3evMVlnYWY9Pxp)IhdB9HIWilhMVsKjdO(fechxi7tljoNgAgfa03ynE(PNcF(WYh(KYhoXW7ZkyuDiuvq632jly)XWiID2WuZgaiITj4hYOk77EyLt4fifxxlkALrUp9E(dR)AGJwyg5eyHaN6W20))7m)uSW1KMiPlE(PqG80dcd6lCmSG76OsPbx3DqwIMvXX0VE981R4gKGvkZkFnobsuMLhb8BECiVjJt)YZ3aKXqJclWdQ8PaXscz8HAjlkcsCx6MhLXl3urwU4pNwuB4fZi08BmPOh0m1u(4wD2U9oDCYGjs(gZrLWSXB8AiXzlF6bpKnAQxJ69671RFD3(53i9LZOlTVzwNJDNTZEV6EnB1P(tB10BBZpUE2INn2ADV9662PzrJVvoZ3PzJlBel7HM5iBlPGJ42B7wD6uCIkf9(mt(TFvJySgTjvPWru3cQ8tqdZ)hHpqsQZuhc5OKKnikiVetd2p)2Px1mT(aA)ciCtyG4V(boHW8JjTgbnPk1q84jsBTUbjD0qEArgj9tESDMZP4Q7vYdFOrAdn71w4G)4j5FE(x83d')
		DoctorioUI:Print('https://wago.io/handleFriendlyNamePlates')
	end
end
