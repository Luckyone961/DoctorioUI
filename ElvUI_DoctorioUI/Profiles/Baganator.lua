local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Baganator Profile
function DoctorioUI:Setup_Baganator()
	if not E:IsAddOnEnabled('Baganator') then return end

	DoctorioUI:Print(L["Baganator profile has been set."])
end
