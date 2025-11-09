FG.cards.steel = {-- Stores global card info.
	mult = 1
}

SMODS.Atlas {
	key = 'stone_alt',
	path = 'stone_sole.png',
	px = 71,
	py = 95
}

SMODS.Enhancement{
	key = "bonus",
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = { x = 1, y = 1 },
			fg_data = {
			is_alternate = true,
			alternate_key ='m_bonus',
			base_enhancement = true,
		},
	config = {
		extra = {
			grant_max = 2,
			grant_amount = 60,
			remove_max = 4,
			remove_amount = 15
		}
	},
	loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(nil, 1, 1)
		card.ability.bonus = 0
		return {
			vars = {
				num,
				card.ability.extra.grant_max * denom,
				card.ability.extra.grant_amount,
				num,
				card.ability.extra.remove_max * denom,
				card.ability.extra.remove_amount
			}
		}
	end,
	calculate = function (self, card, context)
		if context.before then
			card.ability.bonus = 0
			if FG.FUNCS.random_chance(card.ability.extra.grant_max) then
				card.ability.bonus = card.ability.extra.grant_amount
			end
			if FG.FUNCS.random_chance(card.ability.extra.remove_max) then
				card.ability.bonus = -card.ability.extra.remove_amount
				if hand_chips - card.ability.extra.remove_amount < 1 then card.ability.chips = -hand_chips end
			end
		end
		if context.after then
			card.ability.bonus = 0
		end
	end
}

SMODS.Enhancement{
	key = "mult",
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = { x = 2, y = 1 },
		fg_data = {
			is_alternate = true,
			alternate_key ='m_mult',
			base_enhancement = true,
		},	
	config = {
		extra = {
			grant_max = 2,
			grant_amount = 8,
			remove_max = 4,
			remove_amount = 2
		}
	},
	loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(nil, 1, 1)
		return {
			vars = {
				num,
				card.ability.extra.grant_max * denom,
				card.ability.extra.grant_amount,
				num,
				card.ability.extra.remove_max * denom,
				card.ability.extra.remove_amount
			}
		}
	end,
	calculate = function (self, card, context)
		if context.before then
			card.ability.mult = 0
			if FG.FUNCS.random_chance(card.ability.extra.grant_max) then
				card.ability.mult = card.ability.extra.grant_amount
			end
			if FG.FUNCS.random_chance(card.ability.extra.remove_max) then
				card.ability.mult = -card.ability.extra.remove_amount
				if mult - card.ability.extra.remove_amount < 1 then card.ability.mult = -mult + 1 end
			end
		end
		if context.after then
			card.ability.mult = 0
		end
	end
}


SMODS.Enhancement{
	key = "wild",
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = { x = 3, y = 1},
		fg_data = {
			is_alternate = true,
			alternate_key ='m_wild',
			base_enhancement = true,
		},	
	config = {
		extra = {
			chips = 20,
			mult = 6,
			xmult = 1.25,
			dollars = 3
		}
	},
	loc_vars = function (self, info_queue, card)
		return {
			vars = {
				card.ability.extra.chips,
				card.ability.extra.mult,
				card.ability.extra.xmult,
				card.ability.extra.dollars
			}
		}
	end,
	calculate = function (self, card, context)
		if context.main_scoring and context.cardarea == G.play then
			local choice = pseudorandom("mila",1,4)
			if choice == 1 then
				return {chips = card.ability.extra.chips }
			elseif choice == 2 then
				return {mult = card.ability.extra.mult}
			elseif choice == 3 then
				return {xmult = card.ability.extra.xmult}
			elseif choice == 4 then
				return {dollars = card.ability.extra.dollars}
			end
		end
	end
}

SMODS.Enhancement{
	key = "glass",
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = { x = 5, y = 1 },
		fg_data = {
			is_alternate = true,
			alternate_key ='m_glass',
			base_enhancement = true,
		},	
	config = {
		bonus = 0,
		x_mult = 0,
	},
	loc_vars = function(self,info_queue, card)
		return {vars = {card.ability.x_mult}}
	end,
	replace_base_card = true,
	no_rank = true,
	no_suit = true,
	always_scores = true,
	calculate = function(self,card,context)
		if context.before and not context.repetition and not context.individual then
			card.ability.bonus = 0
			for _,v in pairs(G.play.cards) do
				if FG.FUNCS.get_card_info(v).key == "m_fg_glass" then
					card.ability.x_mult = card.ability.x_mult + 1
				end
			end
			if card.ability.x_mult <= 0 then card.ability.x_mult = 1 end
		end
		if context.after and context.cardarea == G.play then
			G.E_MANAGER:add_event(Event({
				trigger = "after",
				delay = 0.5,
				func = function ()
					card:shatter()
					return true
				end
			}))
		 end
	end
}

--display is broken please fix

SMODS.Enhancement{
	key = "steel",
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = { x = 6, y = 1},
		fg_data = {
			is_alternate = true,
			alternate_key ='m_steel',
			base_enhancement = true,
		},	
	config = {
		extra = {
			card_gain = 0.05, -- How much Xmult is gained per steel card.
			card_mult = 1 -- How much Xmult all steel cards give.
		}
	},
	loc_vars = function (self, info_queue, card)
		if G.playing_cards then
			FG.cards.steel.mult = 1
			card.ability.extra.card_mult = FG.cards.steel.mult
			for _,v in pairs(G.playing_cards) do
				if tostring(FG.FUNCS.get_card_info(v).key) == "m_fg_steel" then
					FG.cards.steel.mult = FG.cards.steel.mult + card.ability.extra.card_gain
				end
			end
		end
		card.ability.extra.card_mult = FG.cards.steel.mult
		return {
			vars = {
				card.ability.extra.card_gain,
				card.ability.extra.card_mult
			}
		}
	end,
	calculate = function (self, card, context)
		card.ability.h_x_mult = FG.cards.steel.mult
	end
}

local stone = {
	triggered = false, -- True if the function has been trigger already.
	trigger = function (triggered) -- Very scuffed function to make stone card work. Only argument checks if the function has been triggered already.
		if not triggered then
			local c = 0
			for k,v in pairs(G.hand.cards) do
				local card = v
				local lock = false
				if FG.FUNCS.get_card_info(card).key == "m_fg_stone" then lock = card.ability.extra.lock end -- Find stone card in hand, check if it is locked.
				c = c + 1
				--print("c="..c)
				if FG.FUNCS.get_card_info(v).key == "m_fg_stone" and not lock then -- If not locked, convert left and right card. Otherwise do nothing.
					--print("Valid card found")
					if c > 1 then -- If not leftmost card
						--print("stone left")
						local target = G.hand.cards[c-1]
						target:set_ability("m_fg_stone")
						target.ability.extra.chips = card.ability.extra.chips + card.ability.extra.gain
						target.ability.extra.lock = true
					end
					if c < #G.hand.cards then -- If not rightmost card
						--print("stone right")
						local target = G.hand.cards[c+1]
						target:set_ability("m_fg_stone")
						target.ability.extra.chips = card.ability.extra.chips + card.ability.extra.gain
						target.ability.extra.lock = true
					end
					card:start_dissolve()
				end
			end
		end
		return true
	end
}

SMODS.Enhancement{
	key = "stone",
	atlas = 'stone_alt',
	pos = { x = 0, y = 0 },
		fg_data = {
			is_alternate = true,
			alternate_key ='m_stone',
			base_enhancement = true,
		},	
	config = {
		h_chips = 30,
		extra = {
			chips = 30,
			gain = 15,
			lock = false,
			selected = false
		}
		},
	loc_vars = function(self,info_queue, card)
		return {vars = {
			card.ability.h_chips,
			card.ability.extra.chips,
			card.ability.extra.gain,
			card.ability.extra.lock,
			card.ability.extra.selected
		}}
	end,
	replace_base_card = false,
	calculate = function (self, card, context)
		if context.before and context.cardarea == G.hand then
			stone.triggered = stone.trigger(stone.triggered)
			card.ability.h_chips = card.ability.extra.chips
			if not card.ability.extra.lock then card.ability.h_chips = 0 end
		end
		if context.after then
			stone.triggered = false 
			card.ability.extra.lock = false
		end
		--print(stone.triggered)
	end
}

SMODS.Enhancement{
	key = "gold",
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = { x = 6, y = 0},
		fg_data = {
			is_alternate = true,
			alternate_key ='m_gold',
			base_enhancement = true,
		},	
	config = {
		extra = {
			dollars = 0
		}
	},
	loc_vars = function (self, info_queue, card)
		if G.hand then
			card.ability.extra.dollars = math.ceil(#G.hand.cards/2)
		end
		return {
			vars = {
				card.ability.extra.dollars
			}
		}
	end,
	calculate = function (self, card, context)
		card.ability.h_dollars = card.ability.extra.dollars
	end
}
SMODS.Enhancement:take_ownership('lucky',
    {
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = {x = 4, y = 1},
	config = {
		extra = {
			mult_max = 5,
			mult = 20,
			money_max = 15,
			money = 20
		}
	},
	loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(nil, 1, 1)
		return { vars = {
			num,
			card.ability.extra.mult_max * denom,
			card.ability.extra.mult,
			num,
			card.ability.extra.money_max * denom,
			card.ability.extra.money
		}}
	end,
	calculate = function (self, card, context)
		card.ability.bonus = 0
		if FG.FUNCS.random_chance(card.ability.extra.mult_max, card) then
			card.ability.mult = card.ability.extra.mult
		end
		if FG.FUNCS.random_chance(card.ability.extra.money_max, card) then
			card.ability.p_dollars = card.ability.extra.money
		else
			card.ability.p_dollars = 0
		end
	end
    },
    true
)
SMODS.Enhancement{
	key = "lucky",
	atlas = "centers",
	prefix_config = {atlas = false},
	pos = {x = 4, y = 1},
		fg_data = {
			is_alternate = true,
			alternate_key ='m_lucky',
			base_enhancement = true,
		},	
	config = {
		extra = {
			chips_max = 3,
			chips = 30,
			money_max = 30,
			money = 50
		}
	},
	loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(nil, 1, 1)
		return { vars = {
			num,
			card.ability.extra.chips_max * denom,
			card.ability.extra.chips,
			num,
			card.ability.extra.money_max * denom,
			card.ability.extra.money
		}}
	end,
	calculate = function (self, card, context)
		card.ability.bonus = 0
		if FG.FUNCS.random_chance(card.ability.extra.chips_max, card) then
			card.ability.bonus = card.ability.extra.chips
		end
		if FG.FUNCS.random_chance(card.ability.extra.money_max, card) then
			card.ability.p_dollars = card.ability.extra.money
		else
			card.ability.p_dollars = 0
		end
	end
}