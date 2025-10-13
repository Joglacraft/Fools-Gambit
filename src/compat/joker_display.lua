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

-- Collectives
jd['j_fg_jogla'] = {
    text = {
        {ref_table = 'card.ability.extra', ref_value = 'duplicate', colour = G.C.GOLD},
        {text = 'x '},
        {ref_table = 'card.ability.extra', ref_value = 'name', colour = G.C.GOLD}
    },
}