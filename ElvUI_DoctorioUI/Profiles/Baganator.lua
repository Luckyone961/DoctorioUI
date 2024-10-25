local DoctorioUI, E, L, V, P, G = unpack((select(2, ...)))

-- Baganator Profile
function DoctorioUI:Setup_Baganator()
	if not E:IsAddOnEnabled('Baganator') then return end

	BAGANATOR_CONFIG = {
		["guild_view_width"] = 14,
		["empty_slot_background"] = true,
		["junk_plugin"] = "poor_quality",
		["reduce_spacing"] = true,
		["bag_view_type"] = "category",
		["automatic_categories_added"] = {
			["default_questitem"] = true,
			["default_armor"] = true,
			["default_itemenhancement"] = true,
			["default_toy"] = true,
			["default_weapon"] = true,
			["default_other"] = true,
			["default_battlepet"] = true,
			["default_food"] = true,
			["default_gem"] = true,
			["default_hearthstone"] = true,
			["default_miscellaneous"] = true,
			["default_consumable"] = true,
			["default_tradegoods"] = true,
			["default_reagent"] = true,
			["default_potion"] = true,
			["default_profession"] = true,
			["default_auto_equipment_sets"] = true,
			["default_container"] = true,
			["default_recipe"] = true,
			["default_key"] = true,
			["default_junk"] = true,
		},
		["debug_categories_search"] = false,
		["bank_view_width"] = 24,
		["sort_method"] = "type",
		["reverse_groups_sort_order"] = false,
		["auto_open"] = {
			["auction_house"] = false,
			["void_storage"] = false,
			["guild_bank"] = false,
			["merchant"] = false,
			["trade_partner"] = false,
			["character_panel"] = false,
			["scrapping_machine"] = true,
			["tradeskill"] = false,
			["mail"] = true,
			["sockets"] = false,
			["forge_of_bonds"] = false,
			["bank"] = false,
		},
		["icon_corners_auto_insert_applied"] = {
			["keystone_level"] = true,
			["battle_pet_level"] = true,
		},
		["show_recents_tabs_main_view"] = false,
		["upgrade_plugin_ignored"] = {
		},
		["category_hidden"] = {
			["Bags"] = false,
			["Old"] = false,
			["fish"] = false,
			["World of Warcraft"] = false,
			["default_other"] = false,
			["Profession"] = false,
			["Junk"] = true,
			["Enchanting"] = false,
			["Reagents"] = false,
			["Elemental"] = false,
			["2"] = false,
			["Fishing"] = false,
			["Gems"] = false,
			["Open"] = false,
			["New Category"] = false,
			["Chest"] = false,
			["Herb"] = false,
			["default_auto_equipment_sets"] = false,
			["Shirts"] = false,
			["cloth"] = false,
			["5"] = true,
			["Food"] = false,
			["Weapon"] = false,
			["Enchant"] = false,
			["Misc"] = false,
			["Toys"] = false,
			["Perma"] = false,
			["Craft"] = false,
			["Tradeable"] = false,
			["WoE"] = false,
			["Cooking"] = false,
			["Finishing Reagents"] = false,
			["Gear"] = false,
			["Key"] = false,
			["WuE"] = false,
			["Armor"] = false,
			["PvP"] = false,
			["Container"] = false,
			["enchanting"] = false,
			["TWW"] = false,
			["Pets"] = false,
			["Fish"] = false,
			["default_special_empty"] = false,
			["Trinkets"] = false,
			["Cons"] = false,
			["Recipe"] = false,
			["Mats"] = false,
			["Leather"] = false,
			["Consumable"] = false,
			["Quest"] = false,
			["Ores"] = false,
			["Cloth"] = false,
			["Pot"] = false,
			["19"] = false,
			["BoE"] = false,
		},
		["junk_plugin_ignored"] = {
		},
		["icon_flash_similar_alt"] = false,
		["no_frame_borders"] = false,
		["warband_current_tab"] = 1,
		["category_item_grouping"] = true,
		["icon_top_left_corner_array"] = {
			"junk",
			"battle_pet_level",
			"keystone_level",
			"item_level",
		},
		["main_view_show_bag_slots"] = false,
		["category_display_order"] = {
			"5",
			"_World of Warcraft",
			"default_special_empty",
			"16",
			"32",
			"29",
			"17",
			"3",
			"21",
			"15",
			"default_other",
			"__end",
			"_Gear",
			"24",
			"13",
			"26",
			"19",
			"default_auto_equipment_sets",
			"12",
			"20",
			"34",
			"1",
			"2",
			"__end",
			"_Prep",
			"28",
			"8",
			"11",
			"14",
			"10",
			"__end",
			"_Profession",
			"31",
			"23",
			"9",
			"7",
			"6",
			"22",
			"27",
			"30",
			"25",
			"4",
			"33",
			"__end",
		},
		["hide_boe_on_common"] = false,
		["bank_view_type"] = "category",
		["icon_grey_junk"] = true,
		["main_view_position"] = {
			"RIGHT",
			-262.978271484375,
			160.0069580078125,
		},
		["bank_only_view_show_bag_slots"] = false,
		["icon_bottom_left_corner_array"] = {
			"equipment_set",
		},
		["icon_top_right_corner_array"] = {
		},
		["icon_bottom_right_corner_array"] = {
			"quantity",
		},
		["debug_timers"] = false,
		["seen_welcome"] = 1,
		["hide_special_container"] = {
		},
		["character_select_position"] = {
			"RIGHT",
			"Baganator_CategoryViewBackpackViewFrame",
			"LEFT",
			0,
			0,
		},
		["category_horizontal_spacing_2"] = 0.3,
		["category_default_import"] = 2,
		["add_to_category_buttons"] = true,
		["guild_current_tab"] = 6,
		["category_migration"] = 4,
		["custom_categories"] = {
			["29"] = {
				["name"] = "Key",
				["search"] = "#key",
			},
			["1"] = {
				["name"] = "Tradeable",
				["search"] = "#tradeable loot || #tradable loot",
			},
			["3"] = {
				["name"] = "Toys",
				["search"] = "#toy",
			},
			["2"] = {
				["name"] = "Old",
				["search"] = "#gear & <536",
			},
			["19"] = {
				["name"] = "Armor",
				["search"] = "#armor",
			},
			["4"] = {
				["name"] = "Profession",
				["search"] = "#profession",
			},
			["7"] = {
				["name"] = "Elemental",
				["search"] = "#elemental",
			},
			["6"] = {
				["name"] = "Enchanting",
				["search"] = "#enchanting",
			},
			["25"] = {
				["name"] = "Reagents",
				["search"] = "#finishing reagents || #optional reagents || #crafting reagent || #reagent",
			},
			["8"] = {
				["name"] = "Food",
				["search"] = "#food",
			},
			["27"] = {
				["name"] = "Leather",
				["search"] = "!gear & (#leather || #leatherworking)",
			},
			["17"] = {
				["name"] = "Pets",
				["search"] = "#battle pet || #battle pets",
			},
			["31"] = {
				["name"] = "Cloth",
				["search"] = "!gear & (#cloth || #tailoring || #first aid)",
			},
			["21"] = {
				["name"] = "Container",
				["search"] = "#open",
			},
			["33"] = {
				["name"] = "Recipe",
				["search"] = "#recipe",
			},
			["23"] = {
				["name"] = "Cooking",
				["search"] = "#cooking || #fish ",
			},
			["34"] = {
				["name"] = "BoE",
				["search"] = "#boe || #bwe",
			},
			["28"] = {
				["name"] = "Consumable",
				["search"] = "#consumable",
			},
			["32"] = {
				["name"] = "Quest",
				["search"] = "#quest",
			},
			["13"] = {
				["name"] = "Weapon",
				["search"] = "#weapon",
			},
			["12"] = {
				["name"] = "Shirts",
				["search"] = "#tabard || #shirt",
			},
			["11"] = {
				["name"] = "Pot",
				["search"] = "#potion",
			},
			["5"] = {
				["name"] = "Junk",
				["search"] = "#junk",
			},
			["18"] = {
				["name"] = "Soulbound",
				["search"] = "soulbound",
			},
			["9"] = {
				["name"] = "Fishing",
				["search"] = "#fishing",
			},
			["15"] = {
				["name"] = "Misc",
				["search"] = "#miscellaneous",
			},
			["14"] = {
				["name"] = "Enchant",
				["search"] = "#item enhancement",
			},
			["24"] = {
				["name"] = "PvP",
				["search"] = "#pvp",
			},
			["16"] = {
				["name"] = "Perma",
				["search"] = "",
			},
			["26"] = {
				["name"] = "Trinkets",
				["search"] = "#trinket",
			},
			["20"] = {
				["name"] = "WuE",
				["search"] = "#wue",
			},
			["30"] = {
				["name"] = "Ores",
				["search"] = "#metal stone || #parts || #blacksmithing || #engineering || #jewelcrafting",
			},
			["22"] = {
				["name"] = "Herb",
				["search"] = "#herb || #alchemy || #inscription",
			},
			["10"] = {
				["name"] = "Gems",
				["search"] = "#gem",
			},
		},
		["guild_bank_sort_method"] = "unset",
		["warband_bank_view_width"] = 24,
		["sort_ignore_slots_at_end"] = false,
		["add_to_category_buttons_2"] = "drag",
		["view_type"] = "unset",
		["category_group_empty_slots"] = true,
		["currencies_tracked"] = {},
		["sort_start_at_bottom"] = false,
		["icon_text_font_size"] = 14,
		["icon_equipment_set_border"] = true,
		["guild_view_position"] = {
			"LEFT",
			179.0000915527344,
			191.0003051757813,
		},
		["view_alpha"] = 1,
		["bag_view_width"] = 16,
		["recent_timeout"] = 15,
		["sort_ignore_slots_count_2"] = {},
		["sort_ignore_bank_slots_count"] = {},
		["recent_characters_main_view"] = {},
		["upgrade_plugin"] = "none",
		["auto_sort_on_open"] = false,
		["debug_categories"] = false,
		["bag_icon_size"] = 36,
		["setting_anchors"] = false,
		["debug_keywords"] = false,
		["guild_view_dialog_position"] = {
			"BOTTOM",
			"Baganator_GuildViewFrame",
			"TOP",
			0,
			0,
		},
		["show_buttons_on_alt"] = true,
		["bank_only_view_position"] = {
			"LEFT",
			852.0017700195312,
			169.00146484375,
		},
		["category_modifications"] = {
			["default_hearthstone"] = {
				["addedItems"] = {
					["i:65274"] = true,
					["i:210494"] = true,
					["i:188152"] = true,
					["i:109076"] = true,
				},
			},
			["default_other"] = {
				["priority"] = -1,
			},
			["29"] = {
				["priority"] = 0,
			},
			["1"] = {
				["priority"] = 1,
			},
			["3"] = {
				["priority"] = 0,
			},
			["2"] = {
				["priority"] = 3,
			},
			["5"] = {
				["showGroupPrefix"] = true,
				["priority"] = 3,
			},
			["4"] = {
				["priority"] = 1,
			},
			["7"] = {
				["priority"] = 0,
			},
			["6"] = {
				["priority"] = 0,
			},
			["9"] = {
				["priority"] = 0,
			},
			["8"] = {
				["priority"] = 0,
			},
			["27"] = {
				["priority"] = 0,
			},
			["default_auto_equipment_sets"] = {
				["priority"] = 0,
			},
			["13"] = {
				["priority"] = -1,
			},
			["21"] = {
				["priority"] = 0,
			},
			["11"] = {
				["priority"] = 0,
			},
			["23"] = {
				["priority"] = 0,
			},
			["default_armor"] = {
				["group"] = "type",
			},
			["34"] = {
				["priority"] = 0,
			},
			["28"] = {
				["priority"] = -1,
			},
			["10"] = {
				["priority"] = 0,
			},
			["33"] = {
				["priority"] = 1,
			},
			["12"] = {
				["priority"] = 1,
			},
			["default_reagent"] = {
				["group"] = "type",
				["priority"] = -1,
			},
			["25"] = {
				["priority"] = -1,
			},
			["19"] = {
				["showGroupPrefix"] = true,
				["priority"] = -1,
			},
			["15"] = {
				["priority"] = 0,
			},
			["18"] = {
				["priority"] = 0,
			},
			["17"] = {
				["priority"] = 0,
			},
			["31"] = {
				["priority"] = 0,
			},
			["14"] = {
				["priority"] = 0,
			},
			["24"] = {
				["priority"] = 3,
			},
			["16"] = {
				["addedItems"] = {
					["i:65274"] = true,
					["i:6948"] = true,
					["i:188152"] = true,
					["i:132514"] = true,
					["i:109076"] = true,
					["i:65360"] = true,
				},
				["priority"] = 1,
			},
			["26"] = {
				["priority"] = -1,
			},
			["20"] = {
				["priority"] = 0,
			},
			["30"] = {
				["priority"] = 0,
			},
			["22"] = {
				["priority"] = 0,
			},
			["32"] = {
				["priority"] = 0,
			},
		},
		["show_sort_button_2"] = false,
		["category_horizontal_spacing"] = 0.5,
		["bag_empty_space_at_top"] = false,
		["currency_panel_position"] = {
			"RIGHT",
			"Baganator_CategoryViewBackpackViewFrame",
			"LEFT",
			0,
			0,
		},
		["lock_frames"] = false,
		["currencies_tracked_imported"] = {
		},
		["icon_text_quality_colors"] = true,
		["currency_headers_collapsed"] = {
		},
		["category_section_toggled"] = {
			["World of Warcraft"] = false,
			["Prep"] = false,
			["Profession"] = false,
			["Gear"] = false,
			["New Section"] = false,
		},
	}

	DoctorioUI:Print(L["Baganator profile has been set."])
end
