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
			["default_miscellaneous"] = true,
			["default_armor"] = true,
			["default_itemenhancement"] = true,
			["default_toy"] = true,
			["default_hearthstone"] = true,
			["default_other"] = true,
			["default_battlepet"] = true,
			["default_food"] = true,
			["default_reagent"] = true,
			["default_junk"] = true,
			["default_key"] = true,
			["default_consumable"] = true,
			["default_tradegoods"] = true,
			["default_recipe"] = true,
			["default_container"] = true,
			["default_auto_equipment_sets"] = true,
			["default_profession"] = true,
			["default_potion"] = true,
			["default_gem"] = true,
			["default_questitem"] = true,
			["default_weapon"] = true,
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
			["Tradeable"] = false,
			["Old"] = false,
			["fish"] = false,
			["World of Warcraft"] = false,
			["default_other"] = false,
			["Profession"] = false,
			["Junk"] = true,
			["Enchanting"] = false,
			["Elemental"] = false,
			["Food"] = false,
			["Fishing"] = false,
			["Gems"] = false,
			["Open"] = false,
			["New Category"] = false,
			["Chest"] = false,
			["Shirts"] = false,
			["cloth"] = false,
			["Container"] = false,
			["BoE"] = false,
			["Weapon"] = false,
			["Enchant"] = false,
			["Misc"] = false,
			["WoE"] = false,
			["Perma"] = false,
			["Mats"] = false,
			["Recipe"] = false,
			["Quest"] = false,
			["Bags"] = false,
			["Cooking"] = false,
			["Gear"] = false,
			["Key"] = false,
			["Trinkets"] = false,
			["Armor"] = false,
			["PvP"] = false,
			["Pot"] = false,
			["enchanting"] = false,
			["TWW"] = false,
			["Finishing Reagents"] = false,
			["Fish"] = false,
			["default_special_empty"] = false,
			["Pets"] = false,
			["Cons"] = false,
			["Craft"] = false,
			["Toys"] = false,
			["Leather"] = false,
			["Consumable"] = false,
			["WuE"] = false,
			["Ores"] = false,
			["Cloth"] = false,
			["default_auto_equipment_sets"] = false,
			["Herb"] = false,
			["Reagents"] = false,
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
			"Junk",
			"_World of Warcraft",
			"default_special_empty",
			"Perma",
			"Quest",
			"Key",
			"Pets",
			"Toys",
			"Container",
			"Misc",
			"default_other",
			"__end",
			"_Gear",
			"PvP",
			"Weapon",
			"Trinkets",
			"Armor",
			"default_auto_equipment_sets",
			"Shirts",
			"WuE",
			"BoE",
			"Tradeable",
			"Old",
			"__end",
			"_Prep",
			"Consumable",
			"Food",
			"Pot",
			"Enchant",
			"Gems",
			"__end",
			"_Profession",
			"Cloth",
			"Cooking",
			"Fishing",
			"Elemental",
			"Enchanting",
			"Herb",
			"Leather",
			"Ores",
			"Reagents",
			"Profession",
			"Recipe",
			"__end",
		},
		["hide_boe_on_common"] = false,
		["bank_view_type"] = "category",
		["icon_grey_junk"] = true,
		["main_view_position"] = {
			"RIGHT",
			-238.999755859375,
			27.000732421875,
		},
		["bank_only_view_show_bag_slots"] = true,
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
		["add_to_category_buttons"] = true,
		["category_migration"] = 3,
		["guild_bank_sort_method"] = "unset",
		["warband_bank_view_width"] = 24,
		["category_section_toggled"] = {
			["Gear"] = false,
			["World of Warcraft"] = false,
			["New Section"] = false,
			["Profession"] = false,
		},
		["view_type"] = "unset",
		["icon_text_quality_colors"] = true,
		["icon_text_font_size"] = 14,
		["category_group_empty_slots"] = true,
		["view_alpha"] = 1,
		["bag_view_width"] = 16,
		["recent_timeout"] = 15,
		["sort_start_at_bottom"] = false,
		["guild_view_position"] = {
			"LEFT",
			216.0001068115234,
			166.0003051757813,
		},
		["recent_characters_main_view"] = {},
		["icon_equipment_set_border"] = true,
		["auto_sort_on_open"] = false,
		["sort_ignore_slots_at_end"] = false,
		["sort_ignore_slots_count_2"] = {},
		["sort_ignore_bank_slots_count"] = {},
		["debug_keywords"] = false,
		["guild_view_dialog_position"] = {
			"BOTTOM",
			"Baganator_GuildViewFrame",
			"TOP",
			0,
			0,
		},
		["debug_categories"] = false,
		["bank_only_view_position"] = {
			"LEFT",
			391.0002136230469,
			224.0004272460938,
		},
		["setting_anchors"] = false,
		["show_sort_button_2"] = false,
		["show_buttons_on_alt"] = true,
		["bag_icon_size"] = 36,
		["category_modifications"] = {
			["Tradeable"] = {
				["priority"] = 1,
			},
			["Old"] = {
				["priority"] = 3,
			},
			["Toys"] = {
				["priority"] = 0,
			},
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
			["Profession"] = {
				["priority"] = 1,
			},
			["Junk"] = {
				["priority"] = 3,
			},
			["Enchanting"] = {
				["priority"] = 0,
			},
			["Elemental"] = {
				["priority"] = 0,
			},
			["Food"] = {
				["priority"] = 0,
			},
			["Fishing"] = {
				["priority"] = 0,
			},
			["Gems"] = {
				["priority"] = 0,
			},
			["Pot"] = {
				["priority"] = 0,
			},
			["default_auto_equipment_sets"] = {
				["priority"] = 0,
			},
			["Weapon"] = {
				["priority"] = -1,
			},
			["Enchant"] = {
				["priority"] = 0,
			},
			["Misc"] = {
				["priority"] = 0,
			},
			["PvP"] = {
				["priority"] = 3,
			},
			["Perma"] = {
				["priority"] = 1,
				["addedItems"] = {
					["i:65274"] = true,
					["i:6948"] = true,
					["i:188152"] = true,
					["i:109076"] = true,
				},
			},
			["default_armor"] = {
				["group"] = "type",
			},
			["Reagents"] = {
				["priority"] = -1,
			},
			["Cooking"] = {
				["priority"] = 0,
			},
			["Soulbound"] = {
				["priority"] = 0,
			},
			["Shirts"] = {
				["priority"] = 1,
			},
			["Armor"] = {
				["priority"] = -1,
			},
			["Trinkets"] = {
				["priority"] = -1,
			},
			["Container"] = {
				["priority"] = 0,
			},
			["default_reagent"] = {
				["group"] = "type",
				["priority"] = -1,
			},
			["Herb"] = {
				["priority"] = 0,
			},
			["Pets"] = {
				["priority"] = 0,
			},
			["Quest"] = {
				["priority"] = 0,
			},
			["Leather"] = {
				["priority"] = 0,
			},
			["Consumable"] = {
				["priority"] = -1,
			},
			["Recipe"] = {
				["priority"] = 0,
			},
			["Ores"] = {
				["priority"] = 0,
			},
			["Cloth"] = {
				["priority"] = 0,
			},
			["Key"] = {
				["priority"] = 0,
			},
			["WuE"] = {
				["priority"] = 0,
			},
			["BoE"] = {
				["priority"] = 0,
			},
		},
		["lock_frames"] = false,
		["category_horizontal_spacing"] = 0.5,
		["bag_empty_space_at_top"] = false,
		["custom_categories"] = {
			["Tradeable"] = {
				["name"] = "Tradeable",
				["search"] = "#tradeable loot || #tradable loot",
			},
			["Old"] = {
				["name"] = "Old",
				["search"] = "!tww & gear",
			},
			["Toys"] = {
				["name"] = "Toys",
				["search"] = "#toy",
			},
			["Profession"] = {
				["name"] = "Profession",
				["search"] = "#profession",
			},
			["Quest"] = {
				["name"] = "Quest",
				["search"] = "#quest",
			},
			["Enchanting"] = {
				["name"] = "Enchanting",
				["search"] = "#enchanting",
			},
			["Elemental"] = {
				["name"] = "Elemental",
				["search"] = "#elemental",
			},
			["Food"] = {
				["name"] = "Food",
				["search"] = "#food",
			},
			["Fishing"] = {
				["name"] = "Fishing",
				["search"] = "#fishing",
			},
			["Gems"] = {
				["name"] = "Gems",
				["search"] = "#gem",
			},
			["Pot"] = {
				["name"] = "Pot",
				["search"] = "#potion",
			},
			["Shirts"] = {
				["name"] = "Shirts",
				["search"] = "#tabard || #shirt",
			},
			["Weapon"] = {
				["name"] = "Weapon",
				["search"] = "#weapon",
			},
			["Enchant"] = {
				["name"] = "Enchant",
				["search"] = "#item enhancement",
			},
			["Misc"] = {
				["name"] = "Misc",
				["search"] = "#miscellaneous",
			},
			["Perma"] = {
				["name"] = "Perma",
				["search"] = "",
			},
			["Pets"] = {
				["name"] = "Pets",
				["search"] = "#battle pet || #battle pets",
			},
			["Soulbound"] = {
				["name"] = "Soulbound",
				["search"] = "soulbound",
			},
			["Armor"] = {
				["name"] = "Armor",
				["search"] = "#armor",
			},
			["Trinkets"] = {
				["name"] = "Trinkets",
				["search"] = "#trinket",
			},
			["Container"] = {
				["name"] = "Container",
				["search"] = "#open",
			},
			["Reagents"] = {
				["name"] = "Reagents",
				["search"] = "#finishing reagents || #optional reagents || #crafting reagent || #reagent",
			},
			["Recipe"] = {
				["name"] = "Recipe",
				["search"] = "#recipe",
			},
			["Junk"] = {
				["name"] = "Junk",
				["search"] = "#junk",
			},
			["BoE"] = {
				["name"] = "BoE",
				["search"] = "#boe || #bwe",
			},
			["WuE"] = {
				["name"] = "WuE",
				["search"] = "#wue",
			},
			["Leather"] = {
				["name"] = "Leather",
				["search"] = "#leather || #leatherworking",
			},
			["Consumable"] = {
				["name"] = "Consumable",
				["search"] = "#consumable",
			},
			["Key"] = {
				["name"] = "Key",
				["search"] = "#key",
			},
			["Ores"] = {
				["name"] = "Ores",
				["search"] = "#metal stone || #parts || #blacksmithing || #engineering || #jewelcrafting",
			},
			["Cloth"] = {
				["name"] = "Cloth",
				["search"] = "!gear & (#cloth || #tailoring || #first aid)",
			},
			["PvP"] = {
				["name"] = "PvP",
				["search"] = "#pvp",
			},
			["Cooking"] = {
				["name"] = "Cooking",
				["search"] = "#cooking || #fish ",
			},
			["Herb"] = {
				["name"] = "Herb",
				["search"] = "#herb || #alchemy || #inscription",
			},
		},
		["upgrade_plugin"] = "none",
	}

	DoctorioUI:Print(L["Baganator profile has been set."])
end
