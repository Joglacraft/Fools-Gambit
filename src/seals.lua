
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
    badge_colour = G.C.GOLD,
    prefix_config = {atlas = false},
    config = {
        fg_data = {
            is_alternate = true,
            alternate_card = 'gold'
        },
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
    config = {
        fg_data = {
            is_alternate = true,
            alternate_card = 'red'
        },
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
                        card:set_seal('fg_red')
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
    badge_colour = G.C.BLUE,
    prefix_config = {atlas = false},
    calculate = function (self, card, context)
        if context.playing_card_end_of_round and context.cardarea == G.hand then
            print("hi")
            if G.GAME.last_hand_played then
                local _planet = nil
                for k, v in pairs(G.P_CENTER_POOLS.Planet) do
                    if v.config.hand_type == G.GAME.last_hand_played then
                        _planet = v.key
                    end
                end
                if _planet then
                    local c = 0
                    for _,v in ipairs(G.consumeables.cards) do
                        if v.config.center.set == 'Planet' then
                            v:start_dissolve()
                            c = c + 1
                        end
                    end
                    for i=1,c do
                        SMODS.add_card({ key = _planet })
                    end
                end
                G.GAME.consumeable_buffer = 0
            end
        end
    end
}
-- Purple
SMODS.Seal{
    key = 'purple',
    atlas = "Enhancers",
    pos = {x = 4, y = 4},
    badge_colour = G.C.PURPLE,
    prefix_config = {atlas = false},
    calculate = function (self, card, context)
        if context.discard then
            for i=1, G.consumeables.config.card_limit-#G.consumeables.cards do
                SMODS.add_card{
                    set = 'Tarot'
                }
            end
        end
    end
}
--[[`
SMODS.Seal {
    name = "Tune",
    key = "Tune",
    badge_colour = HEX("1d4fd7"),
	config = { mult = 5, chips = 20, money = 1, x_mult = 1.5  },
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
        if context.main_scoring and context.cardarea == G.play then
            return create_card("aberration", G.consumeables, nil, nil, false, true, nil)
        end
        -- does not work, i cant get it to calculate without being scored
    end
}
]]