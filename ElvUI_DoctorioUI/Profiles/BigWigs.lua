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
				[439784] = {
					0.9411765336990356,
					0.917647123336792,
					0.8392157554626465,
				},
				[439811] = {
					1,
					0,
					0,
				},
				["stages"] = {
					0.5882353186607361,
					0.5882353186607361,
					0.5882353186607361,
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
				[439576] = {
					0,
					1,
					0,
				},
				[438245] = {
					1,
					0,
					1,
				},
				[437620] = {
					1,
					0,
					1,
				},
				[439409] = {
					0,
					0.3921568989753723,
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
				[438656] = {
					1,
					0,
					0,
				},
				[450045] = {
					0.7843137979507446,
					1,
					0.5882353186607361,
				},
				[441791] = {
					1,
					1,
					0,
				},
				[439838] = {
					0.9411765336990356,
					0.917647123336792,
					0.8392157554626465,
				},
				[442994] = {
					1,
					0.3921568989753723,
					0.294117659330368,
				},
				[438677] = {
					0.9843137860298157,
					0,
					1,
				},
				[438355] = {
					0.4901961088180542,
					0.686274528503418,
					1,
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
				[441782] = {
					1,
					0.5882353186607361,
					0.8705883026123047,
				},
				[438801] = {
					0,
					1,
					0.03921568766236305,
				},
				[441626] = {
					1,
					0,
					0.0470588281750679,
				},
			},
			["BigWigs_Bosses_Queen Ansurek"] = {
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
				[447411] = {
					1,
					0,
					1,
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
	local profile = 'BW1:LvvZUTTXt8qWy0e4GwlLy36G6IGa0I()qDJLRBrnAqGPT8hQo2c6JM4CIROgjUiRi3)7UuYQxkG6LEwpcUVb6qVwaDRa9aREe8dqcGEc6oCfjDs5Hf7o7S)Mz(nFqR)q0hesAyqjNxSfVOxyuGQD4GGQHsQslwU2i(ITvk148QXlz93fN3dKssxOoOu0GUYFBLPqpU)HHbQ60FgUqegPy0aW5SZpRC2vNr6bxv(sUq)4bKHxJYFEyqONViSh4pkscupTfDD88jk)rDw8M4LN0veoOjFar0w6FLhJiLEHSqH7meJMCoi8isWTgHr7g4CA5dBCvVCKN0Mk5mYqfThS0OoK2aURQ9wBwAccW5gVDAJJpz)F88Mno9KZkNyDmy(FJBre7Jwt(tJs3w54N9Mpt)TXBSp(zV9pXV)XEM(2YA4is9ZAxX2YYwOf1aUuP1)T)c(97zBSt0hVSUprZ4vS06JICiEVwhVrbTRu1(jBUZ7US9eTkz8(NgFhXchEoKA6J0Kve3DEFQK2IboeXP0Eu1FnltJNh2hChbxYFbTTY)GvgNWBn0KsTANC0Xn43)9Elgwlpniu0JWogOD9v7mfZvPvjXFPqYjEAFAjNougZDIr3e8BVE8Q(87NB9iMIYzuqGPGTCqGCDWuI74mL8rUUUAidQvM1V5jT6AIkhLMXCf4AKaMEaOiuM8rhYiQ4pkEz(kziudKkIq5Nh2yaUX00elgtF8IixJwR9lFwJY1gRzfte(vXpCdEHSgIuoVJoyIVt86O1Q1pK6btlh0LrL(7(O96nCw2dqRD34hs4RSOBjRL6lsAjspwj(PXp1Y6AdJLl9bXpaSMNbNPeCTXO7NS)BlkSl2YQyxlEHaDBIUcxL3r(1tqA98oDKG6clEr8KU3JkGJyHdAmKd140lb2m8I9IuH19imWLVcEE)WqgAZYT7cUxHsmuYNZlGhqeoua))iiWBy1B)KnlTdFTKl05Od0MWdJG6i7h)Gf3OFsv0En8PEVoqti2tWCOXbFPvI3w3uczncp8QWWEwZt8ojxJynIgu3P4JomFWqogx8d36gH8lT43)MrYjb4yoW3inZBofc6Q8VRHEqyVX8iEbe83jKECZQ8vZaqe6LeJ7fq75YxpvosM7tKQQ6ROEmqwywk6Mzh26Vfe5nbxtvR((yKKuStYaoHI2GiNasMnzGjniRpGY1PW1(p(TjvS0m8ISPL(8p5MHcgfhejqwoW(63TCXDmEoPzE7ekpntnpnYwmcn(XxN7ROhAq6aqsui2G)SuBA4cS6573jFD7s2ttXeF)gZsJ3CUltbtnW1Og3iVn2qjPABkrsDV55UNrfCQRj9NxuO1uwW0jK0SOBKpf6OEVsQZI61sxt5oBr7TPbTFlEKGZGDXH1FNvYQtlwKrqjC5BSR1vaqGrIDYAjb0Ex7mvk1AiW0MEx7ezB54nKKQVDRqbjOlyup5NcBnvpSmF8Ye9mS0tVcNUWU1T)WrnprxrcbQ4YVcNT8b37EX)6)c'

	-- Profile import
	-- API:ImportProfileString(addonName, profileString, optionalCustomProfileName, optionalCallbackFunction)
	BigWigsAPI:ImportProfileString('DoctorioUI', profile, name, addColors)

	-- No chat print here
	-- BigWigs will print a message with all important information after the import
end
