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
jd['j_fg_half'] = {}
jd['j_fg_stencil'] = {}
jd['j_fg_four_fingers'] = {}
jd['j_fg_mime'] = {}
jd['j_fg_credit_card'] = {}
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
jd['j_fg_dusk'] = {}
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
jd['j_fg_chaos'] = {}
jd['j_fg_fibonacci'] = {
    reminder_text = {
        {text = '(Ace,2,3,5,8,King)'}
    }
}
jd['j_fg_steel_joker'] = {}
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
jd['j_fg_delayed_grat'] = {}
jd['j_fg_hack'] = {}
jd['j_fg_pareidolia'] = {}
jd['j_fg_gros_michel'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'xmult', retrigger_type = 'mult'}
            },
            border_colour = G.C.RED
        },
    },
    extra = {
        {
            {text = '('},
            {ref_table = 'G.GAME.probabilities', ref_value = 'normal', colour = G.C.GREEN},
            {text = ' in ', colour = G.C.GREEN},
            {ref_table = 'card.ability.extra', ref_value = 'max_chance', colour = G.C.GREEN},
            {text = ')'}
        }
    },  
    extra_config = {scale = 0.3, colour = G.C.GREY}
}
jd['j_fg_even_steven'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'mult_t', retrigger_type = 'mult'}
    },
    text_config = {colour = G.C.RED},
    reminder_text = {
        {text = '(10,8,6,4,2)'}
    }
}
jd['j_fg_odd_todd'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'chips_t', retrigger_type = 'chips'}
    },
    text_config = {colour = G.C.BLUE},
    reminder_text = {
        {text = '(Ace,9,7,5,3)'}
    }
}
jd['j_fg_scholar'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.joker_display_values', ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        }
    },
    reminder_text = {
        {text = '(Aces)'}
    },
    calc_function = function (card)
        card.joker_display_values.xmult = 1
        if G.play then
            local c = 0
            local text, _, scoring = JokerDisplay.evaluate_hand()
            for _,v in ipairs(scoring) do
                if FG.FUNCS.get_card_info(v).rank == 'Ace' then c = c + 1 end
            end
            if text ~= 'Unknown' then
                card.joker_display_values.xmult = (c>=card.ability.extra.amount) and card.ability.extra.xmult or 1
            end
        end
    end
}
jd['j_fg_business'] = {
    reminder_text = {
        {text = '(Face)'}
    },
    extra = {
        {
            {text = '(', colour = G.C.GREY},
            {ref_table = 'G.GAME.probabilities', ref_value = 'normal'},
            {text = ' in '},
            {ref_table = 'card.ability.extra', ref_value = 'max_chance'},
            {text = ')', colour = G.C.GREY},
        }
    },
    extra_config = {colour = G.C.GREEN, scale = 0.3}
}
jd['j_fg_supernova'] = {}
jd['j_fg_ride_the_bus'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'mult'}
    },
    text_config = {colour = G.C.RED}
}
jd['j_fg_space'] = {}
jd['j_fg_egg'] = {}
jd['j_fg_burglar'] = {}
jd['j_fg_blackboard'] = {}
jd['j_fg_runner'] = {}
jd['j_fg_ice_cream'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'chips'}
    },
    text_config = {colour = G.C.BLUE}
}
jd['j_fg_blue_joker'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'chips'}
    },
    text_config = {colour = G.C.CHIPS}
}
jd['j_fg_constellation'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'mult'}
    },
    text_config = {colour = G.C.MULT}
}
jd['j_fg_hiker'] = {}
jd['j_fg_faceless'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.joker_display_values', ref_value = 'xmult', retrigger_type = 'exp'}
            },
            border_colour = G.C.RED
        }
    },
    reminder_text = {
        {text = '(No faces)'}
    },
    calc_function = function (card)
        if not G.play then return end
        local _, _, scoring = JokerDisplay.evaluate_hand()
        local no_face = false
        for _,v in ipairs(scoring) do
            if FG.FUNCS.get_card_info(v).is_face then no_face = true end
        end
        card.joker_display_values.xmult = (not no_face and card.ability.extra.xmult) or 1
    end
}
jd['j_fg_green_joker'] = {}
jd['j_fg_superposition'] = {}
jd['j_fg_todo_list'] = {}
jd['j_fg_cavendish'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        }
    },
    extra = {
        {
            {text = '('},
            {ref_table = 'G.GAME.probabilities', ref_value = 'normal'},
            {text = ' in '},
            {ref_table = 'card.ability.extra', ref_value = 'xmult_c'},
            {text = ')'}
        }  
    },
    extra_config = {scale = 0.3, colour = G.C.GREEN}
}
jd['j_fg_card_sharp'] = {}
jd['j_fg_red_card'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'mult'}
    },
    text_config = {colour = G.C.RED}
}
jd['j_fg_madness'] = {}
jd['j_fg_square'] = {}
jd['j_fg_seance'] = {}
jd['j_fg_riff_raff'] = {
    extra = {
        {
            {text = '('},
            {ref_table = 'G.GAME.probabilities', ref_value = 'normal'},
            {text = ' in '},
            {ref_table = 'card.ability.extra', ref_value = 'rare_chance'},
            {text = ')'}
        },
        {
            {text = '('},
            {ref_table = 'G.GAME.probabilities', ref_value = 'normal'},
            {text = ' in '},
            {ref_table = 'card.ability.extra', ref_value = 'uncommon_chance'},
            {text = ')'}
        },
    },
    extra_config = {scale = 0.3, colour = G.C.GREEN}
}
jd['j_fg_vampire'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'xmult'}
            },
            border_colour = G.C.MULT
        }
    }
}
jd['j_fg_shurtcut'] = {}
jd['j_fg_hologram'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        }
    },
}
jd['j_fg_vagabond'] = {}
jd['j_fg_baron'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        }
    },
    reminder_text = {
        {text = '(Kings)'}
    },
    extra = {
        {
            {text = '(', colour = G.C.GREY},
            {
                border_nodes = {
                    {text = '+X'},
                    {ref_table = 'card.joker_display_values', ref_value = 'xmult_i'}
                },
                border_colour = G.C.RED
            },
            {text = ')', colour = G.C.GREY},
        }
    },
    extra_config = {scale = 0.3},
    calc_function = function (card)
        if not next(G.hand.cards) then card.joker_display_values.xmult_i = 0 return end
        local xmult_i = 0
        for _, v in ipairs(G.hand.cards) do
            if v.facing ~= 'front' then xmult_i = '???' break end
            if FG.FUNCS.get_card_info(v).rank == 'King' and not v.highlighted then xmult_i = xmult_i + card.ability.extra.xmult_i end
        end
        card.joker_display_values.xmult_i = xmult_i
    end
}
jd['j_fg_cloud_9'] = {
    text = {
        {ref_table = 'card.joker_display_values', ref_value = 'count'},
        {text = 'x'},
        {text = '$', colour = G.C.GOLD},
        {ref_table = 'card.ability.extra', ref_value = 'dollars', colour = G.C.GOLD}
    },
    calc_function = function (card)
        local count = 0
        if G.play then
            local _, _, scoring = JokerDisplay.evaluate_hand()
            for _,v in ipairs(scoring) do
                if FG.FUNCS.get_card_info(v).rank == '9' then count = count + JokerDisplay.calculate_card_triggers(v,scoring) end
            end
        end
        card.joker_display_values.count = count
    end

}
jd['j_fg_rocket'] = {
    text = {
        {text = '$'},
        {ref_table = 'card.ability.extra', ref_value = 'payout'}
    },
    text_config = {colour = G.C.GOLD}
}
jd['j_fg_obelisk'] = {}
jd['j_fg_midas_mask'] = {}
jd['j_fg_luchador'] = {}
jd['j_fg_photograph'] = {}
jd['j_fg_gift'] = {
    text = {
        {text = '$'},
        {ref_table = 'card', ref_value = 'sell_cost'}
    },
    text_config = {colour = G.C.GOLD}
}
jd['j_fg_turtle_bean'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.joker_display_values', ref_value = 'size'}
    },
    text_config = {colour = G.C.ORANGE},
    calc_function = function (card)
        card.joker_display_values.size = G.hand and (card.ability.extra.hand_size + ((G.GAME.round_resets.hands - G.GAME.current_round.hands_left) * card.ability.extra.extra_size)) or 0
    end
}
jd['j_fg_erosion'] = {}
jd['j_fg_reserved_parking'] = {}
jd['j_fg_mail'] = {}
jd['j_fg_to_the_moon'] = {}
jd['j_fg_hallucination'] = {}
jd['j_fg_fortune_teller'] = {}
jd['j_fg_juggler'] = {}
jd['j_fg_drunkard'] = {}
jd['j_fg_stone'] = {}
jd['j_fg_golden'] = {}
jd['j_fg_lucky_cat'] = {}
jd['j_fg_baseball_card'] = {}
jd['j_fg_bull'] = {}
jd['j_fg_diet_cola'] = {}
jd['j_fg_trading'] = {}
jd['j_fg_flash'] = {}
jd['j_fg_popcorn'] = {}
jd['j_fg_trouses'] = {}
jd['j_fg_ancient'] = {}
jd['j_fg_walkie_talkie'] = {}
jd['j_fg_selzer'] = {
    reminder_text = {
        {text = '('},
        {ref_table = 'card.ability.extra',ref_value = 'hands'},
        {text = '/4)'}
    }
}
jd['j_fg_castle'] = {}
jd['j_fg_smiley'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.joker_display_values', ref_value = 'mult'}
    },
    text_config = {colour = G.C.RED},
    reminder_text = {
        {text = '(Faces)'}
    },
    calc_function = function (card)
        card.joker_display_values.mult = card.ability.extra.mult
        if not G.play or next(G.play.cards) then return end
        local text,_,scoring = JokerDisplay.evaluate_hand()
        if text ~= "Unknown" then
            for _,v in pairs(scoring) do
                if FG.FUNCS.get_card_info(v).is_face then
                    card.joker_display_values.mult = card.joker_display_values.mult + JokerDisplay.calculate_card_triggers(v,scoring)*card.ability.extra.mult_i
                end
            end
        end
    end
}
jd['j_fg_campfire'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra',ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        }
    }
}
jd['j_fg_ticket'] = {}
jd['j_fg_mr_bones'] = {}
jd['j_fg_acrobat'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra',ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        }
    }
}
jd['j_fg_sock_and_buskin'] = {}
jd['j_fg_swashbuckler'] = {}
jd['j_fg_troubadour'] = {}
jd['j_fg_certificate'] = {}
jd['j_fg_smeared'] = {}
jd['j_fg_throwback'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra',ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        }
    }
}
jd['j_fg_hanging_chad'] = {
    text = {
        {text = '('},
        {ref_table = 'G.GAME.probabilities', ref_value = 'normal'},
        {text = ' in '},
        {ref_table = 'card.ability.extra', ref_value = 'enhancement_max'},
        {text = ', '},
        {ref_table = 'card.ability.extra', ref_value = 'seal_max'},
        {text = ', '},
        {ref_table = 'card.ability.extra', ref_value = 'edition_max'},
        {text = ')'},
    },
    text_config = {colour = G.C.GREEN}
}
jd['j_fg_rough_gem'] = {
    text = {
        {text = '$'},
        {ref_table = 'card.joker_display_values', ref_value = 'dollars'}
    },
    text_config = {colour = G.C.GOLD},
    reminder_text = {
        {text = '(Diamonds)'}
    },
    calc_function = function(card)
        local give = true
        local name, hands, scoring = JokerDisplay.evaluate_hand()
        if name ~= 'Unknown' then
            if hands['Flush'] and next(hands['Flush']) then
                for _,v in ipairs(scoring) do
                    if FG.FUNCS.get_card_info(v).suit ~= 'Diamonds' and FG.FUNCS.get_card_info(v).key ~= 'm_wild' then give = false end
                end
            else
                give = false
            end
        else
            card.joker_display_values.dollars = '???'
        end
        card.joker_display_values.dollars = give and card.ability.extra.dollars or 0
    end
}
jd['j_fg_bloodstone'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'Xmult'}
            },
            border_colour = G.C.RED
        },

    },
    reminder_text = {
        {text = '(Hearts)'}
    }
}
jd['j_fg_arrowhead'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'chips'}
    },
    text_config = {colour = G.C.BLUE},
    reminder_text = {
        {text = '(Spades)'}
    }
}
jd['j_fg_onyx_agate'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'mult'}
    },
    text_config = {colour = G.C.RED},
    reminder_text = {
        {text = '(Hearts)'}
    }
}
jd['j_fg_glass'] = {}
jd['j_fg_showman'] = {}
jd['j_fg_flower_pot'] = {}
jd['j_fg_blueprint'] = {}
jd['j_fg_wee'] = {}
jd['j_fg_merry_andy'] = {}
jd['j_fg_oops'] = {}
jd['j_fg_idol'] = {}
jd['j_fg_seeing_double'] = {}
jd['j_fg_matador'] = {}
jd['j_fg_hit_the_road'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'xmult'}
            },
            border_colour = G.C.RED
        },

    },
    reminder_text = {
        {text = '(Jacks)'}
    }
}
jd['j_fg_duo'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'Xmult'}
            },
            border_colour = G.C.RED
        },

    },
    reminder_text = {
        {text = '(Pair)'}
    }
}
jd['j_fg_trio'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'Xmult'}
            },
            border_colour = G.C.RED
        },

    },
    reminder_text = {
        {text = '(Three of a kind)'}
    }
}
jd['j_fg_family'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'Xmult'}
            },
            border_colour = G.C.RED
        },

    },
    reminder_text = {
        {text = '(Four of a kind)'}
    }
}
jd['j_fg_order'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'Xmult'}
            },
            border_colour = G.C.RED
        },

    },
    reminder_text = {
        {text = '(Straight)'}
    }
}
jd['j_fg_tribe'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'Xmult'}
            },
            border_colour = G.C.RED
        },

    },
    reminder_text = {
        {text = '(Flush five, Queens)'}
    }
}
jd['j_fg_stuntman'] = {}
jd['j_fg_invisible'] = {}
jd['j_fg_invisible_memory'] = {
    text = {
        {ref_table = 'card.ability.extra', ref_value = 'copies', colour = G.C.ORANGE},
        {text = 'x '},
        {ref_table = 'card.ability.extra', ref_value = 'name', colour = G.C.ORANGE}
    },
    reminder_text = {
        {ref_table = 'card.ability.extra', ref_value = 'rounds'},
        {text = ' left'}
    }
}
jd['j_fg_brainstorm'] = {}
jd['j_fg_satellite'] = {}
jd['j_fg_shoot_the_moon'] = {
    text = {
        {text = '+'},
        {ref_table = 'card.ability.extra', ref_value = 'mult'}
    },
    text_config = {colour = G.C.RED},
    reminder_text = {
        {text = '(Faces)'}
    },
    extra = {
        {
            {text = '(', colour = G.C.GREY},
            {text = '+', colour = G.C.MULT},
            {ref_table = 'card.joker_display_values', ref_value = 'mult_i', colour = G.C.MULT},
            {text = ')', colour = G.C.GREY},
        }
    },
    extra_config = {scale = 0.3},
    calc_function = function (card)
        if not next(G.hand.cards) then card.joker_display_values.mult_i = 0 return end
        local mult_i = 0
        for _, v in ipairs(G.hand.cards) do
            if v.facing ~= 'front' then mult_i = '???' break end
            if FG.FUNCS.get_card_info(v).is_face and not v.highlighted then mult_i = mult_i + card.ability.extra.mult_i end
        end
        card.joker_display_values.mult_i = mult_i
    end
}
jd['j_fg_drivers_license'] = {}
jd['j_fg_cartomancer'] = {}
jd['j_fg_astronomer'] = {}
jd['j_fg_burnt'] = {}
jd['j_fg_bootstraps'] = {}
-- Legendaries
jd['j_fg_caino'] = {}
jd['j_fg_triboulet'] = {}
jd['j_fg_yorick'] = {}
jd['j_fg_chicot'] = {}
jd['j_fg_perkeo'] = {}
jd['j_fg_kevin'] = {
    text = {
        {
            border_nodes = {
                {text = 'X'},
                {ref_table = 'card.ability.extra', ref_value = 'mult'}
            },
            border_colour = G.C.RED
        }
    }
}
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
jd['j_fg_samuran'] = {
    reminder_text = {
        {text = '('},
        {ref_table = 'G.GAME.probabilities', ref_value = 'normal'},
        {text = ' in '},
        {ref_table = 'card.ability.extra', ref_value = 'max_chance'},
        {text = ')'}
    },
    reminder_text_config = {colour = G.C.GREEN}
}
jd['j_fg_samuran_alt'] = {}
