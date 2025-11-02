
SMODS.Atlas {
    key = "seal_atlas",
    path = "seals.png",
    px = 71,
    py = 95
}
-- Gold
SMODS.Seal{
    key = 'gold',
    atlas = "Enhancers",
    pos = {x = 2, y = 0},
    fg_data = {
        is_alternate = true,
        alternate_key ='Gold'
    },
    giga_data = {
        is_upgrade = false,
        seal_upgrade = 'fg__c_giga_gold_plus'
    },
    badge_colour = G.C.GOLD,
    prefix_config = {atlas = false},
    config = {
        should_give = false,
        take = 3,
        give = 8,
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {
            card.ability.seal.take,
            card.ability.seal.give,
        }}
    end,
    draw = function (self, card, layer)
         if (layer == 'card' or layer == 'both') and card.sprite_facing == 'front' then
            G.shared_seals[card.seal].role.draw_major = card
            G.shared_seals[card.seal]:draw_shader('dissolve', nil, nil, nil, card.children.center)
            G.shared_seals[card.seal]:draw_shader('voucher', nil, card.ARGS.send_to_shader, nil, card.children.center)
        end
    end,
    calculate = function (self, card, context)
        if context.after and not context.repetition and context.cardarea == G.play then
            if card.ability.seal.should_give then
                ease_dollars(card.ability.seal.give)
            else
                ease_dollars(-card.ability.seal.take)
            end
            card.ability.seal.should_give = not card.ability.seal.should_give
        end
    end
}
-- Red
SMODS.Seal{
    key = 'red',
    atlas = "Enhancers",
    pos = {x = 5, y = 4},
    badge_colour = G.C.RED,
    prefix_config = {atlas = false},
    fg_data = {
        is_alternate = true,
        alternate_key ='Red'
    },
    giga_data = {
        is_upgrade = false,
        seal_upgrade = 'fg__c_giga_red_plus'
    },
    config = {
        retriggers = 3,
        retriggers_d = 1,
    },
    loc_vars = function (self, info_queue, card)
        return {
            vars = {
                card.ability.seal.retriggers,
                card.ability.seal.retriggers_d
            }
        }
    end,
    calculate = function (self, card, context)
        if context.repetition and context.cardarea == G.play then
            return {
                repetitions = card.ability.seal.retriggers,
                card = card
            }
        end
        if context.after and context.cardarea == G.play then
            G.E_MANAGER:add_event(Event{
                func = function ()
                    card.ability.seal.retriggers = card.ability.seal.retriggers - card.ability.seal.retriggers_d
                    if card.ability.seal.retriggers <= 0 then 
                        card:set_seal(nil,true,true)
                    end
                    return true
                end
            })
            G.E_MANAGER:add_event(Event{
                func = function ()
                    card.ability.seal.retriggers = card.ability.seal.retriggers - card.ability.seal.retriggers_d
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
-- Blue
SMODS.Seal{
    key = 'blue',
    atlas = "Enhancers",
    pos = {x = 6, y = 4},
    fg_data = {
        is_alternate = true,
        alternate_key ='Blue'
    },
    giga_data = {
        is_upgrade = false,
        seal_upgrade = 'fg__c_giga_blue_plus'
    },
    config = {repetitions = 1},
    badge_colour = G.C.BLUE,
    prefix_config = {atlas = false},
    loc_vars = function (self, info_queue, card)
        return {vars = {
            card.ability.seal.repetitions
        }}
    end,
    calculate = function (self, card, context)
        if context.playing_card_end_of_round and context.cardarea == G.hand then
            if G.GAME.last_hand_played then
                local _planet = nil
                for k, v in pairs(G.P_CENTER_POOLS.Planet) do
                    if v.config.hand_type == G.GAME.last_hand_played then
                        _planet = v.key
                    end
                end
                if _planet then
                    local t = {}
                    for _,v in ipairs(G.consumeables.cards) do
                        if v.config.center.set == 'Planet' then
                            t[#t+1] = v
                        end
                    end
                    if #G.consumeables.cards >= G.consumeables.config.card_limit then return end
                    G.E_MANAGER:add_event(Event{
                        bloccking = true,
                        trigger = 'after',
                        delay = 0.4,
                        func = function ()
                            if #G.consumeables.cards >= G.consumeables.config.card_limit then return true end
                            local card = pseudorandom_element(t,'mila')
                            if card then 
                                card:start_dissolve() 
                            end
                        return true end
                    })
                    if #G.consumeables.cards >= G.consumeables.config.card_limit then return end
                    G.E_MANAGER:add_event(Event{
                        bloccking = true,
                        trigger = 'after',
                        delay = 0.4,
                        func = function ()
                            if #G.consumeables.cards >= G.consumeables.config.card_limit then return true end
                            SMODS.add_card({ key = _planet })
                        return true end
                    })
                end
            end
        end
    end
}
-- Purple
SMODS.Seal{
    key = 'purple',
    atlas = "Enhancers",
    pos = {x = 4, y = 4},
    fg_data = {
        is_alternate = true,
        alternate_key ='Purple'
    },
    giga_data = {
        is_upgrade = false,
        seal_upgrade = 'fg__c_giga_purple_plus'
    },
    config = {repetitions = 1},
    badge_colour = G.C.PURPLE,
    prefix_config = {atlas = false},
    loc_vars = function (self, info_queue, card)
        return {vars = {
            card.ability.seal.repetitions
        }}
    end,
    calculate = function (self, card, context)
        if context.discard and context.cardarea == G.hand and context.other_card == card then
            G.E_MANAGER:add_event(Event{
                bloccking = true,
                trigger = 'after',
                delay = 0.4,
                func = function ()
                    local card = pseudorandom_element(G.consumeables.cards,'mila')
                    if card then 
                        card:start_dissolve() 
                    end
                return true end
            })
            G.E_MANAGER:add_event(Event{
                bloccking = true,
                trigger = 'after',
                delay = 0.4,
                func = function ()
                    SMODS.add_card({ set = 'Tarot' })
                return true end
            })
        end
    end
}

SMODS.Seal {
    name = "Tune",
    key = "Tune",
    badge_colour = HEX("1d4fd7"),
	config = { extra = 1  },
    loc_txt = {
        label = 'Tune',
        name = 'Tune',
        text = {
            'Creates an {C:purple}aberration{} Card',
            'when played but {C:attention}not{} scored'
        }
    },
    atlas = "seal_atlas",
    pos = {x=0, y=0},

    calculate = function(self, card, context)
        if context.before and context.cardarea == "unscored" then
            for i=1, math.min(card.ability.seal.extra or 1, G.consumeables.config.card_limit-#G.consumeables.cards) do
                SMODS.add_card{
                    set = 'aberration'
                }
                FG.FUNCS.card_eval_status_text{
                    card = card,
                    message = "+1 aberration",
                    colour = 'purple',
                    mode = "literal"
                }
            end
        end
        -- does not work, i cant get it to calculate without being scored
    end
}
