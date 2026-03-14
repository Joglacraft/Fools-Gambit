FG.ALTS.edition_equivalents = {
    meta = {},
	e_polychrome = "e_fg_polished",
	e_negative = "e_negative",
	e_holographic = "e_fg_holographic",
	e_foil = "e_fg_foil"
} -- use for alternating later

--
-- POLISHED
--

SMODS.Shader {
    key = 'polished',
    path = 'polished.fs'
}
if FG.config.debug_mode then
SMODS.Edition({
    key = "polished",
    loc_txt = {
        name = "Polished",
        label = "Polished",
        text = {
            "{X:chips,C:white}x#1#{} Chips"
        }
    },

    shader = "polished",
    discovered = true,
    unlocked = true,
    config = { extra = { xchips = 1.5 } },
    in_shop = true,
    weight = 3,
    extra_cost = 4,
    apply_to_float = false,
	calculate = function(self, card, context)
		if context.post_joker or (context.main_scoring and context.cardarea == G.play) then
            return {x_chips = self.config.extra.xchips}
		end
    end,
    loc_vars = function(self)
        return { vars = { self.config.extra.xchips } }
    end
})

--
-- FOIL
--

SMODS.Shader {
    key = 'foil',
    path = 'foil.fs'
}

SMODS.Edition({
    key = "foil",
    loc_txt = {
        name = "Foil",
        label = "Foil",
        text = {
            "{C:chips}+#1#{} Chips",
            "{C:green}#2# in #3#{} chance to retrigger"
        }
    },
    shader = "foil",
    discovered = true,
    unlocked = true,
    config = { extra = { chips = 30, odds = 2 } },
    in_shop = true,
    weight = 8,
    extra_cost = 2,
    apply_to_float = false,
    loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'fg_e_foil')
        return {
            vars = {
                card.config.extra.chips,
                num,
                denom
            }
        }
    end,
    calculate = function(self, card, context)
        local chips_total = 0
        if context.post_joker or (context.main_scoring and context.cardarea == G.play) then
            while true do
                chips_total = chips_total + card.config.extra.chips
                if SMODS.pseudorandom_probability(card, 1, card.ability.extra.odds, 'fg_e_foil') then
                    card_eval_status_text(card, 'extra', nil, nil, nil, { message = "+"..tostring(self.config.extra.chips).." "..localize("k_chip")})
                    card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize("k_again_ex")})
                else
                    break
                end
            end
            return { chips_mod = chips_total }
        end
    end
})

--
-- HOLOGRAPHIC
--

SMODS.Shader {
    key = 'holo',
    path = 'holo.fs'
}

SMODS.Edition({
    key = "holographic",
    loc_txt = {
        name = "Holographic",
        label = "Holographic",
        text = {
            "{C:mult}+#1#{} Mult",
            "{C:green}#2# in #3#{} chance to retrigger"
        }
    },
    shader = "holo",
    discovered = true,
    unlocked = true,
    config = { extra = { mult = 7, odds = 2 } },
    in_shop = true,
    weight = 8,
    extra_cost = 3,
    apply_to_float = false,
    loc_vars = function(self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'fg_e_holo')
        return {
            vars = {
                card.config.extra.mult,
                num,
                denom
            }
        }
    end,
    calculate = function(self, card, context)
        local mult_total = 0
        if context.post_joker or (context.main_scoring and context.cardarea == G.play) then
            while true do
                mult_total = mult_total + card.config.extra.mult
                if SMODS.pseudorandom_probability(card, 1, card.ability.extra.odds, 'fg_e_holo') then
                    card_eval_status_text(card, 'extra', nil, nil, nil, { message = "+"..tostring(self.config.extra.mult).." "..localize("k_mult")})
                    card_eval_status_text(card, 'extra', nil, nil, nil, { message = localize("k_again_ex")})
                else
                    break
                end
            end
            return { mult_mod = mult_total }
        end
    end
})

--
-- POLYCHROME
--

SMODS.Shader {
    key = 'polychrome',
    path = 'polychrome.fs'
}

SMODS.Edition({
    key = "polychrome",
    loc_txt = {
        name = "Polychrome",
        label = "Polychrome",
        text = {
            "Retriggers card scored",
            "{C:attention}#2#/#3#{} chance to {C:mult}x#1#{} Mult"
        }
    },
    shader = "polychrome",
    discovered = true,
    unlocked = true,
    config = { extra = { xmult = 1.5, odds = 3 } },
    in_shop = true,
    weight = 8,
    extra_cost = 5,
    apply_to_float = false,
	loc_vars = function(self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'fg_e_poly')
        return { vars = { card.config.extra.xmult, num, denom } }
    end,
	calculate = function(self, card, context)
		if context.post_joker or (context.main_scoring and context.cardarea == G.play) then
            if SMODS.pseudorandom_probability(card, 1, card.ability.extra.odds, 'fg_e_poly') then
                return {repetitions = 1, Xmult_mod = card.config.extra.xmult}
            end
        end
        if (context.repetition or context.retrigger_joker_check) and context.other_card == card then
            return {repetitions = 1}
        end
	end
})


--
-- NEGATIVE
--

SMODS.Shader {
    key = 'negative',
    path = 'negative.fs'
}

SMODS.Edition({
    key = "negative",
    loc_txt = {
        name = "Negative",
        label = "Negative",
        text = {
            "{C:edition}+1{} Consumeable Slot",
            "{C:edition}+1{} Hand Size"
        }
    },
    -- this needs to be made to have different effects depending on whether its on a card or a consumeable
    shader = "negative",
    discovered = true,
    unlocked = true,
    config = { extra = { slots = 1 } },
    in_shop = true,
    weight = 8,
    extra_cost = 5,
    apply_to_float = false,
	loc_vars = function(self)
        return { vars = { self.config.extra.slots } }
    end,
    on_apply = function(self)
        if self.added_to_deck then
        G.consumeables.config.card_limit = G.consumeables.config.card_limit+1
        G.hand.config.card_limit = G.hand.config.card_limit+1
        end
	end,
	on_remove = function(self)
	    if self.remove_from_deck and G.consumeables and G.hand then
            G.consumeables.config.card_limit = G.consumeables.config.card_limit-1
            G.hand.config.card_limit = G.hand.config.card_limit-1
	    end
	 end,
	 calculate = function(self, card, context)
	 if context.selling_self then
	 G.consumeables.config.card_limit = G.consumeables.config.card_limit-1
      G.hand.config.card_limit = G.hand.config.card_limit-1
	  end
	  end
})
end
