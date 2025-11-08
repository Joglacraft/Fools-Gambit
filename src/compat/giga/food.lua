sendInfoMessage("Giga/Food compat loaded!","FoolsGambit/Compat")

local function consumable_loc (self, info_queue, card)
    return {vars = {
        card.ability.extra.round_left,
        card.ability.extra.txt
    }}
end
local function consumable_can (self, card) return card.ability.extra.round_left <= 0 end
local function consumable_use (self, card, area, copier) SMODS.add_card{set = 'Tarot', edition = 'e_negative'} end
local function consumable_cal (self, card, context) 
    if context.end_of_round and context.main_eval then 
        if card.ability.extra.round_left > 0 then card.ability.extra.round_left = card.ability.extra.round_left - 1 end
        card.ability.extra.txt = 'Ready'
    end
end

local function enhancement_can (self, card) return G.hand and #G.hand.highlighted == 2 end
local function enhancement_use (self, card, area, copier)
    table.sort(G.hand.highlighted,function (a, b)
        return a.T.x < b.T.x
    end)
    play_sound("tarot1",1)
    local pitch = 0.9
    for _,v in ipairs(G.hand.highlighted) do -- Flip cards
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0.2,
            func = function()
                v:flip()
                v:juice_up(0.3, 0.5)
                play_sound("tarot2",pitch)
                pitch = pitch + 0.1
                return true
            end
        }))
    end
    G.E_MANAGER:add_event(Event{
        func = function ()
            -- Prevents repeating the same enhancement unless there is no other option
            local function pick_random ()
                local choosen = FG.POOLS.base_enhancement[math.random(1,#FG.POOLS.base_enhancement)]
                if choosen == card.ability.extra.enhancement and #FG.POOLS.base_enhancement <= 1 then choosen = pick_random() end
                return choosen
            end
            local other = pick_random()
            G.hand.highlighted[2]:set_ability(other)
        return true end
    })
    G.E_MANAGER:add_event(Event{
        func = function ()
        G.hand.highlighted[1]:set_ability(card.ability.extra.enhancement)
        return true end
    })
    pitch = pitch + 0.3
    for _,v in ipairs(G.hand.highlighted) do -- Flip cards
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0.2,
            func = function()
                v:flip()
                v:juice_up(0.3, 0.3)
                play_sound("tarot2",pitch)
                pitch = pitch + 0.1
                return true
            end
        }))
    end
end

local function suit_loc (self, info_queue, card)
    return {vars = {
        card.ability.extra.limit,
        localize(card.ability.extra.suit,"suits_plural"),
        colours = {
            G.C.SUITS[card.ability.extra.suit]
        },
    }}
end
local function suit_can (self, card)
    if not G.hand then return false end
    for _,v in ipairs(G.hand.cards) do
        if FG.FUNCS.get_card_info(v).suit == card.ability.extra.suit then return true end
    end
    return false
end
local function suit_use (self, card, area, copier)
    local ellegible_cards = {}
    for _,v in ipairs(G.hand.cards) do
        if FG.FUNCS.get_card_info(v).suit == card.ability.extra.suit then table.insert(ellegible_cards,v) end
    end
    for _=1, card.ability.extra.limit do
        if not next(ellegible_cards) then return end
        local card = ellegible_cards[pseudorandom('mila',1,#ellegible_cards)]
        card:start_dissolve()
    end
end

-- Tacos
-- Guacamole
-- Hot-Dog
-- Caesar salad
SMODS.Consumable{
    key = '_c_giga_caesar_salad',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 4, y = 0},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_caesarSalad',
        crossover_label = 'GIGA'
    },
    config = { extra = {
        round_left = 3,
        txt = 'Not ready yet',
        type = 'Tarot'
    }},
    loc_vars = consumable_loc,
    can_use = consumable_can,
    use = consumable_use,
    calculate = consumable_cal
}
-- Club sandwich
SMODS.Consumable{
    key = '_c_giga_club_sandwich',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 5, y = 0},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_clubSandwich',
        crossover_label = 'GIGA'
    },
    config = { extra = {
        round_left = 3,
        txt = 'Not ready yet',
        type = 'Planet'
    }},
    loc_vars = consumable_loc,
    can_use = consumable_can,
    use = consumable_use,
    calculate = consumable_cal
}
-- Pho
SMODS.Consumable{
    key = '_c_giga_pho',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 6, y = 0},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_Pho',
        crossover_label = 'GIGA'
    },
    config = { extra = {
        round_left = 3,
        txt = 'Not ready yet',
        type = 'Spectral'
    }},
    loc_vars = consumable_loc,
    can_use = consumable_can,
    use = consumable_use,
    calculate = consumable_cal
}
-- Spaghetti
SMODS.Consumable{
    key = '_c_giga_spaghetti',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 3, y = 2},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_spaghetti'
    },
    config = {extra = {
        enhancement = 'm_bonus'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Steak
SMODS.Consumable{
    key = '_c_giga_steak',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 2, y = 2},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_steak',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        enhancement = 'm_stone'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Sushi
SMODS.Consumable{
    key = '_c_giga_sushis',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 3},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_sushis',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        enhancement = 'm_mult'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Sugar Pie
SMODS.Consumable{
    key = '_c_giga_sugar_pie',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 3, y = 3},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_sugarPie',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        enhancement = 'm_lucky'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Durian
SMODS.Consumable{
    key = '_c_giga_durian',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 6, y = 3},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_durian',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        enhancement = 'm_glass'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Salmon
SMODS.Consumable{
    key = '_c_giga_salmon',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 0, y = 2},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_salmon',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        enhancement = 'm_gold'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Waffle
SMODS.Consumable{
    key = '_c_giga_waffle',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 2, y = 3},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_waffle',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        enhancement = 'm_wild'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Lollipop
SMODS.Consumable{
    key = '_c_giga_lollipop',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 1},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_lollipop',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        enhancement = 'm_steel'
    }},
    loc_vars = function (self, info_queue, card)
        return { vars = {
            localize{type = "name_text", set = 'Enhanced', key = card.ability.extra.enhancement}
        }}
    end,
    can_use = enhancement_can,
    use = enhancement_use
}
-- Quiche Lorraine
SMODS.Consumable{
    key = '_c_giga_quiche_lorraine',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 6, y = 4},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_quicheLorraine',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        limit = 2,
        suit = 'Hearts'
    }},
    loc_vars = suit_loc,
    can_use = suit_can,
    use = suit_use
}
-- Paella
SMODS.Consumable{
    key = '_c_giga_paella',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 2, y = 4},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_paella',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        limit = 2,
        suit = 'Spades'
    }},
    loc_vars = suit_loc,
    can_use = suit_can,
    use = suit_use
}
-- Gummy Bear
SMODS.Consumable{
    key = '_c_giga_gummy_bear',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 1, y = 2},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_gummyBear',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        limit = 2,
        suit = 'Diamonds'
    }},
    loc_vars = suit_loc,
    can_use = suit_can,
    use = suit_use
}
-- Empanadas
SMODS.Consumable{
    key = '_c_giga_empanadas',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
    soul_pos = {x = 4, y = 3},
    fg_data = {
        is_alternate = true,
        alternate_key = 'c_giga_empanadas',
        crossover_label = 'GIGA'
    },
    config = {extra = {
        limit = 2,
        suit = 'Clubs'
    }},
    loc_vars = suit_loc,
    can_use = suit_can,
    use = suit_use
}
-- PB&J Sandwitch
-- Burger
-- Fruit salad
-- Ramen
-- Chocolate bar
-- Mac n' Cheese
-- Blueberry Muffin
-- Don't ut
-- Cramberry Juice
-- Bubble Tea
-- Bag of Candy
-- Cake
SMODS.Consumable{
    key = '_c_giga_birthday_cake',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 2, y = 1},
    soul_pos = {x = 3, y = 1},
    fg_data = {
        is_alternate = true,
        alternate_key ='c_giga_birthdayCake',
        crossover_label = 'GIGA'
    },    
    rarity = 4,
    cost = 4,
    hidden = true,
    soul_set = 'Giga_Food',
    config = {extra = 4},
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = {key = 'e_negative_consumable', set = 'Edition', config = {extra = 1}}
        return { vars = {
            card.ability.extra
        }}
    end,
    can_use = function (self, card)
        return #G.consumeables.cards >= 2
    end,
    use = function (self, card, area, copier)
        if not G.consumeables then return end
        local index = 1
        if G.consumeables.cards[1] == card then index = 2 end
        
        for i=1, card.ability.extra do
            local key = FG.FUNCS.get_card_info(G.consumeables.cards[index]).key
            SMODS.add_card{
                key = key,
                edition = 'e_negative'
            }
        end
    end
}
-- Turkey
SMODS.Consumable{
    key = '_c_giga_turkey',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 2, y = 1},
    soul_pos = {x = 3, y = 4},
    fg_data = {
        is_alternate = true,
        alternate_key ='c_giga_turkey',
        crossover_label = 'GIGA'
    },
    rarity = 4,
    cost = 4,
    hidden = true,
    soul_set = 'Giga_Food',
    config = {

        extra = {
            round = 3,
            round_left = 3,
            jokers = 1,
            txt = 'Not ready yet'
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS['e_negative']
        info_queue[#info_queue+1] = {key = 'eternal', set = 'Other'}
        return {vars = {
            card.ability.extra.jokers,
            card.ability.extra.round,
            card.ability.extra.txt
        }}
    end,
    can_use = function (self, card)
        for _,v in ipairs(G.jokers.cards) do
            if FG.FUNCS.get_card_info(v).edition ~= 'e_negative'
            and v.config.center.eternal_compat then
                return card.ability.extra.round_left <= 0
            end
        end
        return false
    end,
    use = function (self, card, area, copier)
        for i=1, card.ability.extra.jokers do
            local ellegible_jokers = {}
            for _,v in ipairs(G.jokers.cards) do
                if FG.FUNCS.get_card_info(v).edition ~= 'e_negative'
                and v.config.center.eternal_compat then
                    ellegible_jokers[#ellegible_jokers+1] = v
                end
            end
            local card = pseudorandom_element(ellegible_jokers,'mila')
            if not card then return end -- shut up nil check
            card:set_edition('e_negative')
            card.ability.eternal = true
        end
    end,
    calculate = function (self,card,context)
        if context.end_of_round and context.main_eval then
            card.ability.extra.round_left = card.ability.extra.round_left - 1
        end
        if card.ability.extra.round_left <= 0 and card.ability.extra.txt == 'Not ready yet' and #G.consumeables.cards then
            local check_remove = function(card) 
                return not card.REMOVED
            end
            juice_card_until(card, check_remove, true)
            card.ability.extra.txt = 'Ready'
        end
    end
}
-- Migas