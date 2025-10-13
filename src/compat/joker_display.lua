sendInfoMessage("Joker display compat loaded!","FoolsGambit/Compat")

local jd = JokerDisplay.Definitions -- You can assign it to a variable to use as shorthand

jd["j_fg_joker"] = {
    text = {
        { text = "+", scale = 0.35, colour = G.C.RED},
        { ref_table = "card.joker_display_values", ref_value = "count", retrigger_type = "mult", colour = G.C.RED},
    },
    calc_function = function(card)
        local count = 0
        if G.play then
            local text, _, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                for _, scoring_card in pairs(scoring_hand) do
                    count = count + JokerDisplay.calculate_card_triggers(scoring_card, scoring_hand)
                end
            end
        else
            count = 3
        end
        card.joker_display_values.count = count
    end
}

jd['j_fg_greedy_joker'] = {
    text = {
        {text = "+", colour = G.C.RED},
        {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED, retrigger_type = 'mult'}
    },
    reminder_text = {
        {text = "("},
        {text = "Diamonds", colour = G.C.SUITS.Diamonds},
        {text = ")"}
    },
    calc_function = function (card)
        card.joker_display_values.mult = card.ability.extra.currentMult
        if not G.play or next(G.play.cards) then return end
        local text,_,scoring = JokerDisplay.evaluate_hand()
        if text ~= "Unknown" then
            for _,v in pairs(scoring) do
                if v:is_suit("Diamonds") then
                    card.joker_display_values.mult = card.joker_display_values.mult + JokerDisplay.calculate_card_triggers(v,scoring)
                end
            end
        end
    end
}
jd['j_fg_lusty_joker'] = {
    text = {
        {text = "+", colour = G.C.RED},
        {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED, retrigger_type = 'mult'}
    },
    reminder_text = {
        {text = "("},
        {text = "Hearts", colour = G.C.SUITS.Hearts},
        {text = ")"}
    },
    calc_function = function (card)
        card.joker_display_values.mult = card.ability.extra.currentMult
        if not G.play or next(G.play.cards) then return end
        local text,_,scoring = JokerDisplay.evaluate_hand()
        if text ~= "Unknown" then
            for _,v in pairs(scoring) do
                if v:is_suit("Hearts") then
                    card.joker_display_values.mult = card.joker_display_values.mult + JokerDisplay.calculate_card_triggers(v,scoring)
                end
            end
        end
    end
}
jd['j_fg_wrathful_joker'] = {
    text = {
        {text = "+", colour = G.C.RED},
        {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED, retrigger_type = 'mult'}
    },
    reminder_text = {
        {text = "("},
        {text = "Spades", colour = G.C.SUITS.Spades},
        {text = ")"}
    },
    calc_function = function (card)
        card.joker_display_values.mult = card.ability.extra.currentMult
        if not G.play or next(G.play.cards) then return end
        local text,_,scoring = JokerDisplay.evaluate_hand()
        if text ~= "Unknown" then
            for _,v in pairs(scoring) do
                if v:is_suit("Spades") then
                    card.joker_display_values.mult = card.joker_display_values.mult + JokerDisplay.calculate_card_triggers(v,scoring)
                end
            end
        end
    end
}
jd['j_fg_gluttenous_joker'] = {
    text = {
        {text = "+", colour = G.C.RED},
        {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED, retrigger_type = 'mult'}
    },
    reminder_text = {
        {text = "("},
        {text = "Clubs", colour = G.C.SUITS.Clubs},
        {text = ")"}
    },
    calc_function = function (card)
        card.joker_display_values.mult = card.ability.extra.currentMult
        if not G.play or next(G.play.cards) then return end
        local text,_,scoring = JokerDisplay.evaluate_hand()
        if text ~= "Unknown" then
            for _,v in pairs(scoring) do
                if v:is_suit("Clubs") then
                    card.joker_display_values.mult = card.joker_display_values.mult + JokerDisplay.calculate_card_triggers(v,scoring)
                end
            end
        end
    end
}
jd['j_fg_jolly'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.RED},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_mult
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_zany'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.RED},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_mult
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_mad'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.RED},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_mult
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_crazy'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.RED},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_mult
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_droll'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.BLUE},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.BLUE}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_chips
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_sly'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.BLUE},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.BLUE}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_chips
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_wily'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.BLUE},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.BLUE}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_chips
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_clever'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.BLUE},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.BLUE}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_chips
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_devious'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.BLUE},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.BLUE}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_chips
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_crafty'] = {
    reminder_text = {
        {text = "("},
        {ref_table = 'card.ability', ref_value = 'type', colour = G.C.GOLD},
        {text = ")"}
    },
    extra = {
        {
            {text = "+", colour = G.C.BLUE},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.BLUE}
        },
        {
            {ref_table = 'card.joker_display_values', ref_value = 'reps', colour = G.C.GOLD},
            {text = " retriggers"}
        },
    },
    calc_function = function (card)
        local mult = 0
        local reps = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if poker_hands[card.ability.type] and next(poker_hands[card.ability.type]) then
                mult = card.ability.t_chips
                reps = card.ability.extra.repetitions
            end
        end
        card.joker_display_values.mult = mult
        card.joker_display_values.reps = reps
    end
}
jd['j_fg_ceremonial'] = {
    text = {
        {text = "+", colour = G.C.BLUE},
        {ref_table = 'card.ability.extra', ref_value = 'chips', colour = G.C.BLUE}
    }
}
jd['j_fg_banner'] = {
    text = {
        {text = "+", colour = G.C.BLUE},
        {ref_table = 'card.joker_display_values', ref_value = 'chips', colour = G.C.BLUE}
    },
    calc_function = function (card)
        card.joker_display_values.chips = G.GAME.current_round.discards_left * card.ability.extra.chips
    end
}
jd['j_fg_mystic_summit'] = {
    text = {
        {text = '+', colour = G.C.RED},
        {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED},
    },
    calc_function = function (card)
        card.joker_display_values.mult = (G.GAME.current_round.discards_left == 0) and card.ability.extra.mult or 0
    end
}
jd['j_fg_marble'] = {}
jd['j_fg_loyalty_card'] = {
    reminder_text = {
        {text = '('},
        {ref_table = 'card.ability.extra', ref_value = 'item_amount'},
        {text = '/10)'}
    }
}
jd['j_fg_8_ball'] = {
    reminder_text = {
        {text = '('},
        {ref_table = 'card.ability.extra', ref_value = 'cur'},
        {text = '/'},
        {ref_table = 'card.ability.extra', ref_value = 'max'},
        {text = ')'},
    }
}
jd['j_fg_misprint'] = {
    -- TODO
}
jd['j_fg_raised_fist'] = {
    text = {
        {text = '+', colour = G.C.RED},
        {ref_table = 'card.ability.extra', ref_value = 'mult', colour = G.C.RED}
    },
    extra = {
        {
            {text = '(', colour = G.C.GREY, scale = 0.3},
            {text = '+', colour = G.C.RED, scale = 0.3},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED, scale = 0.3},
            {text = ')', colour = G.C.GREY, scale = 0.3},
        }
    },
    calc_function = function (card)
        card.joker_display_values.mult = 0
        if G.hand and next(G.hand.cards) then
            local mult = FG.FUNCS.get_card_info(G.hand.cards[1]).id
            table.sort(G.hand.cards, function (a,b) return a.T.x < b.T.x end)
            for _,v in pairs(G.hand.cards) do
                if not v.highlighted then
                    local val = FG.FUNCS.get_card_info(v).id
                    if mult > val then mult = val end
                end
            end
            mult = mult/2
            card.joker_display_values.mult = mult
        end
    end
}
jd['j_fg_fibonacci'] = {
    reminder_text = {
        {text = '(Ace,2,3,5,8,King)'}
    }
}
jd['j_fg_scary_face'] = {
    text = {
        {text = "+", colour = G.C.BLUE},
        {ref_table = 'card.joker_display_values', ref_value = 'chips', colour = G.C.BLUE, retrigger_type = 'chips'}
    },
    reminder_text = {
        {text = "("},
        {text = "Faces", colour = G.C.GOLD},
        {text = ")"}
    },
    calc_function = function (card)
        card.joker_display_values.chips = card.ability.extra.chips
        if not G.play or next(G.play.cards) then return end
        local text,_,scoring = JokerDisplay.evaluate_hand()
        if text ~= "Unknown" then
            for _,v in pairs(scoring) do
                if FG.FUNCS.get_card_info(v).is_face then
                    card.joker_display_values.chips = card.joker_display_values.chips + (card.ability.extra.chip_gain * JokerDisplay.calculate_card_triggers(v,scoring))
                end
            end
        end
    end
}
jd['j_fg_abstract'] = {
    text = {
        {text = '+', colour = G.C.RED},
        {ref_table = 'card.ability.extra', ref_value = 'mult', colour = G.C.RED}
    }
}
jd['j_fg_gros_michel'] = {}
jd['j_fg_even_steven'] = {}
jd['j_fg_odd_todd'] = {}
jd['j_fg_business'] = {}
jd['j_fg_supernova'] = {}
jd['j_fg_ride_the_bus'] = {}
jd['j_fg_duo'] = {}
jd['j_fg_trio'] = {}
jd['j_fg_family'] = {}
jd['j_fg_order'] = {}
jd['j_fg_tribe'] = {}
jd['j_fg_egg'] = {}
jd['j_fg_ice_cream'] = {}
jd['j_fg_faceless'] = {}
jd['j_fg_baron'] = {}
jd['j_fg_riff_raff'] = {}
jd['j_fg_cloud_9'] = {}
jd['j_fg_rocket'] = {}
jd['j_fg_gift'] = {}
jd['j_fg_erision'] = {}
jd['j_fg_juggler'] = {}
jd['j_fg_drunkard'] = {}
jd['j_fg_stone'] = {}
jd['j_fg_lucky_cat'] = {}
jd['j_fg_splash'] = {}
jd['j_fg_cavendish'] = {}
jd['j_fg_red_card'] = {}
jd['j_fg_popcorn'] = {}
jd['j_fg_ramen'] = {}
jd['j_fg_walkie_talkie'] = {}
jd['j_fg_selzer'] = {
    reminder_text = {
        {text = '('},
        {ref_table = 'card.ability.extra',ref_value = 'hands'},
        {text = '/4)'}
    }
}
jd['j_fg_castle'] = {}
jd['j_fg_campfire'] = {}
jd['j_fg_acrobat'] = {}
jd['j_fg_swashbuckler'] = {}
jd['j_fg_change_of_pace'] = {}
jd['j_fg_flipped_script'] = {}
jd['j_fg_concert'] = {}
jd['j_fg_delinquent'] = {}
jd['j_fg_conductor'] = {}
jd['j_fg_oscillator'] = {}
jd['j_fg_mango'] = {}
jd['j_fg_disc'] = {}
jd['j_fg_orchestral'] = {}
jd['j_fg_troubadour'] = {}
jd['j_fg_throwback'] = {}
jd['j_fg_smiley'] = {}
jd['j_fg_fist'] = {}
jd['j_fg_hanging_chad'] = {}
jd['j_fg_gem'] = {}
jd['j_fg_bloodstone'] = {}
jd['j_fg_arrowhead'] = {}
jd['j_fg_agate'] = {}
jd['j_fg_flower_pot'] = {}
jd['j_fg_seeing_double'] = {}
jd['j_fg_oops'] = {}
jd['j_fg_wee'] = {}
jd['j_fg_hit_the_road'] = {}
jd['j_fg_invisible'] = {}
jd['j_fg_drivers_license'] = {}
jd['j_fg_bootstraps'] = {}
jd['j_fg_caino'] = {}
jd['j_fg_triboulet'] = {}
jd['j_fg_yorick'] = {}
jd['j_fg_chicot'] = {}
jd['j_fg_perkeo'] = {}

-- Collectives
jd['j_fg_jogla'] = {
    text = {
        {ref_table = 'card.ability.extra', ref_value = 'duplicate', colour = G.C.GOLD},
        {text = 'x '},
        {ref_table = 'card.ability.extra', ref_value = 'name', colour = G.C.GOLD}
    },
    reminder_text = {
        {text = "(At end of shop)"}
    }
}
jd['j_fg_jogla_alt'] = {
    text = {
        {text = '+', colour = G.C.GOLD},
        {ref_table = 'card.ability.extra', ref_value = 'extra_size', colour = G.C.GOLD}
    }
}
jd['j_fg_deathmodereal'] = {}
jd['j_fg_deathmoderealalt'] = {}
jd['j_fg_goldenleaf'] = {}
jd['j_fg_goldenleafalt'] = {}
jd['j_fg_jenker'] = {}
jd['j_fg_jenkeralt'] = {}
