sendInfoMessage("Giga/Seals compat loaded!","FoolsGambit/Compat")

-- Red+
SMODS.Seal{
    key = '_c_giga_red_plus',
    atlas = 'giga_Seals',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 1},
    fg_data = {
        is_alternate = true,
        alternate_key ='giga_redplus',
        crossover_label = 'GIGA',
    },
    giga_data = {
        is_upgrade = true,
        seal_upgrade = 'fg__c_giga_red_plus_plus'
    },
    badge_colour = G.C.RED,
    config = {
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

-- Red++
SMODS.Seal{
    key = '_c_giga_red_plus_plus',
    atlas = 'giga_Seals',
    prefix_config = {atlas = false},
    pos = {x = 3, y = 1},
    fg_data = {
        is_alternate = true,
        alternate_key ='giga_redplusplus',
        crossover_label = 'GIGA',
    },
    giga_data = {
        is_upgrade = true,
        seal_upgrade = nil
    },
    badge_colour = G.C.RED,
    config = {
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

-- Blue+
SMODS.Seal{
    key = '_c_giga_blue_plus',
    atlas = 'giga_Seals',
    prefix_config = {atlas = false},
    pos = {x = 1, y = 1},
    fg_data = {
        is_alternate = true,
        alternate_key ='giga_blueplus',
        crossover_label = 'GIGA'
    },
    badge_colour = G.C.BLUE,
}

-- Purple+
SMODS.Seal{
    key = '_c_giga_purple_plus',
    atlas = 'giga_Seals',
    prefix_config = {atlas = false},
    pos = {x = 3, y = 0},
    fg_data = {
        is_alternate = true,
        alternate_key ='giga_purpleplus',
        crossover_label = 'GIGA',
    },
    giga_data = {
        is_upgrade = false,
        seal_upgrade = 'fg__c_giga_purple_plus_plus'
    },
    badge_colour = G.C.PURPLE,
    calculate = function (self, card, context)
        if context.discard and context.cardarea == G.hand and context.other_card == card then
            local c = 0
            for i=1, G.consumeables.config.card_limit - #G.consumeables.cards do
                G.E_MANAGER:add_event(Event{
                    trigger = 'after',
                    delay = 0.4,
                    func = function ()
                        SMODS.add_card{
                            set = 'Tarot'
                        }
                        return true
                    end
                })
                c = c + 1
            end
            return {
                message = '+'..c..' '..localize("k_tarot"),
                colour = G.C.PURPLE
            }
        end
    end
}

--Purple++
SMODS.Seal{
    key = '_c_giga_purple_plus_plus',
    atlas = 'giga_Seals',
    prefix_config = {atlas = false},
    pos = {x = 1, y = 2},
    fg_data = {
        is_alternate = true,
        alternate_key ='giga_purpleplusplus',
        crossover_label = 'GIGA',
    },
    badge_colour = G.C.PURPLE,
    config = {
        minimum = 3,
        extra = 1,
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {
            card.ability.seal.minimum,
            card.ability.seal.extra
        }}
    end,
    calculate = function (self, card, context)
        if context.discard and context.cardarea == G.hand then
            local c = card.ability.seal.minimum
            for _,v in ipairs(G.consumeables.cards) do
                if FG.FUNCS.get_card_info(v).edition ~= 'e_negative' then c = c + 1 end
            end
            for i=1, c do
                G.E_MANAGER:add_event(Event{
                    trigger = 'after',
                    delay = 0.4,
                    func = function ()
                        SMODS.add_card{
                            set = 'Tarot',
                            edition = 'e_negative'
                        }
                        return true
                    end
                })
            end
        end
    end
}