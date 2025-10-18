SMODS.Atlas {
	key = 'collective',
	path = 'collective.png',
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = 'newjokers',
	path = 'newjokers.png',
	px = 71,
	py = 95
}

SMODS.Atlas {
	key = 'oscillator_atlas',
	path = 'oscillator_joker.png',
	px = 71,
	py = 95,
}
-- All joker equivalents. Format is: original <> alternate
-- DEPRECATED, MAY THIS TABLE REST IN FUCKING PEACE. whenever-the-fuck-FG-was-concieved - Aug 19, 2025
--[[
FG.ALTS.joker_equivalents = {
	meta = {
		set = "jokers"
	},
	-- Mod jokers
	j_fg_change_of_pace = "j_fg_change_of_pace_alt",
	j_fg_flipped_script = "j_fg_flipped_script_alt",
	j_fg_concert = "j_fg_concertalt",
	j_fg_delinquent = "j_fg_delinquentalt",
	j_fg_conductor = "j_fg_conductoralt",
	j_fg_oscillator = "j_fg_oscillator_alt",
	-- Normal jokers
	j_joker = "j_fg_joker",
	j_greedy_joker = "j_fg_greedy",
	j_lusty_joker = "j_fg_lusty",
	j_wrathful_joker = "j_fg_wrathful",
	j_gluttenous_joker = "j_fg_gluttenous",
	j_jolly = "j_fg_jolly",
	j_zany = "j_fg_zany",
	j_mad = "j_fg_mad",
	j_crazy = "j_fg_crazy",
	j_droll = "j_fg_droll",
	j_sly = "j_fg_sly",
	j_wily = "j_fg_wily",
	j_clever = "j_fg_clever",
	j_devious = "j_fg_devious",
	j_ceremonial = "j_fg_dagger",
	j_banner = "j_fg_banner",
	j_mystic_summit = "j_fg_summit",
	j_loyalty_card = "j_fg_loyalty",
	j_8_ball = "j_fg_8ball",
	j_misprint = "j_fg_misprint",
	j_fibonacci = "j_fg_fibonacci",
	j_scary_face = "j_fg_scary_face",
	j_gros_michel = "j_fg_gros_michel",
	j_even_steven = "j_fg_even_steven",
	j_odd_todd = "j_fg_odd_todd",
	j_business = "j_fg_business",
	j_supernova = "j_fg_supernova",
	j_ride_the_bus = "j_fg_ride_the_bus",
	j_abstract = "j_fg_abstract",
	j_crafty = "j_fg_crafty",
	j_duo = "j_fg_duo",
	j_trio = "j_fg_trio",
	j_family = "j_fg_family",
	j_order = "j_fg_order",
	j_tribe = "j_fg_tribe",
	j_egg = "j_fg_egg",
	j_ice_cream = "j_fg_ice_cream",
	j_faceless = "j_fg_faceless",
	j_baron = "j_fg_baron",
	j_riff_raff = "j_fg_riff_raff",
	j_cloud_9 = "j_fg_cloud_9",
	j_rocket = "j_fg_rocket",
	j_gift = "j_fg_gift",
	j_erosion = "j_fg_erision",
	j_fg_juggler = "j_fg_juggler",
	j_drunkard = "j_fg_drunkard",
	j_stone = "j_fg_stone",
	j_lucky_cat = "j_fg_lucky_cat",
	j_splash = "j_fg_splash",
	j_cavendish = "j_fg_cavendish",
	j_red_card = "j_fg_red_card",
	j_popcorn = "j_fg_popcorn",
	j_ramen = "j_fg_ramen",
	j_walkie_talkie = "j_fg_walkie_talkie",
	j_selzer = "j_fg_selzer",
	j_castle = "j_fg_castle",
	j_campfire = "j_fg_campfire",
	j_acrobat = "j_fg_acrobat",
	j_swashbuckler = "j_fg_swashbuckler",
	j_troubadour = "j_fg_troubadour",
	j_throwback = "j_fg_throwback",
	j_smiley = "j_fg_smiley",
	j_raised_fist = "j_fg_fist",
	j_hanging_chad = "j_fg_hanging_chad",
	j_rough_gem = "j_fg_gem",
	j_bloodstone = "j_fg_bloodstone",
	j_arrowhead = "j_fg_arrowhead",
	j_onyx_agate = "j_fg_agate",
	j_flower_pot = "j_fg_flower_pot",
	j_seeing_double = "j_fg_seeing_double",
	j_oops = "j_fg_oops",
	j_wee = "j_fg_wee",
	j_hit_the_road = "j_fg_hit_the_road",
	j_invisible = "j_fg_invisible",
	j_drivers_license = "j_fg_drivers_license",
	j_bootstraps = "j_fg_bootstraps",
	-- Legendaries
	j_caino = "j_fg_caino",
	j_triboulet = "j_fg_triboulet",
	j_yorick = "j_fg_yorick",
	j_chicot = "j_fg_chicot",
	j_perkeo = "j_fg_perkeo",
	-- COLLECTION
	j_fg_jogla = "j_fg_jogla_alt",
	j_fg_deathmodereal = "j_fg_deathmoderealalt",
	j_fg_goldenleaf = "j_fg_goldenleafalt",
	j_fg_jenker = "j_fg_jenkeralt"
}
]]
--------------------
---SPECIAL JOKERS---
--------------------
-- Change of pace [ DEPRECATED ]
--[[SMODS.Joker {
	key = 'change_of_pace',
	config = { extra = {} },
	rarity = "fg_common_alt",
	atlas = 'newjokers',
	eternal_compat = false,
	perishable_compat = false,
	pos = { x = 5, y = 0 }, -- havent added the sprite to the sheet yet
	cost = 4,
	
	calculate = function(self, card, context)
		if context.selling_self and FG.config.extra_jokers then
			G.GAME.pool_flags.alternate_spawn = true
			for k, v in pairs(G.P_CENTERS) do
				if string.find(k, 'j_') and not string.find(k, "_fg_") then
					G.P_CENTERS[k]['no_pool_flag'] = 'alternate_spawn'
				end
			end
		end
	end
}

SMODS.Joker {
	key = 'change_of_pace_alt',
	config = { extra = {} },
	rarity = "fg_common_alt",
	atlas = 'newjokers',
	eternal_compat = false,
	perishable_compat = false,
	pos = { x = 5, y = 0 }, -- read above
	cost = 4,
	
	calculate = function(self, card, context)
		if context.selling_self and FG.config.extra_jokers then
			G.GAME.pool_flags.alternate_spawn = false
		end
	end
}
]]
--[[ Flipped Script
SMODS.Joker {
	key = 'flipped_script',
	config = { extra = {} },
	rarity = "fg_rare_alt",
	atlas = 'newjokers',
	
	pos = { x = 6, y = 0 },
	cost = 8,
	eternal_compat = false,
	perishable_compat = false,
	
	calculate = function(self, card, context)
		if context.selling_self then
			G.E_MANAGER:add_event(Event({
				func = function()
					for i in ipairs(G.jokers.cards) do
						local currentCard = G.jokers.cards[i]
						if FG.FUNCS.is_alternate(currentCard.config.center_key, FG.ALTS.joker_equivalents) then
							FG.FUNCS.alternate_card(currentCard,FG.ALTS.joker_equivalents)
							currentCard:start_dissolve(nil, false, 0, true)
						end
					end
					return true
				end
			}))
		end
	end
}

SMODS.Joker {
	key = 'flipped_script_alt',
	config = { extra = {} },
	rarity = "fg_uncommon_alt",
	atlas = 'newjokers',
	
	pos = { x = 6, y = 0 },
	cost = 4,
	eternal_compat = false,
	perishable_compat = false,
	
	calculate = function(self, card, context)
		if context.selling_self then
			G.E_MANAGER:add_event(Event({
				func = function()
					for i in ipairs(G.jokers.cards) do
						local currentCard = G.jokers.cards[i]
						if not FG.FUNCS.is_alternate(currentCard.config.center_key, FG.ALTS.joker_equivalents) then
							FG.FUNCS.alternate_card(currentCard,FG.ALTS.joker_equivalents)
							currentCard:start_dissolve(nil, false, 0, true)
						end
					end
					return true
				end
			}))
		end
	end
}
-- Script Flipped
SMODS.Joker {
	key = 'script_flipped',
	config = { extra = {} },
	rarity = "fg_rare_alt",
	atlas = 'newjokers',
	pos = { x = 7, y = 0 },
	cost = 8,
	eternal_compat = false,
	perishable_compat = false,
	
	calculate = function(self, card, context)
		if context.selling_self then
			G.E_MANAGER:add_event(Event({
				func = function()
					sendInfoMessage("Should be changing if i did it right", "MyInfoLogger")
					for i in ipairs(G.jokers.cards) do
						local currentCard = G.jokers.cards[i]
						FG.FUNCS.flip_editions(currentCard)
						-- if wanting to add an edition to cards without one just add it as an else to the g.joker.cards[i].edition
					end
					return true
				end
			}))
		end
	end
}]]
----------------
---NEW JOKERS---
----------------
--Concert Ticket
SMODS.Joker {
	key = 'concert',
	config = { 
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_concertalt'
		},
		extra = { item_amount = 15, item_amount2 = 0 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.item_amount, card.ability.extra.item_amount2 } }
	end,
	rarity = "fg_uncommon_alt",
	atlas = 'newjokers',
	pos = { x = 0, y = 0 },
	cost = 6,
	no_pool_flag = 'alternate_spawn',
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.buying_card then
			card.ability.extra.item_amount2 = (card.ability.extra.item_amount2 + context.card.cost)
		end
		if context.open_booster then
			card.ability.extra.item_amount2 = (card.ability.extra.item_amount2 + context.card.cost)
		end
		if context.reroll_shop then
			card.ability.extra.item_amount2 = (card.ability.extra.item_amount2 + (G.GAME.current_round.reroll_cost - 1))
		end
		if G.jokers then
			if card.ability.extra.item_amount2 >= card.ability.extra.item_amount then
				if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
					G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
					G.E_MANAGER:add_event(Event({
						trigger = 'before',
						delay = 0.0,
						func = (function()
							local card = create_card('aberration', G.consumeables, nil, nil, nil, nil, nil, '8ba')
							card:add_to_deck()
							G.consumeables:emplace(card)
							G.GAME.consumeable_buffer = 0
							return true
						end)
					}))
					card_eval_status_text(card, 'extra', nil, nil, nil,
						{ message = localize('k_plus_aberration'), colour = G.C.PURPLE })
				end
				card.ability.extra.item_amount2 = card.ability.extra.item_amount2 - card.ability.extra.item_amount
			end
		end
	end
}
-- Mango
SMODS.Joker {
	key = 'mango',
	rarity = 2,
	atlas = 'newjokers',
	pos = { x = 8, y = 0 },
	cost = 1,
	config = {
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_mangoalt'
		},
		extra = { mult = 15, lessmult = 2.5 } },
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.lessmult } }
	end,
	calculate = function(self, card, context)
		if context.using_consumeable then
			if context.consumeable.ability.set == 'abberation' then
				card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.lessmult
				G.E_MANAGER:add_event(Event({
					func = function()
						card:juice_up(0.5, 0.5)
						return true
					end
				}))
			if card.ability.extra.mult <= -1 then
				card:start_dissolve(nil, true, 1, true)
				return {
						message = 'Eated!',
						colour = G.C.MULT
					}
				end
			end
		end
		if context.joker_main then 
			return {
				mult_mod = card.ability.extra.mult,
				message = '+' .. card.ability.extra.mult,
				colour = G.C.MULT
			}
		end
	end
}
--Disc Joker
SMODS.Joker {
	key = 'disc',
	config = { 
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_discalt'
		},
		extra = { chips = 25 } },
	rarity = 2,
	atlas = 'newjokers',
	pos = { x = 2, y = 0 }, -- read above
	cost = 5,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips } }
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.other_joker then
			if (context.other_joker.config.center.rarity == 1 or context.other_joker.config.center.rarity == 2 or context.other_joker.config.center.rarity == 3 or context.other_joker.config.center.rarity == 4 or context.other_joker.config.center.rarity == "fg_collective") then
				G.E_MANAGER:add_event(Event({
					func = function()
						context.other_joker:juice_up(0.5, 0.5)
						return true
					end
				}))
				return {
					chip_mod = card.ability.extra.chips,
					message = '+' .. card.ability.extra.chips,
					colour = G.C.CHIPS
				}
			end
		end
	end
}
-- Oscillator
SMODS.Joker{
	key = "oscillator",
	atlas = "oscillator_atlas",
	pos = { x = 0, y = 1},
	rarity = 1,
	cost = 3,
	config = {
		fg_data = {
			is_alternate = false,
			alternate_card = "j_fg_oscillator_alt",
			vars = {
				chips = 50,
				y_frame = 1,
			}
		},
		extra = {
			increase = 25,
			decrease = 25,
			frame = 0,
			delay = .5,
		}
	},
	add_to_deck = function (self, card, from_debuff)
		local c = pseudorandom('mila',1,100)
		if c >= 1 and c <= 33 then card.ability.fg_data.vars.y_frame = 1
		elseif c >= 34 and c <= 66 then card.ability.fg_data.vars.y_frame = 2
		elseif c >= 67 and c <= 99 then card.ability.fg_data.vars.y_frame = 3
		else card.ability.fg_data.vars.y_frame = 0 end
	end,
	update = function (self, card, dt)
		if not card.ability and not card.ability.extra then return end
		card.ability.extra.delay = card.ability.extra.delay - dt
		if card.ability.extra.delay <= 0 then -- Runs once the frame needs updating
			if card.ability.extra.frame >= 3 then card.ability.extra.frame = 0 end
			card.ability.extra.frame = card.ability.extra.frame + 1
			card.children.center:set_sprite_pos({x = card.ability.extra.frame or 0, y = card.ability.fg_data.vars.y_frame or 1})
			card.ability.extra.delay = .5
		end
	end,
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.fg_data.vars.chips,
				card.ability.extra.increase,
				card.ability.extra.decrease
			}
		}
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.setting_blind then
			card.ability.fg_data.vars.chips = card.ability.fg_data.vars.chips + card.ability.extra.increase
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.increase,
				mode = "literal",
				colour = "chips"
			}
		end
		if context.end_of_round and context.cardarea == G.jokers then
			if card.ability.fg_data.vars.chips > 0 then
					FG.FUNCS.card_eval_status_text{
					card = card,
					message = "-"..card.ability.extra.decrease,
					mode = "literal",
					colour = "chips"
				}
			end
			card.ability.fg_data.vars.chips = card.ability.fg_data.vars.chips - card.ability.extra.decrease
			if card.ability.fg_data.vars.chips <= 0 then card.ability.fg_data.vars.chips = 0 end
		end
		if context.joker_main and card.ability.fg_data.vars.chips > 0 then return {chips = card.ability.fg_data.vars.chips} end
	end
}
-- Delinquent
SMODS.Joker {
	key = 'delinquent',
	rarity = 2,
	atlas = 'newjokers',
	config = {
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_delinquentalt'
		},
	},
	pos = { x = 1, y = 0 },
	cost = 7,
	no_pool_flag = 'alternate_spawn',
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.skip_blind then
			for i = 1, #G.consumeables.cards do
				G.consumeables.cards[i]:start_dissolve(nil, true, 1, true)
				G.E_MANAGER:add_event(Event({
					trigger = 'before',
					delay = 0.0,
					func = (function()
						local card = create_card('aberration', G.consumeables, nil, nil, nil, nil, nil, '8ba')
						card:add_to_deck()
						G.consumeables:emplace(card)
						G.GAME.consumeable_buffer = 0
						return true
					end)
				}))
			end
			if #G.consumeables.cards > 0 then
				card_eval_status_text(card, 'extra', nil, nil, nil,
					{ message = localize('k_replaced'), colour = G.C.PURPLE })
			end
		end
	end
}

--Orchestral Joker
SMODS.Joker {
	key = 'orchestral',
	config = { 
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_orchestralalt'
		},
		extra = { mult = 10 } },
	rarity = "fg_common_alt",
	atlas = 'newjokers',
	pos = { x = 3, y = 0 }, -- read above
	cost = 5,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.other_joker then
			if (context.other_joker.config.center.yes_pool_flag == "alternate") then
				G.E_MANAGER:add_event(Event({
					func = function()
						context.other_joker:juice_up(0.5, 0.5)
						return true
					end
				}))
				return {
					mult_mod = card.ability.extra.mult,
					message = '+' .. card.ability.extra.mult,
					colour = G.C.MULT
				}
			end
		end
	end
}
--Orchestral alt
SMODS.Joker {
	key = 'orchestralalt',
	config = { 
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_orchestral'
		},
		extra = { mult = 5 } },
	rarity = "fg_common_alt",
	atlas = 'newjokers',
	pos = { x = 3, y = 0 }, -- read above
	cost = 5,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult } }
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
				if G.P_CENTERS[FG.FUNCS.get_card_info(context.other_card).key].original_mod then
					if G.P_CENTERS[FG.FUNCS.get_card_info(context.other_card).key].original_mod.id == "foolsGambit" then
					    return {mult = card.ability.extra.mult}
					end
				end
		end
	end
}

-- Kevin
SMODS.Joker {
	key = 'kevin',
	rarity = 4,
	atlas = 'newjokers',
	pos = { x = 9, y = 0 },
	soul_pos = { x = 9, y = 1 },
	cost = 20,
	config = {
		fg_data = {
			--[[is_alternate = false,
			alternate_card = 'j_fg_kevinalt']]
			alternate_card = 'j_fg_kevin'
		},
		extra = { mult = 10, lessmult = 0.25 } },
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.lessmult } }
	end,
	calculate = function(self, card, context)
		local extra = card.ability.extra
		if context.before then
			extra.mult = extra.mult - extra.lessmult
			if extra.mult <= 1 then
				card:start_dissolve(nil, true, 1, true)
			end
			return {message = localize("k_minus").." "..extra.lessmult}
		end
		if context.joker_main then
			return {xmult = extra.mult}
		end
	end
}

-- Conductor alt
SMODS.Joker {
	key = 'conductoralt',
	rarity = "fg_uncommon_alt",
	atlas = 'newjokers',
	pos = { x = 4, y = 0 }, -- read above
	cost = 5,
	
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_conductor'
		},
		extra = { amount = 2 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.amount } }
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.using_consumeable then
			if context.consumeable.ability.set == 'aberration' then
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 0.7,
					func = function()
						local cards = {}
						for i = 1, card.ability.extra.amount do
							cards[i] = true
							local _suit, _rank = nil, nil
							_rank = pseudorandom_element({ 'J', 'Q', 'K' }, pseudoseed('familiar_create'))
							_suit = pseudorandom_element({ 'S', 'H', 'D', 'C' }, pseudoseed('familiar_create'))
							_suit = _suit or 'S'; _rank = _rank or 'A'
							create_playing_card({ front = G.P_CARDS[_suit .. '_' .. _rank], center = base }, G.deck,
								true, i ~= 1, { G.C.BLUE })
							card_eval_status_text(card, 'extra', nil, nil, nil,
								{ message = localize('k_card_added'), colour = G.C.BLUE })
						end
						return true
					end
				}))
			end
		end
	end
}
--Conductor
SMODS.Joker {
	key = 'conductor',
	rarity = 2,
	atlas = 'newjokers',
	pos = { x = 4, y = 0 }, -- read above
	cost = 5,
	config = { 
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_conductoralt'
		},
		extra = { amount = 1 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.amount } }
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			local nofaces = false
			for i = 1, #context.scoring_hand do
				if not context.scoring_hand[i]:is_face() then
					nofaces = true
				end
			end
			if not nofaces then
				if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
					for i = 1, card.ability.extra.amount do
						G.E_MANAGER:add_event(Event({
							trigger = 'before',
							delay = 0.0,
							func = (function()
								local card = create_card('aberration', G.consumeables, nil, nil, nil, nil, nil, '8ba')
								card:add_to_deck()
								G.consumeables:emplace(card)
								G.GAME.consumeable_buffer = 0
								return true
							end)
						}))
						card_eval_status_text(card, 'extra', nil, nil, nil,
							{ message = localize('k_plus_aberration'), colour = G.C.PURPLE })
					end
				end
			end
		end
	end
}

-- Concert ticket alt
SMODS.Joker {
	key = 'concertalt',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_concert'
		},
	},
	rarity = "fg_uncommon_alt",
	atlas = 'newjokers',
	pos = { x = 0, y = 0 },
	cost = 6,
	
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if G.jokers then
			if context.buying_card then
				if context.card.ability.set == 'Voucher' then
					if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
						G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
						G.E_MANAGER:add_event(Event({
							trigger = 'before',
							delay = 0.0,
							func = (function()
								local card = create_card('aberration', G.consumeables, nil, nil, nil, nil, nil, '8ba')
								card:add_to_deck()
								G.consumeables:emplace(card)
								G.GAME.consumeable_buffer = 0
								return true
							end)
						}))
						card_eval_status_text(card, 'extra', nil, nil, nil,
							{ message = localize('k_plus_aberration'), colour = G.C.PURPLE })
					end
				end
			end
		end
	end
}
-- Mango alt
SMODS.Joker {
	key = 'mangoalt',
	rarity = "fg_common_alt",
	atlas = 'newjokers',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_mango'
		},
	},
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	pos = { x = 8, y = 0 },
	cost = 1,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_fg_mango",
			vars = {}
		},
		extra = {
			mult = 15,
			lessmult = 5
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.lessmult } }
	end,
	calculate = function(self, card, context)
		if context.buying_card then
			if card.ability.set == 'Joker' then
				card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.lessmult
				G.E_MANAGER:add_event(Event({
					func = function()
						card:juice_up(0.5, 0.5)
						return true
					end
				}))
				if card.ability.extra.mult <= -1 then
					card:start_dissolve(nil, true, 1, true)
					return {
						message = 'Eated!',
						colour = G.C.MULT
					}
				end
			end
		end
		if context.joker_main then
			return {
				mult_mod = card.ability.extra.mult,
				message = '+' .. card.ability.extra.mult,
				colour = G.C.MULT
			}
		end
	end
}
-- Disk alt
SMODS.Joker {
	key = 'discalt',
	config = { 
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_disc'
		},
		extra = { chips = 10 } },
	rarity = 2,
	atlas = 'newjokers',
	pos = { x = 2, y = 0 }, -- read above
	cost = 5,
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips } }
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if not G.P_CENTERS[FG.FUNCS.get_card_info(context.other_card).key].original_mod then
				return {chips = card.ability.extra.chips}
			end
		end
	end
}
-- Oscillator alt
SMODS.Joker{
	key = "oscillator_alt",
	atlas = "oscillator_atlas",
	pos = { x = 0, y = 1},
	rarity = "fg_common_alt",
	cost = 3,
	
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_fg_oscillator",
			vars = {
				chips = 50,
				y_frame = 1,
			}
		},
		extra = {
			increase = 25,
			decrease = 25,
			frame = 0,
			delay = .5,
		}
	},
	add_to_deck = function (self, card, from_debuff)
		local c = pseudorandom('mila',1,100)
		if c >= 1 and c <= 33 then card.ability.fg_data.vars.y_frame = 1
		elseif c >= 34 and c <= 66 then card.ability.fg_data.vars.y_frame = 2
		elseif c >= 67 and c <= 99 then card.ability.fg_data.vars.y_frame = 3
		else card.ability.fg_data.vars.y_frame = 0 end
	end,
	update = function (self, card, dt)
		if not card.ability and not card.ability.extra then return end
		card.ability.extra.delay = card.ability.extra.delay - dt
		if card.ability.extra.delay <= 0 then -- Runs once the frame needs updating
			if card.ability.extra.frame >= 3 then card.ability.extra.frame = 0 end
			card.ability.extra.frame = card.ability.extra.frame + 1
			card.children.center:set_sprite_pos({x = card.ability.extra.frame or 0, y = card.ability.fg_data.vars.y_frame or 1})
			card.ability.extra.delay = .5
		end
	end,
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.fg_data.vars.chips,
				card.ability.extra.increase,
				card.ability.extra.decrease
			}
		}
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function (self, card, context)
		if context.setting_blind then
			if card.ability.fg_data.vars.chips > 0 then
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "-"..card.ability.extra.decrease,
					mode = "literal",
					colour = "chips"
				}				
			end
			card.ability.fg_data.vars.chips = card.ability.fg_data.vars.chips - card.ability.extra.decrease
			if card.ability.fg_data.vars.chips <= 0 then card.ability.fg_data.vars.chips = 0 end
		end
		if context.end_of_round and context.cardarea == G.jokers then
			card.ability.fg_data.vars.chips = card.ability.fg_data.vars.chips + card.ability.extra.increase
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.increase,
				mode = "literal",
				colour = "chips"
			}
		end
		if context.joker_main and card.ability.fg_data.vars.chips > 0 then return {chips = card.ability.fg_data.vars.chips} end
	end
}
-- Delinquent alt
SMODS.Joker {
	key = 'delinquentalt',
	rarity = "fg_uncommon_alt",
	atlas = 'newjokers',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_delinquent'
		},
	},
	pos = { x = 1, y = 0 },
	cost = 8,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.end_of_round and context.individual then
			if #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
				for i = 1, G.consumeables.config.card_limit - #G.consumeables.cards + G.GAME.consumeable_buffer do
					G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
					G.E_MANAGER:add_event(Event({
						trigger = 'before',
						delay = 0.0,
						func = (function()
							local card = create_card('aberration', G.consumeables, nil, nil, nil, nil, nil, '8ba')
							card:add_to_deck()
							G.consumeables:emplace(card)
							G.GAME.consumeable_buffer = 0
							return true
						end)
					}))
				end
				card_eval_status_text(card, 'extra', nil, nil, nil,
					{ message = localize('k_replenished'), colour = G.C.PURPLE })
			end
		end
	end
}

-- Equalizer
-- entropy eq hook shoutout to ruby
-- the code is unique though
--[[local scie = SMODS.calculate_individual_effect
function SMODS.calculate_individual_effect(effect, scored_card, key, amount, from_edition)
    local ret
    ret = scie(effect, scored_card, key, amount, from_edition)
    if ret then
        return ret
    end
    if (key == 'eq_mult' or key == 'Eqmult_mod') then 
        mult = mod_mult(amount)
        update_hand_text({delay = 0}, {mult = mult})
		card_eval_status_text(effect.message_card or effect.juice_card or scored_card or effect.card or effect.focus, 'extra', nil, percent, nil, {message = "= "..amount, colour = G.C.MULT})
        return true
    end
    if (key == 'eq_chips' or key == 'Eqchips_mod') then 
        hand_chips = mod_chips(amount)
        update_hand_text({delay = 0}, {chips = hand_chips})
		card_eval_status_text(effect.message_card or effect.juice_card or scored_card or effect.card or effect.focus, 'extra', nil, percent, nil, {message = "= "..amount, colour = G.C.CHIPS})
        return true
    end
    if (key == 'multequalchips') then 
        mult = mod_mult(hand_chips * amount)
        update_hand_text({delay = 0}, {mult = mult})
		card_eval_status_text(effect.message_card or effect.juice_card or scored_card or effect.card or effect.focus, 'extra', nil, percent, nil, {message = "= "..(100 * amount).."% Chips", colour = G.C.CHIPS})
        return true
    end
    if (key == 'chipsequalmult') then 
        hand_chips = mod_chips(mult * amount)
        update_hand_text({delay = 0}, {chips = hand_chips})
		card_eval_status_text(effect.message_card or effect.juice_card or scored_card or effect.card or effect.focus, 'extra', nil, percent, nil, {message = "= "..(100 * amount).."% Mult", colour = G.C.MULT})
        return true
    end
end
for _, v in ipairs({'eq_mult', 'Eqmult_mod', 'eq_chips', 'Eqchips_mod', 'chipsequalmult', 'multequalchips'}) do
    table.insert(SMODS.scoring_parameter_keys or SMODS.calculation_keys or {}, v)
end

SMODS.Joker {
	key = 'equalizer',
	rarity = 2,
	atlas = 'newjokers',
	pos = { x = 0, y = 1 },
	cost = 1,
	config = {
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_equalizeralt'
		},
		extra = { mult = 20, addmult = 4, odds = 4} },
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	loc_vars = function(self, info_queue, card)
		return { vars = { 
			card.ability.extra.mult, 
			card.ability.extra.addmult, 
			G.GAME.probabilities.normal or 1,
			card.ability.extra.odds
		} }
	end,
	calculate = function(self, card, context)
		local extra = card.ability.extra
		if context.joker_main then
			return {Eqmult_mod = extra.mult}
		end
	end
}
-- Equalizer alt
SMODS.Joker {
	key = 'equalizeralt',
	rarity = "fg_uncommon_alt",
	atlas = 'newjokers',
	pos = { x = 0, y = 1 },
	cost = 1,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_equalizer'
		},
		extra = 1/5
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { 
			(100 * card.ability.extra).."%"
		} }
	end,
	in_pool = function (self, args)
		if FG.config.extra_jokers and FG.FUNCS.allow_duplicate(self) and not G.GAME.pool_flags.alternate_spawn then return true else return false end
	end,
	calculate = function(self, card, context)
		if context.joker_main then
			return {chipsequalmult = card.ability.extra}
		end
	end
}
]]
---------------------
---STANDARD JOKERS---
---------------------
--1st page
-- Joker
SMODS.Joker {
	key = 'joker',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 0, y = 0 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_joker",
		},
		extra = { mult = 1 } 
	},
	loc_vars = function(self, info_queue, card)
		--info_queue[#info_queue + 1] = G.P_CENTERS['j_joker']
		return { vars = { card.ability.extra.mult } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			return {
				mult_mod = card.ability.extra.mult,
				message = "+" .. card.ability.extra.mult .. " Mult",
				colour = G.C.MULT
			}
		end
	end
}
-- Greedy
SMODS.Joker {
	key = 'greedy_joker',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 6, y = 1 },
	rarity = "fg_common_alt",
	cost = 0,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_greedy_joker",
		},
		extra = {
			mult_gain = 1,
			currentMult = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.currentMult } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.individual then
			local playingCard = context.other_card
			if playingCard:is_suit('Diamonds') then
				card.ability.extra.currentMult = card.ability.extra.currentMult + card.ability.extra.mult_gain
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main and card.ability.extra.currentMult > 0 then
			return {
				mult = card.ability.extra.currentMult
			}
		end
		if context.end_of_round and G.GAME.blind.boss and context.cardarea ~= G.hand then
			card.ability.extra.currentMult = 0
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Reset!" })
		end
	end
}
-- Lusty
SMODS.Joker {
	key = 'lusty_joker',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 7, y = 1 },
	rarity = "fg_common_alt",
	cost = 0,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_lusty_joker"
		},
		extra = {
			mult_gain = 1,
		currentMult = 0
	}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.currentMult } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.individual then
			local playingCard = context.other_card
			if playingCard:is_suit('Hearts') then
				card.ability.extra.currentMult = card.ability.extra.currentMult + card.ability.extra.mult_gain
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main and card.ability.extra.currentMult > 0 then
			return {
				mult = card.ability.extra.currentMult
			}
		end
		if context.end_of_round and G.GAME.blind.boss and context.cardarea ~= G.hand then
			card.ability.extra.currentMult = 0
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Reset!" })
		end
	end
}
-- Wrathful
SMODS.Joker {
	key = 'wrathful_joker',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 8, y = 1 },
	rarity = "fg_common_alt",
	cost = 0,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_wrathful_joker"
		},
		extra = {
			mult_gain = 1,
			currentMult = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.currentMult } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.individual then
			local playingCard = context.other_card
			if playingCard:is_suit('Spades') then
				card.ability.extra.currentMult = card.ability.extra.currentMult + card.ability.extra.mult_gain
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main and card.ability.extra.currentMult > 0 then
			return {
				mult = card.ability.extra.currentMult
			}
		end
		if context.end_of_round and G.GAME.blind.boss and context.cardarea ~= G.hand then
			card.ability.extra.currentMult = 0
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Reset!" })
		end
	end
}
-- Gluttonous
SMODS.Joker {
	key = 'gluttenous_joker',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 9, y = 1 },
	rarity = "fg_common_alt",
	cost = 0,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_gluttenous_joker"
		},
		extra = {
			mult_gain = 1,
			currentMult = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult_gain, card.ability.extra.currentMult } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.individual then
			local playingCard = context.other_card
			if playingCard:is_suit('Clubs') then
				card.ability.extra.currentMult = card.ability.extra.currentMult + card.ability.extra.mult_gain
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main and card.ability.extra.currentMult > 0 then
			return {
				mult = card.ability.extra.currentMult
			}
		end
		if context.end_of_round and G.GAME.blind.boss and context.cardarea ~= G.hand then
			card.ability.extra.currentMult = 0
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Reset!" })
		end
	end
}
-- Jolly
SMODS.Joker {
	key = 'jolly',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 2, y = 0 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_jolly"
		},
		t_mult = 4,
		type = 'Pair',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_mult, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Zany
SMODS.Joker {
	key = 'zany',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 3, y = 0 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_zany"
		},
		t_mult = 6,
		type = 'Three of a Kind',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_mult, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Mad
SMODS.Joker {
	key = 'mad',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 4, y = 0 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_mad"
		},
		t_mult = 5,
		type = 'Two Pair',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_mult, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Crazy
SMODS.Joker {
	key = 'crazy',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 5, y = 0 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_crazy"
		},
		t_mult = 6,
		type = 'Straight',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_mult, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Droll
SMODS.Joker {
	key = 'droll',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 6, y = 0 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_droll"
		},
		t_mult = 5,
		type = 'Flush',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_mult, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Sly
SMODS.Joker {
	key = 'sly',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 0, y = 14 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_sly"
		},
		t_chips = 25,
		type = 'Pair',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_chips, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Wily
SMODS.Joker {
	key = 'wily',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 1, y = 14 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_wily"
		},
		t_chips = 50,
		type = 'Three of a Kind',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_chips, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Clever
SMODS.Joker {
	key = 'clever',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 2, y = 14 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_clever"
		},
		t_chips = 40,
		type = 'Two Pair',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_chips, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Devious
SMODS.Joker {
	key = 'devious',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 3, y = 14 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_devious"
		},
		t_chips = 50,
		type = 'Straight',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_chips, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Crafty
SMODS.Joker {
	key = 'crafty',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 4, y = 14 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_crafty"
		},
		t_chips = 40,
		type = 'Flush',
		extra = {
			repetitions = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.t_chips, localize(card.ability.type, 'poker_hands'), card.ability.extra.repetitions } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.repetition and context.cardarea == G.play then
			if (next(context.poker_hands[card.ability.type])) then
				return {
					message = localize('k_again_ex'),
					repetitions = card.ability.extra.repetitions,
					card = card
				}
			end
		end
	end
}
-- Half
-- Stencil
-- Four fingers
-- Mime
-- Credit card
-- Dagger
SMODS.Joker {
	key = 'ceremonial',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 5, y = 5 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_ceremonial"
		},
		extra = {
			chips = 0,
			mult = 4
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.mult } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.setting_blind and not self.getting_sliced then
			local my_pos = nil
			for i = 1, #G.jokers.cards do
				if G.jokers.cards[i] == card then
					my_pos = i; break
				end
			end
			if my_pos and G.jokers.cards[my_pos - 1] and not self.getting_sliced and not G.jokers.cards[my_pos - 1].ability.eternal and not G.jokers.cards[my_pos - 1].getting_sliced then
				local sliced_card = G.jokers.cards[my_pos - 1]
				sliced_card.getting_sliced = true
				G.GAME.joker_buffer = G.GAME.joker_buffer - 1
				G.E_MANAGER:add_event(Event({
					func = function()
						G.GAME.joker_buffer = 0
						card.ability.extra.chips = card.ability.extra.chips +
							sliced_card.sell_cost * card.ability.extra.mult
						card:juice_up(0.8, 0.8)
						sliced_card:start_dissolve({ HEX("57ecab") }, nil, 1.6)
						play_sound('slice1', 0.96 + math.random() * 0.08)
						return true
					end
				}))
				card_eval_status_text(card, 'extra', nil, nil, nil,
					{
						message = localize { type = 'variable', key = 'a_chips', vars = { card.ability.extra.chips + card.ability.extra.mult * sliced_card.sell_cost } },
						colour =
							G.C.CHIPS,
						no_juice = true
					})
			end
		end
		if context.joker_main and card.ability.extra.chips > 0 then
			return {
				chip_mod = card.ability.extra.chips,
				colour = G.C.CHIPS,
				message = '+' .. card.ability.extra.chips
			}
		end
	end
}
-- Banner
SMODS.Joker {
	key = 'banner',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 1, y = 2 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_banner"
		},
		extra = {
			chips = 20,
			discards = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.chips, card.ability.extra.discards } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.setting_blind then
			G.E_MANAGER:add_event(Event({
				func = function()
					ease_discard(card.ability.extra.discards)
					return true
				end
			}))
		end
		if context.joker_main and G.GAME.current_round.discards_left > 0 then
			return {
				chips = G.GAME.current_round.discards_left * card.ability.extra.chips,
				colour = G.C.CHIPS
			}
		end
	end
}
-- Summit
SMODS.Joker {
	key = 'mystic_summit',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 2, y = 2 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_mystic_summit"
		},
		extra = {
			mult = 30,
			discards = 1,
			discards2 = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.mult, card.ability.extra.discards, card.ability.extra.discards2 } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.setting_blind then
			G.E_MANAGER:add_event(Event({
				func = function()
					ease_discard(-card.ability.extra.discards)
					return true
				end
			}))
		end
		if context.joker_main and G.GAME.current_round.discards_left == card.ability.extra.discards2 then
			return {
				mult_mod = card.ability.extra.mult,
				colour = G.C.MULT,
				message = "+" .. card.ability.extra.mult
			}
		end
	end
}
-- Marble
SMODS.Joker {
	key = 'marble',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 3, y = 2 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_marble"
		},
		extra = {
			replace = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = G.P_CENTERS.m_fg_stone
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.end_of_round and context.cardarea == G.jokers then
			G.E_MANAGER:add_event(Event{
				func = function ()
					local chosen_card = pseudorandom("mila",1,#G.hand.cards)
					G.hand.cards[chosen_card]:set_ability("m_fg_stone")
					return true
				end
			})
			G.E_MANAGER:add_event(Event{
				trigger = 'after',
				delay = 1,
				func = function () return true end
			})
		end
	end
}
-- Loyalty
SMODS.Joker {
	key = 'loyalty_card',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 4, y = 2 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_loyalty_card"
		},
		loyalty_remaining = 10,
		extra = {
			item_amount = 10
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.item_amount, localize { type = 'variable', key = (card.ability.loyalty_remaining == 0 and 'loyalty_active' or 'loyalty_inactive'), vars = { card.ability.loyalty_remaining } } } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.buying_card then
			card.ability.loyalty_remaining = ((card.ability.loyalty_remaining - 1) % (card.ability.extra.item_amount + 1))
		end
		if context.open_booster then
			card.ability.loyalty_remaining = ((card.ability.loyalty_remaining - 1) % (card.ability.extra.item_amount + 1))
		end
		if G.jokers then
			if card.ability.loyalty_remaining == 0 then
				local eval = function(card) return (card.ability.loyalty_remaining == 0) end
				juice_card_until(card, eval, true)
				G.E_MANAGER:add_event(Event({
					func = function()
						if G.shop_jokers and G.shop_booster then
							for k, v in pairs(G.shop_jokers.cards) do
								v.ability.couponed = true
								v:set_cost()
							end
							for k, v in pairs(G.shop_booster.cards) do
								v.ability.couponed = true
								v:set_cost()
							end
						end
						return true
					end
				}))
			end
			if card.ability.extra.items_bought == card.ability.extra.item_amount then
				G.E_MANAGER:add_event(Event({
					func = function()
						if G.shop_jokers and G.shop_booster then
							for k, v in pairs(G.shop_jokers.cards) do
								v.ability.couponed = false
								v:set_cost()
							end
							for k, v in pairs(G.shop_booster.cards) do
								v.ability.couponed = false
								v:set_cost()
							end
						end
						return true
					end
				}))
			end
		end
	end
}
-- 8 Ball
SMODS.Joker {
	key = '8_ball',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 0, y = 5 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_8ball"
		},
		extra = {
			max = 8,
			cur = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.max, card.ability.extra.cur } }
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.cardarea == G.play and context.individual and (context.other_card:get_id() == 8) then
			if card.ability.extra.cur == card.ability.extra.max - 1 then
				card.ability.extra.cur = 0
				G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
				return {
					extra = {
						focus = card,
						message = localize('k_plus_tarot'),
						func = function()
							G.E_MANAGER:add_event(Event({
								trigger = 'before',
								delay = 0.0,
								func = (function()
									local card = create_card('Tarot', G.consumeables, nil, nil, nil, nil, nil, '8ba')
									card:add_to_deck()
									G.consumeables:emplace(card)
									G.GAME.consumeable_buffer = 0
									return true
								end)
							}))
						end
					},
					colour = G.C.SECONDARY_SET.Tarot,
					card = card
				}
			else
				card.ability.extra.cur = card.ability.extra.cur + 1
				return {
					extra = {
						message = "+1",
						focus = card
					}
				}
			end
		end
	end
}
-- Missprint
local function generateArrayMisprint(min, max) 
	local mults = {}
	for i = 1, 10 do
		local num = (pseudorandom('misprint', min, max) / 100)
		table.insert(mults, "X"..tostring(num))
	end
	return mults
end
SMODS.Joker {
	key = 'misprint',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 6, y = 2 },
	rarity = "fg_uncommon_alt",
	cost = 6,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_misprint"
		},
		extra = {
			Xmult = 1,
			Xmult_min = 75,
			Xmult_max = 200,
		}
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.Xmult,
				card.ability.extra.Xmult_min,
				card.ability.extra.Xmult_max
			},
			main_end = {
				{n=G.UIT.R, nodes = {
					{n=G.UIT.C, config= {align="bm", padding = 0.02}, nodes={
						{n=G.UIT.C, config={align = "m", colour=G.C.RED, r=0.7, padding=0.05}, nodes={
							{
								n = G.UIT.O,
								config = {
									object = DynaText({
										string = generateArrayMisprint(card.ability.extra.Xmult_min,card.ability.extra.Xmult_max),
										colours = { G.C.WHITE },
										pop_in_rate = 9999999,
										silent = true,
										random_element = true,
										pop_delay = 0.30,
										scale = 0.32,
										min_cycle_time = 0,
									}),
								},
							},
						}}
					}},
					{n=G.UIT.C, config={align = "m", colour=G.C.WHITE, r=0.05, padding=0.05}, nodes={
						{n=G.UIT.T, config={text = "Mult", colour = G.C.UI.TEXT_DARK, scale=0.3}}
					}}
				}},
				
			}
		}
	end,
	
	
	calculate = function(self, card, context)
		if G.jokers then
			card.ability.extra.Xmult = (pseudorandom('misprint', card.ability.extra.Xmult_min, card.ability.extra.Xmult_max) / 100)
		end
		if context.joker_main then
			return {
				mult_mod = card.ability.extra.Xmult,
				message = localize { type = 'variable', key = 'a_xmult', vars = { card.ability.extra.Xmult } }
			}
		end
	end
}
-- Dusk
-- Fist
SMODS.Joker {
    key = 'raised_fist',
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 8, y = 2 },
    rarity = "fg_common_alt",
    cost = 2,
    config = {
		fg_data= {
			is_alternate = true,
			alternate_card = "j_raised_fist"
		},
		extra = {
			mult = 0
		}
	},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.mult } }
    end,
    calculate = function(self, card, context)
        if context.before and not context.blueprint then
            local rank
			for _,v in ipairs(G.hand.cards) do
				if not rank then rank = FG.FUNCS.get_card_info(v).id end
				if rank > FG.FUNCS.get_card_info(v).id then rank = FG.FUNCS.get_card_info(v).id end
				if FG.FUNCS.get_card_info(v).rank == "Ace" then rank = 1 end
			end
			card.ability.extra.mult = card.ability.extra.mult + (rank/2)
    	end
		if context.joker_main then return {mult = card.ability.extra.mult} end
	end
}
-- Chaos
-- Fibonacci
SMODS.Joker {
	key = 'fibonacci',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 1, y = 5 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_fibonacci"
		},
		extra = {
			retriggers = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.retriggers
			}
		}
	end,
	blueprint_compat= true,
	calculate = function(self, card, context)
		local found_card = false
		if context.repetition and context.cardarea == G.play and
		(context.other_card:get_id() == 14 or -- ACE
		context.other_card:get_id() == 2 or
		context.other_card:get_id() == 3 or
		context.other_card:get_id() == 5 or
		context.other_card:get_id() == 8 or
		context.other_card:get_id() == 13) then
			found_card = true
			return {
				repetitions = 1,
				card = card
			}
		end
		if context.after then
			local sound_pitch = 0.8
			for k, v in ipairs(context.scoring_hand) do
				if v.base.value == "Ace" or
				v.base.value == "2" or
				v.base.value == "3" or
				v.base.value == "5" or
				v.base.value == "8" or
				v.base.value == "King" then
					G.E_MANAGER:add_event(Event({
						func = function()	
							v:flip()
							play_sound("tarot2", sound_pitch)
							sound_pitch = sound_pitch + 0.1
							return true
						end
					}))
				end
				if v.base.value == "Ace" then
					G.E_MANAGER:add_event(Event({
					trigger = 'after', delay = .25, func = function()
						local card,msg = SMODS.change_base(v, v.base.suit, "2")
						return true
					end
					}))
				elseif v.base.value == "2" then
					G.E_MANAGER:add_event(Event({
					trigger = 'after', delay = .25, func = function()
						local card,msg = SMODS.change_base(v, v.base.suit, "3")
						return true
					end
					}))
				elseif v.base.value == "3" then
					G.E_MANAGER:add_event(Event({
					trigger = 'after', delay = .25, func = function()
						local card,msg = SMODS.change_base(v, v.base.suit, "5")
						return true
					end
					}))
				elseif v.base.value == "5" then
					G.E_MANAGER:add_event(Event({
					trigger = 'after', delay = .25, func = function()
						local card,msg = SMODS.change_base(v, v.base.suit, "8")
						return true
					end
					}))
				elseif v.base.value == "8" then
					G.E_MANAGER:add_event(Event({
					trigger = 'after', delay = .25, func = function()
						local card,msg = SMODS.change_base(v, v.base.suit, "King")
						return true
					end
					}))
				elseif v.base.value == "King" then
					G.E_MANAGER:add_event(Event({
					trigger = 'after', delay = .25, func = function()
						local card,msg = SMODS.change_base(v, v.base.suit, "Ace")
						return true
					end
					}))
				end
			end
			
			for _, v in ipairs(context.scoring_hand) do
				if v.base.value == "Ace" or
				v.base.value == "2" or
				v.base.value == "3" or
				v.base.value == "5" or
				v.base.value == "8" or
				v.base.value == "King" then
					found_card = true
					G.E_MANAGER:add_event(Event({
						trigger = 'after',
						delay = 0.25,
						func = function()
							v:flip()
							play_sound("tarot2", sound_pitch)
							sound_pitch = sound_pitch + 0.1
							return true
						end
					}))
				end
			end
			if found_card then
				G.E_MANAGER:add_event(Event({
					trigger = 'after',
					delay = 2,
					func = function() return true end
				}))
			end
		end
	end
}
-- Steel
-- Scary face
SMODS.Joker {
	key = 'scary_face',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 2, y = 3 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_scary_face"
		},
		extra = {
			chips = 0,
			chip_gain = 5
		}
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.chips,
				card.ability.extra.chip_gain
			}
		}
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play and context.other_card:is_face() then
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Upgrade!" })

		end
		if context.joker_main and card.ability.extra.chips > 0 then
			return {
				chip_mod = card.ability.extra.chips,
				message = '+' .. card.ability.extra.chips
			}
		end
	end
}
-- Abstract
SMODS.Joker {
	key = 'abstract',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 3, y = 3 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_abstract"
		},
		extra = {
			mult_gain = 4,
			mult = 0,
			sold = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.mult_gain,
				card.ability.extra.mult
			}
		}
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.selling_card and not context.repetition and not context.blueprint then
			if not string.find(FG.FUNCS.get_card_info(context.card).key,"j_") then return end
			card.ability.extra.sold = card.ability.extra.sold + 1
			card.ability.extra.mult = card.ability.extra.mult_gain * card.ability.extra.sold
			return {
				message = "+"..card.ability.extra.mult_gain.." Mult"
			}
		end
		if context.joker_main then
			return {
				mult = card.ability.extra.mult
			}
		end
	end
}
-- Delayed grat
SMODS.Joker {
	key = 'delayed_grat',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 4, y = 3 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_delayed_grat"
		},
		extra = {
		}
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.mult_gain,
				card.ability.extra.mult
			}
		}
	end,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.end_of_round and G.GAME.current_round.discards == 1 then return {dollars = 5} end
	end
}
-- Hack
-- Pareidolia
-- Gros Michael
SMODS.Joker{
	key = "gros_michel",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 7, y = 6},
	rarity = "fg_common_alt",
	cost = 4,
	
	no_pool_flag = "fg_gros_michel_extinct",
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_gros_michel"
		},
		extra = {
			xmult = 1.5,
			max_chance = 6
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.xmult,
				G.GAME.probabilities.normal or 1,
				card.ability.extra.max_chance
			}
		}
	end,
	blueprint_compat = true,
	
	calculate = function (self, card, context)
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
		if context.end_of_round and context.cardarea == G.jokers then
			if FG.FUNCS.random_chance(card.ability.extra.max_chance, card) then
			play_sound("tarot2",1.5,1)
			card:start_dissolve()
			G.GAME.pool_flags.fg_gros_michel_extinct = true
			return {
				message = "Extint?!"
			}
			end
			return {
				message = "Safe!?"
			}
		end
	end
}
-- Even Steven
SMODS.Joker{
	key = "even_steven",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 8, y = 3},
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_even_steven"
		},
		extra = {
			mult_i = 2, -- Mult increase
			mult_t = 0  -- Mult total
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.mult_i,
				card.ability.extra.mult_t
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.individual and context.cardarea == G.play then
			local id = FG.FUNCS.get_card_info(context.other_card).id
			local value = FG.FUNCS.get_card_info(context.other_card).rank
			if (id == 2 or id == 4 or id == 6 or id == 8) then
				card.ability.extra.mult_t = card.ability.extra.mult_t + card.ability.extra.mult_i
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main then return {mult = card.ability.extra.mult_t} end
	end
}
-- Odd Todd
SMODS.Joker{
	key = "odd_todd",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 9, y = 3},
	rarity = "fg_common_alt",
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_odd_todd"
		},
		extra = {
			chips_i = 8, -- Chips increase
			chips_t = 0  -- Chips total
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.chips_i,
				card.ability.extra.chips_t
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.individual and context.cardarea == G.play then
			local id = FG.FUNCS.get_card_info(context.other_card).id
			local value = FG.FUNCS.get_card_info(context.other_card).rank
			if (id == 14 or id == 3 or id == 5 or id == 7 or id == 9) then
				card.ability.extra.chips_t = card.ability.extra.chips_t + card.ability.extra.chips_i
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main then return {chips = card.ability.extra.chips_t} end
	end
}
-- Scholar
SMODS.Joker{
	key = "scholar",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 3, y = 6},
	rarity = "fg_uncommon_alt",
	cost = 4,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_scholar"
		},
		extra = {
			xmult = 3,
			amount = 4,
			card = "Ace"
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.xmult,
				card.ability.extra.amount,
				card.ability.extra.card
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.joker_main then
			local count = 0
			for _,v in ipairs(G.play.cards) do
				if FG.FUNCS.get_card_info(v).rank == card.ability.extra.card then
					count = count + 1
				end
			end
			if count >= card.ability.extra.amount then return {xmult = card.ability.extra.xmult} end
		end
	end
}
-- Business Card
SMODS.Joker {
	key = "business",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 1, y = 4},
	rarity = "fg_uncommon_alt",
	cost = 4,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_business"
		},
		extra = {
			max_chance = 4
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				G.GAME.probabilities.normal or 1,
				card.ability.extra.max_chance
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.after then
			for _,v in ipairs(context.scoring_hand) do
				if FG.FUNCS.get_card_info(v).is_face and FG.FUNCS.random_chance(card.ability.extra.max_chance, card) and FG.FUNCS.get_card_info(v).key == "c_base" then
					G.E_MANAGER:add_event(Event({
						trigger = "after",
						delay = 0.2,
						func = function()
							v:set_ability(SMODS.poll_enhancement{guaranteed = true})
							v:juice_up()
							return true
						end
					}))
					FG.FUNCS.card_eval_status_text{
						card = card,
						message = "Enhanced!",
						mode = "literal"
					}
				end
			end
		end
	end
}
-- Supernova TBA
-- Ride the bus
SMODS.Joker{
	key = "ride_the_bus",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 1, y = 6},
	rarity = "fg_common_alt",
	cost = 3,

	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_ride_the_bus"
		},
		extra = {
			mult = 25,
			mult_d = 1,
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.mult_d,
				card.ability.extra.mult
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.before and not context.blueprint then
			
			local face = 0
			for _,v in ipairs(G.play.cards) do
				if FG.FUNCS.get_card_info(v).is_face then
					card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.mult_d
					face = face + 1
				end
			end
			if face > 0 then FG.FUNCS.card_eval_status_text{card = card, message = "-"..face.." Mult!", mode = "literal", colour = "mult"} end
			if card.ability.extra.mult <= 0 then
				FG.FUNCS.card_eval_status_text{card = card, message = "Last stop!", mode = "literal", colour = "red"} 
				G.E_MANAGER:add_event(Event({
					func = function ()
						card:start_dissolve()
						return true
					end
				}))
				return {}
			end
		end
		if context.joker_main and card.ability.extra.mult > 0 then
			return {mult = card.ability.extra.mult}
		end
	end
}
-- Space
-- Egg
SMODS.Joker {
	key = 'egg',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 0, y = 10 },
	rarity = "fg_common_alt",
	cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_egg"
		},
		extra = {
			sell_value = 50,
			hands = -1,
			discards = -1
		}
	},
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.sell_value,
				card.ability.extra.hands,
				card.ability.extra.discards
			}
		}
	end,
	add_to_deck = function(self, card, from_debuff)
		card.sell_cost = 50
	end,
	calculate = function(self, card, context)
		if context.selling_self then
			if G.GAME.round_resets.hands > 1 then G.GAME.round_resets.hands = G.GAME.round_resets.hands - 1 end
			if G.GAME.round_resets.discards > 1 then G.GAME.round_resets.discards = G.GAME.round_resets.discards - 1 end
			ease_hands_played(card.ability.extra.hands)
			ease_discard(card.ability.extra.discards)
		end
	end
}
-- Burglar
-- Blackboard
-- Runner
-- Ice cream
SMODS.Joker{
    key = "ice_cream",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 4, y = 10},
    rarity = "fg_common_alt",
    cost = 2,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_ice_cream"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = { -- Astro is very extre, yes
			chips = 120,
			chips_d = 15,
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.chips,
				card.ability.extra.chips_d
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.setting_blind and not context.blueprint then
			card.ability.extra.chips = card.ability.extra.chips - card.ability.extra.chips_d
			if card.ability.extra.chips <= 0 then
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Melted!",
					mode = "literal",
					colour = "blue"
				}
				card:start_dissolve()
				return
			end
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "-"..card.ability.extra.chips_d,
				mode = "literal",
				colour = "blue"
			}
		end
		if context.joker_main then
			return {chips = card.ability.extra.chips}
		end
    end
}
-- DNA
-- Splash
-- Blue
SMODS.Joker{
	key = 'blue_joker',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = {x = 7, y = 10},
	rarity = 'fg_common_alt',
	cost = 4,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_blue_joker'
		},
		extra = {
			chips = 1,
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.chips,
				G.playing_cards and (card.ability.extra.chips * #G.playing_cards) or 0
			}
		}
	end,
	calculate = function (self, card, context)
		if context.joker_main then
			return {chips = card.ability.extra.chips * #G.playing_cards}
		end
	end
}
-- Sixth sense
-- Constellation
SMODS.Joker{
	key = 'constellation',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = {x = 9, y = 10},
	rarity = 'fg_common_alt',
	cost = 6,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_constellation'
		},
		extra = {
			mult = 0,
			mult_i = 5,
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.mult,
				card.ability.extra.mult_i
			}
		}
	end,
	calculate = function (self, card, context)
		if context.using_consumeable and context.consumeable.config.center.set == 'Planet' and not context.blueprint then
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_i
			return {
				message = localize('k_upgrade_ex'),
			}
		end
		if context.joker_main then return {mult = card.ability.extra.mult} end
	end
}
-- Hiker
-- Faceless
SMODS.Joker{
    key = "faceless",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 1, y = 11 },
    rarity = "fg_common_alt",
    cost = 2,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_faceless"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1.5
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.joker_main then
			local face = false
			for _,v in ipairs(G.play.cards) do
				if FG.FUNCS.get_card_info(v).is_face then
					face = true
				end
			end
			if not face then return {xmult = card.ability.extra.xmult} end
		end
    end
}
-- Green
-- Superposition
-- To do list
-- Cavendish
SMODS.Joker{
	key = "cavendish",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 5, y = 11},
	yes_pool_flag = "fg_gros_michel_extinct",
	
	rarity = "fg_uncommon_alt",
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_cavendish"
		},
		extra = {
			xmult = 10,
			xmult_r = 1,
			xmult_c = 6
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_r,
				G.GAME.probabilities.normal or 1,
				card.ability.extra.xmult_c
			}
		}		
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
		if context.end_of_round and context.cardarea == G.jokers then
			if FG.FUNCS.random_chance(card.ability.extra.xmult_c) then
				card.ability.extra.xmult = card.ability.extra.xmult - card.ability.extra.xmult_r
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "-X1",
					mode = "literal",
					colour = "red"
				}
			else
				return {
					message = "Safe!?"
				}
			end
			if card.ability.extra.xmult <= 1 then
				card:start_dissolve()
				play_sound("tarot2",1.5,1)
				return {
					message = "Extint?!"
				}
			end	
		end
	end
}
-- Card sharp
-- Red card
SMODS.Joker{
    key = "red_card",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 7, y = 11},
    rarity = "fg_common_alt",
    cost = 2,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_red_card"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			mult = 0,
			mult_i = 15
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.mult,
				card.ability.extra.mult_i
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.skip_blind and not context.blueprint then
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_i
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.mult.." Mult",
				mode = "literal",
				colour = "mult"
			}
		end
		if context.joker_main then return {mult = card.ability.extra.mult} end
    end
}
-- Madness
-- Square
-- Seance
-- Riff-raff
SMODS.Joker{
    key = "riff_raff",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 1, y = 12},
    rarity = "fg_common_alt",
    cost = 5,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_riff_raff",
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			uncommon_chance = 3,
			rare_chance = 6
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				G.GAME.probabilities.normal or 1,
				card.ability.extra.uncommon_chance,
				card.ability.extra.rare_chance
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.setting_blind then
			if FG.FUNCS.random_chance(card.ability.extra.uncommon_chance) then SMODS.add_card{ set = "Joker", rarity = .9} end
			if FG.FUNCS.random_chance(card.ability.extra.rare_chance) then SMODS.add_card{ set = "Joker", rarity = "fg_common_alt"} end
		end
    end
}
-- Vampire
SMODS.Joker{
	key = 'vampire',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = {x = 2, y = 12},
	rarity = 'fg_uncommon_alt',
	cost = 5,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_vampire'
		},
		extra = {
			xmult = 1,
			xmult_i = 0.5,
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i
			}
		}
	end,
	calculate = function (self, card, context)
		if context.after and context.cardarea == G.jokers and not context.blueprint and context.scoring_hand then
			local vampired = 0
			for _,v in ipairs(context.scoring_hand) do
				if FG.FUNCS.get_card_info(v).edition then
					vampired = vampired + 1
					G.E_MANAGER:add_event(Event{
						func = function ()
							v:set_edition(nil,true,true)
							v:juice_up()
							return true
						end
					})
				end
			end
			G.E_MANAGER:add_event(Event{
				func = function ()
					card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i * vampired
					return true
				end
			})
			return {
				message = vampired > 0 and localize('k_upgrade_ex')
			}
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
	end
}
-- Shortcut
-- Hologram
SMODS.Joker{
	key = 'hologram',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = {x=4,y=12},
	soul_pos = {x=2, y=9},
	rarity = 'fg_uncommon_alt',
	cost = 6,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_hologram'
		},
		extra = {
			xmult = 1,
			xmult_i = 0.5
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i
			}
		}
	end,
	draw = function (self, card, layer)
		local scale_mod = 0.07 + 0.02*math.sin(1.8*G.TIMERS.REAL) + 0.00*math.sin((G.TIMERS.REAL - math.floor(G.TIMERS.REAL))*math.pi*14)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^3
        local rotate_mod = 0.05*math.sin(1.219*G.TIMERS.REAL) + 0.00*math.sin((G.TIMERS.REAL)*math.pi*5)*(1 - (G.TIMERS.REAL - math.floor(G.TIMERS.REAL)))^2

		card.hover_tilt = card.hover_tilt*1.5
		card.children.floating_sprite:draw_shader('hologram', nil, card.ARGS.send_to_shader, nil, card.children.center, 2*scale_mod, 2*rotate_mod)
		card.hover_tilt = card.hover_tilt/1.5
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.remove_playing_cards and not context.blueprint then
			local increase = card.ability.extra.xmult_i * table.size(context.removed)
			card.ability.extra.xmult = card.ability.extra.xmult + increase
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = '+X'..increase..' Mult',
				mode = 'literal',
				colour = 'red'
			}
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
	end
}
-- Vagabond
-- Baron
SMODS.Joker{
    key = "baron",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 6, y = 12},
    rarity = "fg_rare_alt",
    cost = 6,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_baron",
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1,
			xmult_i = 0.1
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
			for _,v in ipairs(G.hand.cards) do
				if FG.FUNCS.get_card_info(v).rank == "King" then
					card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
					G.E_MANAGER:add_event(Event({
						func = function ()
							v:juice_up()
							return true
						end
					}))
					FG.FUNCS.card_eval_status_text{
						card = card,
						message = "+X"..card.ability.extra.xmult_i.." Mult",
						mode = "literal",
						colour = "mult"
					}
				end
			end
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
    end
}
-- Cloud 9
SMODS.Joker{
    key = "cloud_9",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 7, y = 12},
    rarity = "fg_common_alt",
    cost = 2,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_cloud_9"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			dollars = 4
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.dollars
			}
        }
    end,
    blueprint_compat = false,
    calculate = function (self, card, context)
    end,
	calc_dollar_bonus = function (self, card)
		return card.ability.extra.dollars
	end
}
-- Rocket
SMODS.Joker{
    key = "rocket",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 8, y = 12},
    rarity = "fg_common_alt",
    cost = 2,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_rocket"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			payout = 10,
			payout_d = 2
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.payout,
				card.ability.extra.payout_d
			}
        }
    end,
    blueprint_compat = false,
    calculate = function (self, card, context)
		if context.skip_blind and not context.blueprint then
			card.ability.extra.payout = card.ability.extra.payout - card.ability.extra.payout_d
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "-$2",
				mode = "literal",
				colour = "gold"
			}
		end
    end,
	calc_dollar_bonus = function (self, card)
		return card.ability.extra.payout
	end
}
-- Obelisk
-- Midas mask
-- Luchador
-- Photograph
-- Gift card
SMODS.Joker{
    key = "gift",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 3, y = 13},
    rarity = "fg_common_alt",
    cost = 4,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_gift"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				FG.FUNCS.get_card_info(card).sell_cost or 0
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.end_of_round and context.cardarea == G.jokers then
			local sell_i = 0
			for _,v in ipairs(G.jokers.cards) do
				if FG.FUNCS.get_card_info(v).key ~= FG.FUNCS.get_card_info(card).key then sell_i = sell_i + FG.FUNCS.get_card_info(v).sell_cost end
			end
			for _,v in ipairs(G.consumeables.cards) do
				if FG.FUNCS.get_card_info(v).key ~= FG.FUNCS.get_card_info(card).key then sell_i = sell_i + FG.FUNCS.get_card_info(v).sell_cost end
			end
			card.sell_cost = card.sell_cost + math.ceil(sell_i/4)
			if sell_i > 0 then FG.FUNCS.card_eval_status_text{card = card, message = "Value Up!",mode = "literal"} end
		end
    end
}
-- Turtle bean
SMODS.Joker{
	key = 'turtle_bean',
	pos = {x=4,y=13},
	rarity = 'fg_uncommon_alt',
	cost = 5,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_turtle_bean'
		},
		extra = {
			original_limit = G.hand and G.hand.config.card_limit or 0,
			hand_size = 1,
			extra_size = 1,
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.hand_size,
				card.ability.extra.extra_size,
				G.hand and (card.ability.extra.hand_size + ((G.GAME.round_resets.hands - G.GAME.current_round.hands_left) * card.ability.extra.extra_size)) or 0
			}
		}
	end,
	calculate = function (self, card, context)
		local original_limit = card.ability.extra.original_limit
		local current_limit = G.hand.config.card_limit
		if context.blueprint then return end
		if context.setting_blind then
			card.ability.extra.original_limit = G.hand.config.card_limit
			G.hand.config.card_limit = G.hand.config.card_limit + card.ability.extra.hand_size
			return {
				message = '+'..card.ability.extra.hand_size
			}
		end
		if context.after then
			current_limit = G.hand.config.card_limit
			local dif = ((G.GAME.round_resets.hands - G.GAME.current_round.hands_left) * card.ability.extra.extra_size)
			G.E_MANAGER:add_event(Event{
				func = function ()
					G.hand.config.card_limit = card.ability.extra.original_limit + card.ability.extra.hand_size + dif
					return true
				end
			})
			return {
				message = '+'..card.ability.extra.extra_size
			}
		end
		if context.end_of_round and context.cardarea == G.jokers then
			G.hand.config.card_limit = card.ability.extra.original_limit
			return {
				message = localize('k_reset')
			}
		end
	end
}
-- Erosion
SMODS.Joker{
    key = "erosion",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 5, y = 13},
    rarity = "fg_uncommon_alt",
    cost = 5,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_erosion"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 4,
			max_cards = 10
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.max_cards
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.joker_main and G.playing_cards and #G.playing_cards < card.ability.extra.max_cards then return {xmult = card.ability.extra.xmult} end
    end
}
-- Reserved parking
-- Mail
-- To the moon
-- Hallucination
-- Fortune teller
-- Juggler
SMODS.Joker{
    key = "juggler",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 0, y = 1},
    rarity = "fg_common_alt",
    cost = 4,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_juggler"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			slots = 1
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				math.floor(card.ability.extra.slots)
			}
        }
    end,
    blueprint_compat = true,
	add_to_deck = function (self, card, from_debuff)
		G.consumeables.config.card_limit = G.consumeables.config.card_limit + math.floor(card.ability.extra.slots) -- Missprint deck
	end,
	remove_from_deck = function (self, card, from_debuff)
		G.consumeables.config.card_limit = G.consumeables.config.card_limit - math.floor(card.ability.extra.slots) -- Go fucking die
	end,
    calculate = function (self, card, context)
    end
}
-- Drunkard
SMODS.Joker{
    key = "drunkard",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 1, y = 1},
    rarity = "fg_uncommon_alt",
    cost = 5,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_drunkard"
		},
		extra = {
			d_size = -2,
			h_size = 1
		}
	},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.d_size, card.ability.extra.h_size } }
    end,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.d_size
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.h_size
        ease_discard(card.ability.extra.d_size)
        ease_hands_played(card.ability.extra.h_size)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.d_size
        G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.h_size
        ease_discard(-card.ability.extra.d_size)
        ease_hands_played(-card.ability.extra.h_size)
    end,
    blueprint_compat = false,
}
-- Stone
SMODS.Joker{
    key = "stone",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 9, y = 0},
    rarity = "fg_common_alt",
    cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_stone"
		},
	},
     -- Custom logic for spawning
	calculate = function (self, card, context)
		if context.individual and context.cardarea == G.play then
			if FG.FUNCS.get_card_info(context.other_card).key == "m_fg_stone" then
				context.other_card.ability.extra.chips = 2 * context.other_card.ability.extra.chips
				card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Doubled!" })
			end
		end
	end,
    blueprint_compat = false,
}
-- Golden
-- Cat
SMODS.Joker{
    key = "lucky_cat",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 5, y = 14},
    rarity = "fg_common_alt",
    cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_lucky_cat"
		},
		extra = {
			pluschips = 30,
			plusmult = 5,
			plusmoney = 25,
			chancemax = 4
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.pluschips,
				card.ability.extra.plusmult,
				card.ability.extra.plusmoney,
				G.GAME.probabilities.normal or 1,
				card.ability.extra.chancemax
			}
		}		
	end,
	
     -- Custom logic for spawning
	calculate = function (self, card, context)
		if context.individual and context.cardarea == G.play then	
			if FG.FUNCS.get_card_info(context.other_card).key == "m_fg_lucky" then
				if FG.FUNCS.random_chance(card.ability.extra.chancemax, card) then
					context.other_card.ability.extra.chips = context.other_card.ability.extra.chips + card.ability.extra.pluschips
					context.other_card.ability.extra.money = context.other_card.ability.extra.money + card.ability.extra.plusmoney
					return{
						extra = {
							message = "Added!",
							focus = card
						}
					}
				else
					return{
						extra = {
							message = "Nope!",
							focus = card,
							colour = G.C.SECONDARY_SET.Tarot
						}
					}
				end
			end
			if FG.FUNCS.get_card_info(context.other_card).key == "m_lucky" then
				if FG.FUNCS.random_chance(card.ability.extra.chancemax, card) then
					context.other_card.ability.extra.mult = context.other_card.ability.extra.mult + card.ability.extra.plusmult
					context.other_card.ability.extra.money = context.other_card.ability.extra.money + card.ability.extra.plusmoney
					return{
						extra = {
							message = "Added!",
							focus = card
						}
					}
				else
					return{
						extra = {
							message = "Nope!",
							focus = card,
							colour = G.C.SECONDARY_SET.Tarot
						}
					}
				end
			end
		end
	end,
    blueprint_compat = true,
}
-- Baseball
-- Bull
-- Cola
-- Trading card
-- Flash card
-- Popcorn
SMODS.Joker{
    key = "popcorn",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 1, y = 15},
    rarity = "fg_common_alt",
    cost = 2,
	
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_popcorn"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			mult = 25,
			mult_d = 1
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.mult,
				card.ability.extra.mult_d
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.before and not context.blueprint then
			card.ability.extra.mult = card.ability.extra.mult - card.ability.extra.mult_d
			if card.ability.extra.mult <= 0 then
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Eaten!",
					mode = "literal",
					colour = "red"
				}
				card:start_dissolve()
				return
			end
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "-"..card.ability.extra.mult_d,
				mode = "literal",
				colour = "red"
			}
		end
		if context.joker_main then
			return {mult = card.ability.extra.mult}
		end
    end
}
-- Trouses
--[[ Ancient
SMODS.Joker{
	key = "ancient",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = {x = 7, y = 15},
	rarity = "fg_rare_alt",
	cost = 8,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_ancient"
		},
		extra = {
			suit = nil,
			xmult = 1,
			xmult_i = 0.5
		}
	},
	loc_vars = function (self, info_queue, card)
		local suit = card.ability.extra.suit or SMODS.Suits.Spades
		return {vars = {
			(suit and suit.name) or "Spades",
			colours = { 
				G.C.SUITS[suit.key] or G.C.SUITS.Spades,
			},
			card.ability.extra.xmult,
			card.ability.extra.xmult_i
		}}
	end,
	set_ability = function (self, card, initial, delay_sprites)
		if card.ability.extra.suit then return end
		card.ability.extra.suit = pseudorandom_element(SMODS.Suits)
		t_suit = card.ability.extra.suit
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		local give = true
		if context.before then
			for _,v in ipairs(G.play.cards) do
				if FG.FUNCS.get_card_info(v).suit ~= card.ability.extra.suit.key then 
					print(FG.FUNCS.get_card_info(v).suit.. " | "..tostring(card.ability.extra.suit.key))
					print("fail")
					give = false
				end
			end
			if give then card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i end
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
		if context.end_of_round then card.ability.extra.suit = pseudorandom_element(SMODS.Suits) end
	end
}]]
-- Ramen
SMODS.Joker{
    key = "ramen",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 2, y = 15},
    rarity = "fg_common_alt",
    cost = 2,
      
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_ramen"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 3,
			xmult_d = 0.1,
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_d
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.before and not context.blueprint then
			local sent_eaten = false
			for i=1, #G.play.cards do
				if card.ability.extra.xmult > 1 then 
					G.E_MANAGER:add_event(Event({
						func = function ()
							G.play.cards[i]:juice_up()
							return true
						end
					}))
					FG.FUNCS.card_eval_status_text{
						card = card,
						message = "-X0.1",
						mode = "literal",
						colour = "mult"
					}
					card.ability.extra.xmult = card.ability.extra.xmult - card.ability.extra.xmult_d
				elseif card.ability.extra.xmult <= 1 and not sent_eaten then
					FG.FUNCS.card_eval_status_text{
						card = card,
						message = "Eaten!",
						mode = "literal",
						colour = "mult"
					}
					G.E_MANAGER:add_event(Event({
						func = function ()
							card:start_dissolve()
							return true
						end
					}))
					sent_eaten = true
				end
			end
		end
		if context.joker_main and card.ability.extra.xmult > 1 then return {xmult = card.ability.extra.xmult} end
    end
}
-- Walkie talkie
SMODS.Joker{
    key = "walkie_talkie",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 8, y = 15},
    rarity = "fg_common_alt",
    cost = 4,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_walkie_talkie"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			chips = 0,
			mult = 0,
			chips_i = 2,
			mult_i = 1,
			repetitions = 1,
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.chips,
				card.ability.extra.mult,
				card.ability.extra.chips_i,
				card.ability.extra.mult_i,
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.individual and not context.blueprint and context.cardarea == G.play and
		(FG.FUNCS.get_card_info(context.other_card).id == 4 or FG.FUNCS.get_card_info(context.other_card).id == 10) then
			local other_card = context.other_card or {} -- shut up nil check
			G.E_MANAGER:add_event(Event({
				func = function ()
					other_card:juice_up()
					return true
				end
			}))
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.chips_i.."",
				mode = "literal",
				colour = "chips"
			}
			G.E_MANAGER:add_event(Event({
				func = function ()
					other_card:juice_up()
					return true
				end
			}))
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.mult_i.." Mult",
				mode = "literal",
				colour = "mult"
			}
			card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chips_i
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_i
		end
		if context.joker_main then
			return {
				chips = card.ability.extra.chips,
				mult = card.ability.extra.mult
			}
		end
    end
}
-- selzer
SMODS.Joker{
    key = "selzer",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 3, y = 15},
    rarity = "fg_uncommon_alt",
    cost = 5,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_selzer"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			repetitions = 2,
			hands = 4,
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.repetitions,
				card.ability.extra.hands
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context) -- Drank!
		if context.repetition and context.cardarea == G.play then return { repetitions = card.ability.extra.repetitions, card = card } end
		if context.after then
			card.ability.extra.hands = card.ability.extra.hands - 1
			if card.ability.extra.hands <= 0 then 
				G.E_MANAGER:add_event(Event({
					func = function ()
						card:start_dissolve() 
						return true
					end
				}))
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Drank!",
					mode = "literal"
				} 
				return
			end
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "-1",
				mode = "literal"
			}
		end
    end
}
--[[ castle
SMODS.Joker{
    key = "castle",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 9, y = 15},
    rarity = "fg_common_alt",
    cost = 4,
      
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_castle"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			chips = 0,
			chips_i = 20,
			rank = "Ace"
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.chips,
				card.ability.extra.chips_i,
				card.ability.extra.rank
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.end_of_round then
			local ranks = {}
			for _,rank in ipairs(SMODS.Ranks) do
				table.insert(ranks,rank.key)
			end
			card.ability.extra.rank = ranks[pseudorandom("mila",1,#ranks)]
		end
    end
}
]]
-- Smiley
SMODS.Joker{
    key = "smiley",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 6, y = 15},
    rarity = "fg_common_alt",
    cost = 2,
      
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_smiley"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			mult = 0,
			mult_i = 2
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.mult,
				card.ability.extra.mult_i
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.individual and not context.blueprint and context.cardarea == G.play and FG.FUNCS.get_card_info(context.other_card).is_face then
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_i
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.mult_i.." Mult",
				mode = "literal",
				colour = "mult"
			}
		end
		if context.joker_main then return {mult = card.ability.extra.mult} end
    end
}
-- Campfire
SMODS.Joker{
    key = "campfire",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 5, y = 15},
    rarity = "fg_rare_alt",
    cost = 6,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_campfire"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1,
			xmult_i = 0.04,
			xmult_d = 0.6,
			xmult_m = 0.75
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i,
				card.ability.extra.xmult_d,
				card.ability.extra.xmult_m
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.discard and not context.blueprint then
			card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+X"..card.ability.extra.xmult_i.." Mult",
				mode = "literal",
				colour = "mult"
			}
		end
		if context.end_of_round and context.cardarea == G.jokers and G.GAME.blind.boss and not context.blueprint then
			card.ability.extra.xmult = card.ability.extra.xmult - card.ability.extra.xmult_d
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "-X"..card.ability.extra.xmult_d.." Mult",
				mode = "literal",
				colour = "mult"
			}
			if card.ability.extra.xmult < card.ability.extra.xmult_m then card.ability.extra.xmult = card.ability.extra.xmult_m end
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
    end
}
-- Ticket
-- Mr. Bones
SMODS.Joker{
	key = 'mr_bones',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = {x=3,y=4},
	rarity = 'fg_rare_alt',
	cost = 6,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_mr_bones'
		},
		extra = {
			chips = 0.25,
			max_chance = 2,
			hands = 1,
			discards = 1,
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				G.GAME.probabilities.normal,
				card.ability.extra.max_chance,
				100*card.ability.extra.chips,
				card.ability.extra.hands,
				card.ability.extra.discards
			}
		}
	end,
	calculate = function (self, card, context)
		if G.GAME.chips >= G.GAME.blind.chips*card.ability.extra.chips
		and G.GAME.chips < G.GAME.blind.chips
		and G.GAME.current_round.hands_left <= 1
		and context.end_of_round and not context.blueprint then
			G.E_MANAGER:add_event(Event{
				func = function ()
					ease_hands_played(tonumber(card.ability.extra.hands) or 1)
					ease_discard(tonumber(card.ability.extra.hands) or 1)
					return true
				end
			},nil)
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = 'k_saved_ex'
			}
			return {
				fg_game_over = 'mr_bones'
			}
		end
	end
}
-- Acrobat
SMODS.Joker{
    key = "acrobat",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 2, y = 1},
    rarity = "fg_uncommon_alt",
    cost = 6,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_acrobat"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1,
			xmult_i = 0.2,
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i,
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.end_of_round and not context.blueprint and context.cardarea == G.jokers and G.GAME.current_round.hands_left == G.GAME.round_resets.hands - 1 then
			card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "Upgrade!",
				mode = "literal"
			}
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
    end
}
-- Sock and Buskin
-- swashbuckler
SMODS.Joker{
	key = "swashbuckler",
	rarity = "fg_common_alt",
    cost = 2,
	atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 9, y = 5 },
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_swashbuckler"
		},
		extra = {
			sell_value = 1
		}
	},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.sell_value } }
    end,
    calculate = function(self, card, context)
		card.ability.extra.sell_value = card.sell_cost
        if context.selling_self and not context.blueprint then
            for _, area in ipairs({ G.jokers }) do
            	for _, other_card in ipairs(area.cards) do
                	if other_card.set_cost then
                    	other_card.ability.extra_value = (other_card.ability.extra_value or 0) +
                        	card.ability.extra.sell_value
                    	other_card:set_cost()
                	end
            	end
            end
            return {
            	message = localize('k_val_up'),
            	colour = G.C.MONEY
            }
		end
    end
}
-- troubador
SMODS.Joker{
	key = "troubadour",
	rarity = "fg_common_alt",
    cost = 2,
	atlas = 'Joker',
	prefix_config = {atlas = false},
	blueprint_compat = false,
    pos = { x = 0, y = 2 },
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_troubadour"
		},
		extra = {
			h_size = -2,
			h_plays = 1
		}
	},
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.h_size, card.ability.extra.h_plays } }
    end,
    add_to_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.h_plays
        G.hand:change_size(card.ability.extra.h_size)
    end,
    remove_from_deck = function(self, card, from_debuff)
        G.GAME.round_resets.hands = G.GAME.round_resets.hands - card.ability.extra.h_plays
        G.hand:change_size(-card.ability.extra.h_size)
    end
}
-- Certificate
-- Smeared
-- Throwback
SMODS.Joker{
	key = "throwback",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 5 , y = 7},
	rarity = "fg_uncommon_alt",
    cost = 2,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_throwback"
		},
		extra = {
			xmult = 1,
			xmult_i = 0.35,
			u_shop = false,
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.end_of_round then card.ability.extra.u_shop = false and not context.blueprint end
		if context.buying_card or context.open_booster then
			card.ability.extra.u_shop = true
		end
		if context.ending_shop and not card.ability.extra.u_shop then
			card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
			return {
				message = "X"..card.ability.extra.xmult.."!"
			}
		end
		if context.joker_main and card.ability.extra.xmult ~= 1 then
			return {
				xmult = card.ability.extra.xmult
			}
		end

	end
}
-- Hanging chad
SMODS.Joker{
	key = "hanging_chad",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 9, y = 6},
	rarity = "fg_rare_alt",
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_hanging_chad"
		},
		extra = {
			enhancement_max = 3,
			seal_max = 6,
			edition_max = 16,
		}
	},
	blueprint_compat = false,
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				G.GAME.probabilities.normal or 1,
				card.ability.extra.enhancement_max,
				G.GAME.probabilities.normal or 1,
				card.ability.extra.seal_max,
				G.GAME.probabilities.normal or 1,
				card.ability.extra.edition_max
			}
		}
	end,
	calculate = function (self, card, context)
		if context.after and not context.blueprint then
			for i,v in ipairs(context.scoring_hand) do
				if FG.FUNCS.get_card_info(v).key == "c_base" then
					if FG.FUNCS.random_chance(card.ability.extra.enhancement_max, card) then
						G.E_MANAGER:add_event(Event({
							trigger = "after",
							delay = 0.2,
							func = function ()
								v:set_ability(SMODS.poll_enhancement{guaranteed = true})
								v:juice_up()
								card:juice_up()
								return true
								
							end
						}))
						FG.FUNCS.card_eval_status_text{card = card, message = "Enhanced!", mode = "literal"}	
					end
				elseif not FG.FUNCS.get_card_info(v).seal then	
					if FG.FUNCS.random_chance(card.ability.extra.seal_max, card) then	
						G.E_MANAGER:add_event(Event({
							trigger = "after",
							delay = 0.2,
							func = function ()
								v.seal = SMODS.poll_seal{guaranteed = true}
								v:juice_up()
								card:juice_up()
								return true
							end
						}))
						FG.FUNCS.card_eval_status_text{card = card, message = "Seal!", mode = "literal"}
					end
				elseif not FG.FUNCS.get_card_info(v).edition then
					if FG.FUNCS.random_chance(card.ability.extra.edition_max, card) then
						G.E_MANAGER:add_event(Event({
							trigger = "after",
							delay = 0,2,
							func = function ()
								v:set_edition(poll_edition("mila",1,true,true),true,false)
								v:juice_up()
								card:juice_up()
								return true
							end
						}))
						FG.FUNCS.card_eval_status_text{card = card, message = "Edition!", mode = "literal"}
					end
				end
			end
		end
	end
}
-- Rough Gem
SMODS.Joker {
	key = 'rough_gem',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_rough_gem"
		},
		type = 'Flush',
		extra = {
			dollars = 10
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { localize(card.ability.type, 'poker_hands'), card.ability.extra.dollars } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	
	
	pos = { x = 9, y = 7 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.joker_main then
			if (next(context.poker_hands[card.ability.type])) then
				for i = 1, #context.scoring_hand do
					if context.scoring_hand[i]:is_suit("Diamonds") then
						G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.dollars
						G.E_MANAGER:add_event(Event({
							func = (function()
								G.GAME.dollar_buffer = 0; return true
							end)
						}))
						return {
							dollars = card.ability.extra.dollars,
							card = card
						}
					end
				end
			end
		end
	end
}
-- Bloodstone
SMODS.Joker {
	key = 'bloodstone',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_bloodstone"
		},
		type = 'Flush',
		extra = {
			Xmult_gain = 0.4,
			Xmult = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { localize(card.ability.type, 'poker_hands'), card.ability.extra.Xmult_gain, card.ability.extra.Xmult } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	
	pos = { x = 0, y = 8 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and not context.blueprint then
			if (next(context.poker_hands[card.ability.type])) then
				local extra_suit = false
				for i = 1, #context.scoring_hand do
					if not context.scoring_hand[i]:is_suit("Hearts") then
						extra_suit = true
					end
				end
				if not extra_suit then
					card.ability.extra.Xmult = card.ability.extra.Xmult_gain + card.ability.extra.Xmult
					FG.FUNCS.card_eval_status_text{
						card = card,
						message = "Upgrade!",
						mode = "literal"
					}
				end
			end
		end
		if context.joker_main then
			if card.ability.extra.Xmult ~= 1 then
				return {
					Xmult_mod = card.ability.extra.Xmult,
					message = 'X' .. card.ability.extra.Xmult .. ' Mult'
				}
			end
		end
	end
}
-- Arrowhead
SMODS.Joker {
	key = 'arrowhead',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_arrowhead"
		},
		type = 'Flush',
		extra = {
			chip_gain = 25,
			chips = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { localize(card.ability.type, 'poker_hands'), card.ability.extra.chip_gain, card.ability.extra.chips } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	
	
	pos = { x = 1, y = 8 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and not context.blueprint then
			if (next(context.poker_hands[card.ability.type])) then
				local extra_suit = false
				for i = 1, #context.scoring_hand do
					if not context.scoring_hand[i]:is_suit("Spades") then
						extra_suit = true
					end
				end
				if not extra_suit then
					card.ability.extra.chips = card.ability.extra.chip_gain + card.ability.extra.chips
					return {
						message = "Upgrade!"
					}
				end
			end
		end
		if context.joker_main and card.ability.extra.chips ~= 0 then
			return {
				chip_mod = card.ability.extra.chips,
				message = '+' .. card.ability.extra.chips .. ' Chips'
			}
		end
	end
}
-- Onyx Agate
SMODS.Joker {
	key = 'onyx_agate',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_onyx_agate"
		},
		type = 'Flush',
		extra = {
			mult_gain = 12,
			mult = 0
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { localize(card.ability.type, 'poker_hands'), card.ability.extra.mult_gain, card.ability.extra.mult } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	
	
	pos = { x = 2, y = 8 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and not context.blueprint then
			if (next(context.poker_hands[card.ability.type])) then
				local extra_suit = false
				for i = 1, #context.scoring_hand do
					if not context.scoring_hand[i]:is_suit("Clubs") then
						extra_suit = true
					end
				end
				if not extra_suit then
					card.ability.extra.mult = card.ability.extra.mult_gain + card.ability.extra.mult
					FG.FUNCS.card_eval_status_text{
						card = card,
						message = "Upgrade!",
						mode = "literal",
					}
				end
			end
		end
		if context.joker_main then
			return {
				mult_mod = card.ability.extra.mult,
				message = card.ability.extra.mult > 0 and ('+' .. card.ability.extra.mult .. ' Mult') or nil
			}
		end
	end
}
-- Glass
-- Showman
-- Flower pot
SMODS.Joker{
    key = "flower_pot",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 0, y = 6 },
    rarity = "fg_uncommon_alt",
    cost = 5,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_flower_pot"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 12
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		local function check ()
			local has_spades = false
			local has_hearts = false
			local has_clubs = false
			local has_diamonds = false
			local has_face = false
			local has_number = false

			for _,v in ipairs(context.scoring_hand) do
				if FG.FUNCS.get_card_info(v).suit == "Spades" or FG.FUNCS.get_card_info(v).key == "m_wild" then has_spades = true end
				if FG.FUNCS.get_card_info(v).suit == "Hearts" or FG.FUNCS.get_card_info(v).key == "m_wild" then has_hearts = true end
				if FG.FUNCS.get_card_info(v).suit == "Clubs" or FG.FUNCS.get_card_info(v).key == "m_wild" then has_clubs = true end
				if FG.FUNCS.get_card_info(v).suit == "Diamonds" or FG.FUNCS.get_card_info(v).key == "m_wild" then has_diamonds = true end
				
				if FG.FUNCS.get_card_info(v).is_face then has_face = true end
				if not FG.FUNCS.get_card_info(v).is_face then has_number = true end
			end
			if has_spades and has_hearts and has_clubs and has_diamonds and has_face and has_number then return true else return false end
		end
		if context.joker_main and check() then return {xmult = card.ability.extra.xmult} end
    end
}
-- Blueprint
-- Wee
-- Merry Andy
-- oops all 6s
SMODS.Joker {
	key = 'oops',
	rarity = "fg_uncommon_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_oops"
		},
		extra = {
			den_gain = 1,
			num_gain = 1,
			den_rate = 8,
			num_rate = 9
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.den_gain, card.ability.extra.num_gain, card.ability.extra.den_rate, card.ability.extra.num_rate } }
	end,
	
	
	pos = { x = 5, y = 6 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.pseudorandom_result and context.result then
            card.ability.extra.num_gain = card.ability.extra.num_gain * card.ability.extra.num_rate
            card.ability.extra.den_gain = card.ability.extra.den_gain * card.ability.extra.den_rate
			return{
				extra = {
					message = "Multiplied!",
					focus = card
				}
			}
		end
		if context.mod_probability and not context.blueprint then
            return {
                numerator = context.numerator * card.ability.extra.num_gain,
                denominator = context.denominator * card.ability.extra.den_gain
            }
        end
	end
}
-- Idol
-- Seeing double
SMODS.Joker{
    key = "seeing_double",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 4, y = 4 },
    rarity = "fg_uncommon_alt",
    cost = 5,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_seeing_double"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1.5
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		local function check ()
			local has_clubs = false
			local has_other = false
			for _,v in ipairs(context.scoring_hand) do
				if FG.FUNCS.get_card_info(v).suit == "Clubs" or FG.FUNCS.get_card_info(v).key == "m_wild" then has_clubs = true end
				if FG.FUNCS.get_card_info(v).suit ~= "Clubs" or FG.FUNCS.get_card_info(v).key == "m_wild" then has_other = true end
			end
			return has_clubs and has_other
		end
		if context.joker_main and check() then return {xmult = card.ability.extra.xmult} end
		if context.after and check() then
			for _,v in ipairs(G.play.cards) do G.E_MANAGER:add_event(Event({trigger = "after", delay = 0.2, func = function() v:flip() return true end})) end
			for _,v in ipairs(G.play.cards) do G.E_MANAGER:add_event(Event({trigger = "after", delay = 0.2, func = function() local fuck, you = SMODS.change_base(v, "Clubs", nil) return true end})) end
			for _,v in ipairs(G.play.cards) do G.E_MANAGER:add_event(Event({trigger = "after", delay = 0.2, func = function() v:flip() return true end})) end
			G.E_MANAGER:add_event(Event({trigger = "after", delay = 1, func = function() return true end}))
		end
    end
}
-- Matador
SMODS.Joker{
    key = "matador",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 4, y = 5 },
    rarity = "fg_uncommon_alt",
    cost = 5,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_matador"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			money = 5,
			availability = true
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.money
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		local extra = card.ability.extra
		if context.setting_blind then
			if context.blind.boss then
			extra.availability = true
			else
				extra.availability = false
			end
		end
        if context.debuffed_hand or context.joker_main then
            if G.GAME.blind.triggered then
				extra.availability = false
            end
        end
    end,
	calc_dollar_bonus = function (self, card)
		if card.ability.extra.availability then
		return card.ability.extra.money
		end
	end
}
-- Hit the road
SMODS.Joker{
    key = "hit_the_road",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 8, y = 5},
    rarity = "fg_rare_alt",
    cost = 6,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_hit_the_road"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1,
			xmult_i = 0.1
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.discard and not context.blueprint then
			if FG.FUNCS.get_card_info(context.other_card).rank == "Jack" then
				card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "+X"..card.ability.extra.xmult_i.." Mult",
					mode = "literal",
					colour = "mult"
				}
			end
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
    end
}
-- Duo
SMODS.Joker {
	key = 'duo',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_duo"
		},
		type = 'Pair',
		extra = {
			Xmult_mod = 0.1,
			Xmult = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_mod, localize(card.ability.type, 'poker_hands'), card.ability.extra.Xmult } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	
	
	pos = { x = 5, y = 4 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers and not context.repetition and not context.blueprint then
			if (next(context.poker_hands[card.ability.type])) then
				card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main then
			if card.ability.extra.Xmult > 0 then
				return {
					Xmult = card.ability.extra.Xmult
				}
			end
		end
	end
}
-- Trio
SMODS.Joker {
	key = 'trio',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_trio"
		},
		type = 'Three of a Kind',
		extra = {
			Xmult_mod = 0.15,
			Xmult = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_mod, localize(card.ability.type, 'poker_hands'), card.ability.extra.Xmult } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	
	
	pos = { x = 6, y = 4 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers and not context.repetition and not context.blueprint then
			if (next(context.poker_hands[card.ability.type])) then
				card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main then
			if card.ability.extra.Xmult > 0 then
				return {
					Xmult = card.ability.extra.Xmult
				}
			end
		end
	end
}
-- Family
SMODS.Joker {
	key = 'family',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_family"
		},
		type = 'Four of a Kind',
		extra = {
			Xmult_mod = 0.2,
			Xmult = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_mod, localize(card.ability.type, 'poker_hands'), card.ability.extra.Xmult } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	
	
	pos = { x = 7, y = 4 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers and not context.repetition and not context.blueprint then
			if (next(context.poker_hands[card.ability.type])) then
				card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main then
			if card.ability.extra.Xmult > 0 then
				return {
					Xmult = card.ability.extra.Xmult
				}
			end
		end
	end
}
-- Order
SMODS.Joker {
	key = 'order',
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_order"
		},
		type = 'Straight',
		extra = {
			Xmult_mod = 0.15,
			Xmult = 1
		}
	},
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult_mod, localize(card.ability.type, 'poker_hands'), card.ability.extra.Xmult } }
	end,
	rarity = "fg_rare_alt",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 8, y = 4 },
	cost = 2,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.before and context.cardarea == G.jokers and not context.repetition and not context.blueprint then
			if (next(context.poker_hands[card.ability.type])) then
				card.ability.extra.Xmult = card.ability.extra.Xmult + card.ability.extra.Xmult_mod
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "Upgrade!",
					mode = "literal"
				}
			end
		end
		if context.joker_main then
			if card.ability.extra.Xmult > 0 then
				return {
					Xmult = card.ability.extra.Xmult
				}
			end
		end
	end
}
-- Tribe
SMODS.Joker{
    key = "tribe",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 9, y = 4},
    rarity = "fg_rare_alt",
    cost = 7,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_tribe"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 12
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.joker_main then
			-- WHAT THE FUCK IS THIS
			-- DON'T TOUCH. i DON'T KNOW HOW I MADE IT WORK
			-- ASK ERNESTO IF YOU WANT TO KNOW IDK
			local cards = {}
			local suit = true -- True means wild card
			for i,v in ipairs(context.scoring_hand) do
				if FG.FUNCS.get_card_info(v).rank ~= "Queen" then return end
				if FG.FUNCS.get_card_info(v).key ~= "m_wild" then cards[i] = FG.FUNCS.get_card_info(v).suit else cards[i] = true end
			end
			if #cards ~= 5 then return end
			for _,v in ipairs(cards) do
				if v ~= true then
					if suit ~= v and suit ~= true then return end
					suit = v
				end
			end
			return {xmult = card.ability.extra.xmult}
		end
    end
}
-- Stuntman
-- Invisible
FG.cards.invisible = {
	elegible_jokers = {},
	selected = {}
}
SMODS.Joker{
	key = "invisible",
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_invisible"
		},

	},
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = { x = 1, y = 7},
	rarity = "fg_rare_alt",
	eternal_compat = false,
	loc_vars = function (self, info_queue, card)
		info_queue[#info_queue+1] = G.P_CENTERS.j_fg_invisible_memory
	end,
	calculate = function (self, card, context)
		if context.selling_self then
			FG.cards.invisible.elegible_jokers = {}
			for i,joker in ipairs(G.jokers.cards) do
				if not (joker.config.center.key == "j_fg_invisible_memory" or joker.config.center.key == "j_fg_invisible" or joker.ability.eternal) then
					table.insert(FG.cards.invisible.elegible_jokers,joker)
				end
			end
			if not FG.cards.invisible.elegible_jokers[1] then return {message = "Nope!"} end
			local selected = FG.cards.invisible.elegible_jokers[pseudorandom('mila',1,#FG.cards.invisible.elegible_jokers)]
			FG.cards.invisible.selected = selected
			SMODS.add_card{
				key = "j_fg_invisible_memory",
			}
			selected:start_dissolve()
		end
	end
}
SMODS.Joker{
	key = "invisible_memory",
	atlas = 'Joker',
	prefix_config = {atlas = false},
	rarity = "fg_rare_alt",
	no_collection = true,
	yes_pool_flag = "mila",
	pos = { x = 1, y = 7},
	config = {
		extra = {
			rounds = 6,
			copies = 2,
			name = "nil"
		}
	},
	loc_vars = function (self, info_queue, card)
		card.ability.extra.name = localize("k_fg_none")
		if card.ability.saved_ability then card.ability.extra.name = localize{type = "name_text",set = card.ability.saved_ability.set, key = card.ability.saved_key} end
		return {
			vars = {
				card.ability.extra.rounds,
				card.ability.extra.copies,
				card.ability.extra.name
			}
		}
	end,
	add_to_deck = function (self, card, from_debuff)
		if not card.ability then card.ability = {} end
		card.ability.saved_ability = FG.cards.invisible.selected.ability
		card.ability.saved_key = FG.cards.invisible.selected.config.center.key
		--FG.cards.invisible.elegible_jokers = {}
		--FG.cards.invisible.selected = {}
	end,
	calculate = function (self, card, context)
		if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
			if card.ability.extra.rounds == 1 then
				for i=1, card.ability.extra.copies do
					local c = SMODS.add_card { key = card.ability.saved_key, edition = "e_negative" }
					c.ability = card.ability.saved_ability
				end
				card:start_dissolve()
				return {
					message = localize("k_fg_active")
				}
			end
			card.ability.extra.rounds = card.ability.extra.rounds - 1
			return {
				message = card.ability.extra.rounds .. " left!"
			}
		end
	end
}
-- Brainstorm
-- Satellite
-- Shoot the moon
SMODS.Joker{
	key = 'shoot_the_moon',
	atlas = 'Joker',
	prefix_config = {atlas = false},
	pos = {x=2,y=6},
	rarity = 'fg_common_alt',
	cost = 4,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_shoot_the_moon'
		},
		extra = {
			mult = 0,
			mult_i = 3
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.mult,
				card.ability.extra.mult_i
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
			for _,v in ipairs(G.hand.cards) do
				if FG.FUNCS.get_card_info(v).is_face then
					card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_i
					G.E_MANAGER:add_event(Event({
						func = function ()
							v:juice_up()
							return true
						end
					}))
					FG.FUNCS.card_eval_status_text{
						card = card,
						message = "+"..card.ability.extra.mult_i.." Mult",
						mode = "literal",
						colour = "mult"
					}
				end
			end
		end
		if context.joker_main then return {mult = card.ability.extra.mult} end
	end
}
-- Driver's license
SMODS.Joker{
    key = "drivers_license",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 0, y = 7},
    rarity = "fg_rare_alt",
    cost = 6,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_drivers_license"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 3
		}
    },
    loc_vars = function (self, info_queue, card)
		local enhanced_cards = 0
		local playing_cards = 0
		if G.playing_cards then
			for _,v in ipairs(G.playing_cards) do if FG.FUNCS.get_card_info(v).key ~= "c_base" then enhanced_cards = enhanced_cards + 1 end end 
			playing_cards = #G.playing_cards
		end
		return {
            vars = {
				card.ability.extra.xmult,
				enhanced_cards,
				math.ceil(playing_cards/2) or 0
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.joker_main then
			local enhanced_cards = 0
			for _,v in ipairs(G.playing_cards) do if FG.FUNCS.get_card_info(v).key ~= "c_base" then enhanced_cards = enhanced_cards + 1 end end
			if enhanced_cards >= math.ceil(#G.playing_cards/2) then return {xmult = 3} end
		end
    end
}
-- Cartomancer
-- Astronomer
-- Burnt
-- Bootstraps
SMODS.Joker{
    key = "bootstraps",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 9, y = 8},
    rarity = "fg_common_alt",
    cost = 5,
      
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_bootstraps"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			mult = 0,
			mult_i = 6,
			cost = 3,
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.mult,
				card.ability.extra.mult_i,
				card.ability.extra.cost
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.end_of_round and context.cardarea == G.jokers and not context.blueprint then
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.mult_i.." Mult",
				mode = "literal",
				colour = "mult"
			}
			card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_i
			
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "-$"..card.ability.extra.cost,
				mode = "literal",
				colour = "red"
			}
			ease_dollars(-card.ability.extra.cost)
		end
		if context.joker_main then return {mult = card.ability.extra.mult} end
    end
}
-----------------
---Legendaries---
-----------------
-- Canio
SMODS.Joker{
    key = "caino",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 3, y = 8},
	soul_pos = { x = 3, y = 9},
    rarity = "fg_legendary_alt",
    cost = 20,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_caino"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1,
			xmult_i = 0.2
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.discard and FG.FUNCS.get_card_info(context.other_card).is_face and not context.blueprint then
			card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+X"..card.ability.extra.xmult_i,
				mode = "literal",
				colour = "mult"
			}
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
    end
}
-- Triboulet
SMODS.Joker{
    key = "triboulet",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 4, y = 8},
	soul_pos = { x = 4, y = 9},
    rarity = "fg_legendary_alt",
    cost = 20,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_triboulet"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1,
			xmult_i = 0.4
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.individual and context.cardarea == G.play and FG.FUNCS.get_card_info(context.other_card).is_face and not context.blueprint then
			card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+X"..card.ability.extra.xmult_i,
				mode = "literal",
				colour = "mult"
			}
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
    end
}
-- Yorick
SMODS.Joker{
    key = "yorick",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 5, y = 8},
	soul_pos = { x = 5, y = 9},
    rarity = "fg_legendary_alt",
    cost = 20,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_yorick"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			xmult = 1,
			xmult_i = 1,
			req_hands = 5,
			cur_hands = 0
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.xmult,
				card.ability.extra.xmult_i,
				card.ability.extra.req_hands or 5,
				card.ability.extra.cur_hands or 0
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.before and not context.blueprint then
			card.ability.extra.cur_hands = card.ability.extra.cur_hands + 1
			if card.ability.extra.cur_hands >= card.ability.extra.req_hands then
				card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_i
				card.ability.extra.cur_hands = 0
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "+X"..card.ability.extra.xmult_i,
					mode = "literal",
					colour = "mult"
				}
			end
		end
		if context.joker_main then return {xmult = card.ability.extra.xmult} end
    end
}
-- Chicot
SMODS.Joker{
    key = "chicot",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 6, y = 8},
	soul_pos = { x = 6, y = 9},
    rarity = "fg_legendary_alt",
    cost = 20,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_chicot"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			discards = 0,
			discards_i = 1
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.discards,
				card.ability.extra.discards_i
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.end_of_round and not context.blueprint and G.GAME.blind.boss and not context.repetition and not context.individual then
			card.ability.extra.discards = card.ability.extra.discards + card.ability.extra.discards_i
			G.GAME.round_resets.discards = G.GAME.round_resets.discards + card.ability.extra.discards_i
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = "+"..card.ability.extra.discards_i.." discards",
				mode = "literal",
			}
		end
		if context.selling_self then 
			G.GAME.round_resets.discards = G.GAME.round_resets.discards - card.ability.extra.discards
			if G.GAME.round_resets.discards < 0 then G.GAME.round_resets.discards = 0 end
		end
    end
}
-- Perkeo
SMODS.Joker{
    key = "perkeo",
    atlas = 'Joker',
	prefix_config = {atlas = false},
    pos = { x = 7, y = 8},
	soul_pos = { x = 7, y = 9},
    rarity = "fg_legendary_alt",
    cost = 20,
    
     -- Custom logic for spawning
    config = {
		fg_data = {
			is_alternate = true,
			alternate_card = "j_perkeo"
		},
        fg_alternate = {}, -- Kept between alternations
        extra = {
			count = 1
		}
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
				card.ability.extra.count
			}
        }
    end,
    blueprint_compat = true,
    calculate = function (self, card, context)
		if context.end_of_round and context.cardarea == G.jokers and G.GAME.blind.boss then
			local ellegible_jokers = {}
			local choosen_joker = {}
			for _,v in ipairs(G.jokers.cards) do
				--print("Checking jokers")
				if not ( FG.FUNCS.get_card_info(v).edition == "e_negative" or FG.FUNCS.get_card_info(v).key == self.key ) then
					table.insert(ellegible_jokers,v)
					--print("joker added, key="..FG.FUNCS.get_card_info(v).key)
				end
			end
			if not next(ellegible_jokers) then
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = 'k_nope_ex'
				}
				return
			end
			choosen_joker = ellegible_jokers[pseudorandom("mila",1,#ellegible_jokers)]
			local new_card = copy_card(choosen_joker)
			new_card:set_edition("e_negative")
			new_card:set_eternal(false)
			new_card:set_perishable()
			new_card.ability.perish_tally = new_card.ability.perish_tally + 1
			new_card:add_to_deck()
            G.jokers:emplace(new_card)
		end
    end
}

-----------------
---Collectives---
-----------------
-- Deathmodereal
SMODS.Joker {
	key = 'deathmodereal',
	rarity = "fg_collective",
	cost = 30,
	atlas = "collective",
	pos = { x = 3, y = 0 },
	config = {
	fg_data = {
		is_alternate = false,
		alternate_card = "j_fg_deathmoderealalt"
	}, extra = { Xmult = 20, blindchipmult = 2 } },
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.Xmult
			}
		}
	end,
	calculate = function(self, card, context)
		if G.jokers then
			if context.before then
				G.E_MANAGER:add_event(Event({
					func = function()
						G.GAME.blind.chips = G.GAME.blind.chips * card.ability.extra.blindchipmult
						G.GAME.blind.chip_text = number_format(G.GAME.blind.chips)
						G.FUNCS.blind_chip_UI_scale(G.hand_text_area.blind_chips)
						G.HUD_blind:recalculate()
						return true
					end
				}))
				return {
					message = "hehehehehe....",
					colour = G.C.WHITE
				}
			end
		end
		if context.joker_main then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end
}
-- Deathmodereal alt
SMODS.Joker {
	key = 'deathmoderealalt',
	config = {
	fg_data = {
		is_alternate = true,
		alternate_card = "j_fg_deathmodereal"
	}, extra = { Xmult = 1.25 } },
	loc_vars = function(self, info_queue, card)
		return { vars = { card.ability.extra.Xmult } }
	end,
	rarity = "fg_collective_alt",
	atlas = 'collective',
	pos = { x = 4, y = 0 },
	cost = 30,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			return {
				Xmult = card.ability.extra.Xmult
			}
		end
	end
}
-- Jogla (I was told he was op, but I decided to not change it lol)
SMODS.Joker {
	key = 'jogla',
	config = {
	fg_data = {
		is_alternate = false,
		alternate_card = "j_fg_jogla_alt"
	}, extra = { duplicate = 2, name = "None"} },
	update = function (self, card, dt)
		if G.consumeables then
			if G.consumeables.cards[1] then
				card.ability.extra.name = G.consumeables.cards[1].config.center.name
				card.ability.extra.name = localize{type = "name_text", set = G.consumeables.cards[1].ability.set, key = G.consumeables.cards[1].config.center.key}
			else
				card.ability.extra.name = "None"
			end
		end
	end,
	loc_vars = function(self, info_queue, card)
		info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
		if G.consumeables then
			if G.consumeables.cards[1] then
				info_queue[#info_queue+1] = G.consumeables.cards[1].config.center
			end
		end
		return {
			vars = {
				card.ability.extra.duplicate,
				card.ability.extra.name
			}
		}
	end,
	rarity = "fg_collective",
	atlas = 'collective',
	pos = { x = 2, y = 0 },
	soul_pos = { x = 2, y = 1 },
	cost = 30,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.ending_shop and G.consumeables.cards[1] then
			local target_card_key = G.consumeables.cards[1].config.center.key
			if target_card_key ~= nil then
				FG.FUNCS.card_eval_status_text{
					card = card,
					message = "k_duplicated_ex",
					mode = "localize",
					category = "dictionary"
				}
				for i=1, card.ability.extra.duplicate do
					local new_card = SMODS.add_card{
						key = target_card_key,
						edition = "e_negative"
					}
				end
			end
			--card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Upgrade!" })
		end
	end
}
SMODS.Joker {
	key = 'jogla_alt',
	config = {
	fg_data = {
		is_alternate = true,
		alternate_card = "j_fg_jogla"
	}, extra = { increase = 1, extra_size = 2} },
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.increase,
				card.ability.extra.extra_size
			}
		}
	end,
	rarity = "fg_collective_alt", 
	atlas = 'collective',
	pos = { x = 2, y = 0 },
	soul_pos = { x = 2, y = 1 },
	cost = 5,
	blueprint_compat = false,
	add_to_deck = function (self, card, from_debuff)
		G.hand:change_size(card.ability.extra.extra_size)
	end,
	remove_from_deck = function (self, card, from_debuff)
		G.hand:change_size(-card.ability.extra.extra_size)
	end,
	calculate = function(self, card, context)
		if context.setting_blind and not context.blueprint then
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "+"..card.ability.extra.extra_size.." hand size!" })
		end
		if context.end_of_round and not context.blueprint and G.GAME.blind.boss and not context.repetition and not context.individual then
			card.ability.extra.extra_size = card.ability.extra.extra_size + card.ability.extra.increase
			G.hand:change_size(card.ability.extra.increase)
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Upgrade!" })
		end
	end
}
SMODS.Joker {
	key = 'goldenleaf',
	config = {
		fg_data = {
			is_alternate = false,
			alternate_card = "j_fg_goldenleafalt"
		}, extra = { Xmult = 3 } },
	loc_vars = function(self, info_queue, card)
		table.insert(info_queue,G.P_CENTERS.m_gold)
		table.insert(info_queue,G.P_CENTERS.m_fg_gold)
		return { vars = { card.ability.extra.Xmult } }
	end,
	rarity = 'fg_collective',
	atlas = 'collective',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	cost = 30,
	blueprint_compat = true,
	calculate = function(self, card, context)
		if context.individual and context.cardarea == G.play then
			if FG.FUNCS.get_card_info(context.other_card).key == "m_gold" or FG.FUNCS.get_card_info(context.other_card).key == "m_fg_gold" then
				return{
					xmult = card.ability.extra.Xmult
				}
			end
		end
	end
}
-- goldenleaf alt
SMODS.Joker {
	key = 'goldenleafalt',
	config = {
	fg_data = {
		is_alternate = true,
		alternate_card = "j_fg_goldenleaf"
	}, extra = { increase = 1, extra_size = 0} },
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.increase,
				card.ability.extra.extra_size
			}
		}
	end,
	rarity = "fg_collective_alt", 
	atlas = 'collective',
	pos = { x = 0, y = 0 },
	soul_pos = { x = 0, y = 1 },
	cost = 30,
	blueprint_compat = false,
	calculate = function(self, card, context)
		if context.end_of_round and not context.blueprint and G.GAME.blind.boss and not context.repetition and not context.individual then
			card.ability.extra.extra_size = card.ability.extra.extra_size + card.ability.extra.increase
			G.GAME.round_resets.hands = G.GAME.round_resets.hands + card.ability.extra.increase
			ease_hands_played(card.ability.extra.increase)
			card_eval_status_text(card, 'extra', nil, nil, nil, { message = "+"..card.ability.extra.extra_size.." hand(s)!" })
		end
	end
}
-- Jenku
-- shes fucking op i will probably nerf her but its 4am
--hello chat it is i jenku it is 4am again! i am now going to fix. this. thINGOID
-- devlog time!!! violin voucher flashbacks
SMODS.Joker {
	key = 'jenker',
	config = {
	fg_data = {
		is_alternate = false,
		alternate_card = "j_fg_jenkeralt"
	}, extra = { repetitions = 1, increase = false } },
	loc_vars = function(self, info_queue, card)
		return {
			vars = {
				card.ability.extra.repetitions
			}
		}
	end,
	rarity = "fg_collective",
	atlas = 'collective',
	pos = { x = 1, y = 0 },
	soul_pos = { x = 1, y = 1 },
	cost = 30,
	calculate = function(self, card, context)
		if not context.blueprint then	
			if card.ability.extra.repetitions == 0 then
				card.ability.extra.repetitions = 1
			end
			if context.end_of_round and not context.repetition and not context.individual and G.GAME.blind.boss then
				card.ability.extra.repetitions = card.ability.extra.repetitions + 1
			end
			if context.retrigger_joker_check and not context.retrigger_joker and card ~= self then
				return { 
					repetitions = card.ability.extra.repetitions
				} 
			end
		end
	end
}
-- Jenku alt
SMODS.Joker {
	key = 'jenkeralt',
	config = {
	fg_data = {
		is_alternate = true,
		alternate_card = "j_fg_jenker"
	}, extra = { name = "jenku", repetitions = 5, odds = 4} },
	rarity = "fg_collective_alt",
	atlas = 'collective',
	loc_txt = {
		name = "#1#",
		text = {""}
	},
	pos = { x = 1, y = 0 },
	soul_pos = { x = 1, y = 1 },
	cost = 30,
	-- how the FUCK DO I MAKE THIS ABLE TO BE LOCALISED?????
	-- I JUST OPENED CELESTE INSTEAD OF BALATRO ITS STILL 4AM
	loc_vars = function(self, info_queue, card)
		return {
			main_end = {
				{n=G.UIT.R, config= {align="bm", padding = 0.02}, nodes={
					{n=G.UIT.C, config={align = "m", colour=colour, r=0.05, padding=0.05}, nodes={
						{n=G.UIT.T, config={text = "Retriggers every", colour = G.C.UI.TEXT_DARK, scale=0.3}},
						{
							n = G.UIT.O,
							config = {
								object = DynaText({
									string = { "scORed Card", "scp]o}{d }ca", "Cscored ()'", "560$30 6470", "sd[]{;l''l;} a;'", "834934-230", "s{;} @:[ored]"},
									colours = { G.C.RED },
									pop_in_rate = 9999999,
									silent = true,
									random_element = true,
									pop_delay = 0.30,
									scale = 0.32,
									min_cycle_time = 0,
								}),
							},
						},
					}}
				}},
				{n=G.UIT.R, config= {align="bm", padding = 0.02}, nodes={
					{n=G.UIT.C, config={align = "m", colour=colour, r=0.05, padding=0.05}, nodes={
						{
							n = G.UIT.O,
							config = {
								object = DynaText({
									string = { "-1", "0", "1", "2", "3", "4", "5"},
									colours = { G.C.IMPORTANT },
									pop_in_rate = 9999999,
									silent = true,
									random_element = true,
									pop_delay = 0.30,
									scale = 0.32,
									min_cycle_time = 0,
								}),
							},
						},
						{n=G.UIT.T, config={text = "times.", colour = G.C.UI.TEXT_DARK, scale=0.3}},
						{n=G.UIT.T, config={text = "1/4", colour = G.C.IMPORTANT, scale=0.3}},
						{n=G.UIT.T, config={text = "chance to", colour = G.C.UI.TEXT_DARK, scale=0.3}},
						{n=G.UIT.T, config={text = "debuff", colour = G.C.UI.TEXT_DARK, scale=0.3}},
					}}
				}},
				{n=G.UIT.R, config= {align="bm", padding = 0.02}, nodes={
					{n=G.UIT.C, config={align = "m", colour=colour, r=0.05, padding=0.05}, nodes={
						{n=G.UIT.T, config={text = "every card in", colour = G.C.UI.TEXT_DARK, scale=0.3}},
						{
							n = G.UIT.O,
							config = {
								object = DynaText({
									string = { "scoring hand", "scp]as}ga }ha", "8Coirgng ad()'", "56$30 6470", "s[]{;l''l;} a;'", "834934-230", "s{;} @:[ored]"},
									colours = { G.C.RED },
									pop_in_rate = 9999999,
									silent = true,
									random_element = true,
									pop_delay = 0.30,
									scale = 0.32,
									min_cycle_time = 0,
								}),
							},
						},
					}}
				}},
				{n=G.UIT.R, config= {align="bm", padding = 0.02}, nodes={
					{n=G.UIT.C, config={align = "m", colour=colour, r=0.05, padding=0.05}, nodes={
						{n=G.UIT.T, config={text = "Uh, this one's kinda.. broken. You sure?", colour = G.C.UI.TEXT_INACTIVE, scale=0.25}},
					}}
				}},
			},
			vars = {card.ability.extra.name,card.ability.extra.repetitions,card.ability.extra.odds}
		}
	end,
	calculate = function(self, card, context)
		if not context.blueprint then	
			local debuffing = false
			if context.before then
				if pseudorandom('jenker') < (G.GAME.probabilities.normal or 1) / self.config.extra.odds then
					debuffing = true
					card.ability.extra.name = "janku"
					card.children.center:set_sprite_pos({x = 5, y = 0})
					card.children.floating_sprite:set_sprite_pos({x = 5, y = 1})
					card_eval_status_text(card, 'extra', nil, nil, nil, { message = "Nope!" })
					
					for i in ipairs(context.scoring_hand) do
						SMODS.debuff_card(context.scoring_hand[i], true, "jenkerdebuff")
					end
				end
			end
			-- random repetition logic
			if context.repetition and context.cardarea == G.play then
				if not debuffing then
					local random_repetitions = pseudorandom('jenker', 1, card.ability.extra.repetitions)
					return {
						message = localize('k_again_ex'),
						repetitions = random_repetitions,
						card = card
					}
				end
			end
			-- reset card to default at end of round, go thru playing cards and un-debuff them all
			-- i spent an hour and 20 minutes debugging this. my indentation was goofed. oh my god.
			if context.end_of_round then
				debuffing = nil
				card.ability.extra.name = "jenku"
				card.children.center:set_sprite_pos({x = 1, y = 0})
				card.children.floating_sprite:set_sprite_pos({x = 1, y = 1})
				
				for _, playing_card in pairs(G.playing_cards) do
						SMODS.debuff_card(playing_card, false, "jenkerdebuff")
				end
			end
		end
	end
}
-- Samuran
SMODS.Joker{
	key = 'samuran',
	-- missing atlas key
	rarity = 'fg_collective',
	cost = 30,
	config = {
		fg_data = {
			is_alternate = false,
			alternate_card = 'j_fg_samuran_alt'
		},
		extra = {
			max_chance = 2
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				G.GAME.probabilities.normal,
				card.ability.extra.max_chance,
			}
		}
	end,
	blueprint_compat = true,
	calculate = function (self, card, context)
		if context.using_consumeable
		and 
		  ((FG.FUNCS.get_card_info(context.consumeable).edition ~= 'e_negative'
		  and FG.FUNCS.random_chance(card.ability.extra.max_chance))
		or FG.test.samuran_is_copy_paste) then
			local c = SMODS.add_card{
				key = FG.FUNCS.get_card_info(context.consumeable).key
			}
			c:set_edition('e_negative',true,false)
			FG.FUNCS.card_eval_status_text{
				card = card,
				message = 'Copied!',
				mode = 'literal',
			}
		end
	end
}
SMODS.Joker{
	key = 'samuran_alt',
	-- Missing atlas data
	rarity = 'fg_collective_alt',
	cost = 30,
	config = {
		fg_data = {
			is_alternate = true,
			alternate_card = 'j_fg_samuran'
		},
		extra = {
			inflation = 1,
		}
	},
	blueprint_compat = false,
	calculate = function (self, card, context)
		if G.shop_jokers and context.starting_shop or context.reroll_shop and not context.blueprint then
			for _,v in ipairs(G.shop_jokers.cards) do
				if v.config.center.set ~= 'Joker' then
					G.E_MANAGER:add_event(Event{
						trigger = 'after',
						delay = 0.1,
						func = function ()
							v:set_edition('e_negative',true,false)
							return true
						end
					})
				end

				local c = 0
				for _,vv in ipairs(G.consumeables.cards) do
					if FG.FUNCS.get_card_info(vv).edition == 'e_negative' then
						c = c + card.ability.extra.inflation
					end
				end
				v.cost = v.cost + c
			end
		end
	end
}