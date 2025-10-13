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
        {ref_table = 'card.ability.extra', ref_value = 'currentMult', colour = G.C.RED}
    },
    reminder_text = {
        {text = "("},
        {text = "Diamonds", colour = G.C.SUITS.Diamonds},
        {text = ")"}
    }
}
jd['j_fg_lusty_joker'] = {
    text = {
        {text = "+", colour = G.C.RED},
        {ref_table = 'card.ability.extra', ref_value = 'currentMult', colour = G.C.RED}
    },
    reminder_text = {
        {text = "("},
        {text = "Hearts", colour = G.C.SUITS.Hearts},
        {text = ")"}
    }
}
jd['j_fg_wrathful_joker'] = {
    text = {
        {text = "+", colour = G.C.RED},
        {ref_table = 'card.ability.extra', ref_value = 'currentMult', colour = G.C.RED}
    },
    reminder_text = {
        {text = "("},
        {text = "Spades", colour = G.C.SUITS.Spades},
        {text = ")"}
    }
}
jd['j_fg_gluttenous_joker'] = {
    text = {
        {text = "+", colour = G.C.RED},
        {ref_table = 'card.ability.extra', ref_value = 'currentMult', colour = G.C.RED}
    },
    reminder_text = {
        {text = "("},
        {text = "Clubs", colour = G.C.SUITS.Clubs},
        {text = ")"}
    }
}
jd['j_fg_jolly'] = {
    extra = {
        {
            {text = "+", colour = G.C.RED},
            {ref_table = 'card.joker_display_values', ref_value = 'mult', colour = G.C.RED}
        },
        {
            {ref_table = 'card.ability.extra', ref_value = 'repetitions', colour = G.C.GOLD},
            {text = " repetitions"}
        }
    },
    calc_function = function (card)
        local count = 0
        if G.play then
            local text, poker_hands, scoring_hand = JokerDisplay.evaluate_hand()
            if text ~= 'Unknown' then
                next(poker_hands)
            end
        else
            count = 3
        end
        card.joker_display_values.count = count
    end
}
jd['j_fg_zany'] = {}
jd['j_fg_mad'] = {}
jd['j_fg_crazy'] = {}
jd['j_fg_droll'] = {}
jd['j_fg_sly'] = {}
jd['j_fg_wily'] = {}
jd['j_fg_clever'] = {}
jd['j_fg_devious'] = {}
jd['j_fg_dagger'] = {}
jd['j_fg_banner'] = {}
jd['j_fg_summit'] = {}
jd['j_fg_loyalty'] = {}
jd['j_fg_8ball'] = {}
jd['j_fg_misprint'] = {}
jd['j_fg_fibonacci'] = {}
jd['j_fg_scary_face'] = {}
jd['j_fg_gros_michel'] = {}
jd['j_fg_even_steven'] = {}
jd['j_fg_odd_todd'] = {}
jd['j_fg_business'] = {}
jd['j_fg_supernova'] = {}
jd['j_fg_ride_the_bus'] = {}
jd['j_fg_abstract'] = {}
jd['j_fg_crafty'] = {}
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
jd['j_fg_selzer'] = {}
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

jd['j_fg_deathmodereal'] = {}
jd['j_fg_deathmoderealalt'] = {}
jd['j_fg_goldenleaf'] = {}
jd['j_fg_goldenleafalt'] = {}
jd['j_fg_jenker'] = {}
jd['j_fg_jenkeralt'] = {}
