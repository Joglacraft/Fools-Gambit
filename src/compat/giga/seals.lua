sendInfoMessage("Giga/Seals compat loaded!","FoolsGambit/Compat")

-- Red+
SMODS.Seal{
    key = '_c_giga_red_plus',
    atlas = 'giga_Seals',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 1},
    badge_colour = G.C.RED,
    config = {
        fg_data = {
            is_alternate = true,
            alternate_card = 'giga_redplus',
            crossover_label = 'GIGA',
        },
        retriggers = 3,
        retriggers_d = 1,
        plays_max = 2,
        plays = 2,
        plays_d = 1,
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {
            card.ability.seal.retriggers,
            card.ability.seal.retriggers_d,
            card.ability.seal.plays,
            card.ability.seal.plays_max
        }}
    end,
    calculate = function (self, card, context)
        if context.repetition and context.cardarea == G.play then
            return {
                repetitions = card.ability.seal.retriggers,
                card = card
            }
        end
        if context.after and context.cardarea == G.play then
            card.ability.seal.plays = card.ability.seal.plays - card.ability.seal.plays_d
            G.E_MANAGER:add_event(Event{
                func = function ()
                    if card.ability.seal.plays <= 0 then
                        card.ability.seal.retriggers = card.ability.seal.retriggers - card.ability.seal.retriggers_d
                        card.ability.seal.plays = card.ability.seal.plays_max
                    end
                    if card.ability.seal.retriggers <= 0 then 
                        card:set_seal('fg_red',false,true)
                    end
                    return true
                end
            })
            G.E_MANAGER:add_event(Event{
                func = function ()
                    if card.ability.seal.retriggers <= 0 then 
                        card:juice_up() -- juice_down :3
                    end
                    return true
                end
            })
            delay(0.2)
        end
    end
}

SMODS.Seal{
    key = '_c_giga_red_plus_plus',
    atlas = 'giga_Seals',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 1},
    badge_colour = G.C.RED,
    config = {
        fg_data = {
            is_alternate = true,
            alternate_card = 'giga_redplus',
            crossover_label = 'GIGA',
        },
        retriggers = 4,
        retriggers_d = 1,
        plays_max = 3,
        plays = 3,
        plays_d = 1,
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {
            card.ability.seal.retriggers,
            card.ability.seal.retriggers_d,
            card.ability.seal.plays,
            card.ability.seal.plays_max
        }}
    end,
    calculate = function (self, card, context)
        if context.repetition and context.cardarea == G.play then
            return {
                repetitions = card.ability.seal.retriggers,
                card = card
            }
        end
        if context.after and context.cardarea == G.play then
            card.ability.seal.plays = card.ability.seal.plays - card.ability.seal.plays_d
            G.E_MANAGER:add_event(Event{
                func = function ()
                    if card.ability.seal.plays <= 0 then
                        card.ability.seal.retriggers = card.ability.seal.retriggers - card.ability.seal.retriggers_d
                        card.ability.seal.plays = card.ability.seal.plays_max
                    end
                    if card.ability.seal.retriggers <= 0 then 
                        card:set_seal('fg_red',false,true)
                    end
                    return true
                end
            })
            G.E_MANAGER:add_event(Event{
                func = function ()
                    if card.ability.seal.retriggers <= 0 then 
                        card:juice_up() -- juice_down :3
                    end
                    return true
                end
            })
            delay(0.2)
        end
    end
}