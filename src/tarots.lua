--
-- AUX FUNCTIONS | DO NOT TOUCH
--

-- Used to create alternative enhancements. 
-- It sucks ass.`target` sets the enhancement to add, 'other' is for a fixed enhancement of the rest of the hand
local function tarot_convert (target,other)
    play_sound("tarot1",1)
    local pitch = 0.9
    for _,v in ipairs(G.hand.cards) do -- Flip cards
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0.2,
            func = function()
                v:flip()
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
                local choosen = FG.POOLS.base_enhancement[pseudorandom('mila',1,#FG.POOLS.base_enhancement)]
                if choosen == target and #FG.POOLS.base_enhancement > 1 then choosen =  pick_random() end
                return choosen
            end
            other = other or pick_random()
            for _,v in ipairs(G.hand.cards) do
                v:set_ability(other)
            end
        return true end
    })
    G.E_MANAGER:add_event(Event{
        func = function ()
            for _,v in ipairs(G.hand.highlighted) do
                v:set_ability(target)
            end
        return true end
    })
    pitch = pitch + 0.3
    for _,v in ipairs(G.hand.cards) do -- Flip cards
        G.E_MANAGER:add_event(Event({
            trigger = "after",
            delay = 0.2,
            func = function()
                v:flip()
                play_sound("tarot2",pitch)
                pitch = pitch + 0.1
                return true
            end
        }))
    end
end


local function tarot_change_suit(selected,other)
    local pitch = 0.9
    play_sound("tarot1")
    for _,v in pairs(G.hand.cards) do
        G.E_MANAGER:add_event(Event({
            trigger = "after", 
            delay = 0.2, 
            func = function() 
                v:flip()
                return true
            end
        }))
    end
    G.E_MANAGER:add_event(Event({
        trigger = "immediate",
        func = function()
            for _,v in pairs(G.hand.cards) do
                assert(SMODS.change_base(v,other))
            end
            for _,v in pairs(G.hand.highlighted) do
                assert(SMODS.change_base(v,selected))
            end
            return true
        end
    }))
    for _,v in pairs(G.hand.cards) do
        G.E_MANAGER:add_event(Event({
            trigger = "after", 
            delay = 0.2, 
            func = function() 
                v:flip()
                play_sound("tarot2",pitch)
                pitch = pitch + 0.2
                return true
            end
        }))
    end
end

--
-- ACTUAL TAROTS
--


SMODS.Consumable{
    set = "Tarot",
    key = "fool",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 0, y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_fool"
        },    
    config = { extra = {amount = 1}},
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.amount}}
    end,
    can_use = function (self, card)
        if G.consumeables.config.card_count <= G.consumeables.config.card_limit then return true else return false end
    end,
    use = function (self, card, area, copier)
        for i=1, card.ability.extra.amount do
            if G.consumeables.config.card_count <= G.consumeables.config.card_limit then
                local s = {'Tarot','Planet'}
                SMODS.add_card{
                    set = s[pseudorandom('mila',1,#s)],
                    area = G.consumeables
                }
            end
        end
    end
}


SMODS.Consumable{
    set = "Tarot",
    key = "magician",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 1 , y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_magician"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_lucky
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,
    use = function (self, card, area, copier)
        tarot_convert("m_fg_lucky")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "high_priestess",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 2, y = 0},
    fg_data = {
            is_alternate = true,
            alternate_key ="c_high_priestess"
        },    
    config = {
        extra = {
            min = 1,
            max = 8
        }
    },
    loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(nil, 1, 1)
        info_queue[#info_queue+1] = G.P_CENTERS.c_black_hole
        return {
            vars = {
                num,
                card.ability.extra.max * denom
            }
        }
    end,
    can_use = function (self, card)
        if not G.consumeables then return false end
        if G.consumeables.config.card_count <= G.consumeables.config.card_limit then return true end
    end,
    use = function (self, card, area, copier)
        if pseudorandom("mila",card.ability.extra.min,card.ability.extra.max) <= card.ability.extra.min then
            SMODS.add_card{
                key = "c_black_hole"
            }
        else
            FG.FUNCS.card_eval_status_text{
                card = card,
                message = "Nope!",
                mode = "literal"
            }
        end
    end
}


SMODS.Consumable{
    set = "Tarot",
    key = "empress",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 3 , y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_empress"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_mult
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,
    use = function (self, card, area, copier)
        tarot_convert("m_fg_mult")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "emperor",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 4, y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_emperor"
        },    
    config = {
        extra = {
            min = 1,
            max = 16
        }
    },
    loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(nil, 1, 1)
        info_queue[#info_queue+1] = G.P_CENTERS.c_soul
        return {
            vars = {
                num,
                card.ability.extra.max * denom
            }
        }
    end,
    can_use = function (self, card)
        if not G.consumeables then return false end
        if G.consumeables.config.card_count <= G.consumeables.config.card_limit then return true end
    end,
    use = function (self, card, area, copier)
        if pseudorandom("mila",card.ability.extra.min,card.ability.extra.max) <= card.ability.extra.min then
            SMODS.add_card{
                key = "c_soul"
            }
        else
            FG.FUNCS.card_eval_status_text{
                card = card,
                message = "Nope!",
                mode = "literal"
            }
        end
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "heirophant",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 5 , y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_heirophant"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_bonus
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,
    use = function (self, card, area, copier)
        tarot_convert("m_fg_bonus")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "lovers",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 6 , y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_lovers"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_wild
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,

    use = function (self, card, area, copier)
        tarot_convert("m_fg_wild")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "chariot",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 7 , y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_chariot"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_steel
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,
    use = function (self, card, area, copier)
        tarot_convert("m_fg_steel")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "justice",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 8 , y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_justice"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_glass
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,
    use = function (self, card, area, copier)
        tarot_convert("m_fg_glass")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "hermit",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 9, y = 0},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_hermit"
        },    
    config = {
        extra = {highlight = 3, subtract_max = 30
    }},
    loc_vars = function (self, info_queue, card)
        return {vars = {
            card.ability.extra.highlight,
            card.ability.extra.subtract_max
        }}
    end,
    can_use = function (self, card)
        if #G.hand.highlighted ~= 0 and #G.hand.highlighted <= card.ability.extra.highlight then return true else return false end
    end,
    use = function (self, card, area, copier)
        local enhancement = SMODS.poll_enhancement{key = "mila", guaranteed = true, }
        local d_subtract = G.GAME.dollars/2
        play_sound("tarot1",1)
        local pitch = 0.9
        if d_subtract > card.ability.extra.subtract_max then ease_dollars(-math.ceil(card.ability.extra.subtract_max))
        else ease_dollars(-math.ceil(d_subtract)) end
        for _,v in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.2,
                func = function()
                    v:flip()
                    return true
                end
            }))
        end
        for _,v in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({
                trigger = "immediate",
                func = function()
                    v:set_ability(enhancement)
                    return true
                end
            }))
        end
        for _,v in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.2,
                func = function()
                    v:flip()
                    play_sound("tarot2",pitch)
                    pitch = pitch + 0.2
                    return true
                end
            }))
        end
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "wheel_of_fortune",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 0, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_wheel_of_fortune"
        },    
    config = {
        extra = {
            min_chance = 1,
            max_chance = 18
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.e_negative
        card.ability.extra.min_chance = G.GAME.probabilities.normal or 1
        return {
            vars = {
                card.ability.extra.min_chance,
                card.ability.extra.max_chance
            }
        }
    end,
    can_use = function (self, card)
        local elegible_cards = {}
        for _,v in ipairs(G.jokers.cards) do
            if not v.edition then
                elegible_cards[#elegible_cards+1] = v
            end
        end
        if next(elegible_cards) then return true else return false end
    end,
    use = function (self, card, area, copier)
        local elegible_cards = {}
        for _,v in ipairs(G.jokers.cards) do
            if not v.edition then
                elegible_cards[#elegible_cards+1] = v
            end
        end
        if pseudorandom("nope",card.ability.extra.min_chance,card.ability.extra.max_chance) <= card.ability.extra.min_chance and next(elegible_cards) then
            local choosen_card = pseudorandom("nope",1,#elegible_cards)
            elegible_cards[choosen_card]:set_edition("e_negative")
        else
            G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
                attention_text({
                    text = localize('k_nope_ex'),
                    scale = 1.3, 
                    hold = 1.4,
                    major = card,
                    backdrop_colour = G.C.SECONDARY_SET.Tarot,
                    align = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and 'tm' or 'cm',
                    offset = {x = 0, y = (G.STATE == G.STATES.TAROT_PACK or G.STATE == G.STATES.SPECTRAL_PACK) and -0.2 or 0},
                    silent = true
                    })
                    G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.06*G.SETTINGS.GAMESPEED, blockable = false, blocking = false, func = function()
                        play_sound('tarot2', 0.76, 0.4);return true end}))
                    play_sound('tarot2', 1, 0.4)
                    card:juice_up(0.3, 0.5)
            return true end }))
        end
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "strength",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 1, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_strength"
        },    
    config = {
        extra = {
            ranks = 2
        }
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.ranks or 2}}
    end,
    can_use = function (self, card)
        if G.hand and #G.hand.highlighted == 2 then return true end
    end,
    use = function (self, card, area, copier)
        local pitch = 0.9
        play_sound("tarot1")
        for _,v in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event{trigger = 'after', delay = 0.2, func = function ()
                v:flip()
                return true
            end})
        end
        G.E_MANAGER:add_event(Event{
            trigger = 'after', delay = 0.2,
            func = function ()
                local leftmost, rightmost = G.hand.highlighted[1], G.hand.highlighted[1]
                for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x < leftmost.T.x then leftmost = G.hand.highlighted[i] end end
                for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x > rightmost.T.x then rightmost = G.hand.highlighted[i] end end
                for i=1, (card.ability.extra.ranks) or 2 do
                    local fuck, you = SMODS.change_base(leftmost,nil,SMODS.Ranks[FG.FUNCS.get_card_info(leftmost).rank].next[1])
                    local fuck, you = SMODS.change_base(rightmost,nil,SMODS.Ranks[FG.FUNCS.get_card_info(rightmost).rank].prev[1])
                end
                return true
            end
        })
        for _,v in ipairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event{trigger = 'after', delay = 0.2, func = function ()
                v:flip()
                play_sound("tarot2",pitch)
                pitch = pitch + 0.2
                return true
            end})
        end
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "hanged_man",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 2, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_hanged_man"
        },    
    config = {
        extra = {destroy = 4}
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.destroy} or 4}
    end,
    can_use = function (self, card) return (G.hand and #G.hand.cards > 0) end,
    use = function (self, card, area, copier)
        local temp_hand = {}
        local destroyed_cards = {}
        for k, v in ipairs(G.hand.cards) do temp_hand[#temp_hand+1] = v end
        table.sort(temp_hand, function (a, b) return not a.playing_card or not b.playing_card or a.playing_card < b.playing_card end)
        pseudoshuffle(temp_hand, pseudoseed('immolate'))

        for i = 1, math.ceil(card.ability.extra.destroy) do destroyed_cards[#destroyed_cards+1] = temp_hand[i] end

        G.E_MANAGER:add_event(Event({trigger = 'after', delay = 0.4, func = function()
            play_sound('tarot1')
            card:juice_up(0.3, 0.5)
            return true end }))
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function() 
                for i=#destroyed_cards, 1, -1 do
                    local c = destroyed_cards[i]
                    if FG.FUNCS.get_card_info(c).key == "m_glass" or FG.FUNCS.get_card_info(c).key == "m_fg_glass" then 
                        c:shatter()
                    else
                        c:start_dissolve(nil, i == #destroyed_cards)
                    end
                end
        return true end }))
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "death",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 3, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_death"
        },    
    config = {
        extra = {highlight = 4}
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.highlight}}
    end,
    can_use = function (self, card)
        if #G.hand.highlighted >= 2 and #G.hand.highlighted <= card.ability.extra.highlight then return true else return false end
    end,
    use = function (self, card, area, copier)
        local pitch = 0.9
        play_sound("tarot1")
        local rightmost = G.hand.highlighted[1]
        for i=1, #G.hand.highlighted do if G.hand.highlighted[i].T.x > rightmost.T.x then rightmost = G.hand.highlighted[i] end end
        for _,v in pairs(G.hand.highlighted) do
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.2,
                func = function ()
                    v:flip()
                    return true
                end
            }))
        end
        G.E_MANAGER:add_event(Event({
            trigger = "immediate",
            func = function ()
                for _,v in pairs(G.hand.highlighted) do
                    assert(SMODS.change_base(v,rightmost.config.card.suit,rightmost.config.card.value),"Error while trying to copy rank and suit")
                end
                return true
            end
        }))
        for _,v in pairs(G.hand.highlighted) do 
            G.E_MANAGER:add_event(Event({
                trigger = "after",
                delay = 0.2,
                func = function ()
                    v:flip()
                    play_sound("tarot2",pitch)
                    pitch = pitch + 0.2
                    return true
                end
            }))
        end
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "temperance",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 4, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_temperance"
        },    
    config = {
        extra = {value = 0, max = 50}
    },
    loc_vars = function (self, info_queue, card)
        if G.consumeables then
            card.ability.extra.value = 0
            for _,v in pairs(G.consumeables.cards) do
                card.ability.extra.value = card.ability.extra.value + v.config.center.cost
            end
            if card.ability.extra.value > card.ability.extra.max then
                card.ability.extra.value = card.ability.extra.max
            end
        end
        return {vars = {
            card.ability.extra.value,
            card.ability.extra.max
        }}
    end,
    can_use = function (self, card)
        local exists = 0
        for _,v in ipairs(G.consumeables.cards) do if v == card then exists = 1 end end
        if G.consumeables and #G.consumeables.cards > exists then return true end
    end,
    use = function (self, card, area, copier)
        card.ability.extra.value = 0
        for _,v in pairs(G.consumeables.cards) do
            card.ability.extra.value = card.ability.extra.value + v.config.center.cost * 2
        end
        if card.ability.extra.value == 0 then return
        elseif card.ability.extra.value <= card.ability.extra.max then ease_dollars(card.ability.extra.value)
        else ease_dollars(card.ability.extra.max) end
    end
}


SMODS.Consumable{
    set = "Tarot",
    key = "devil",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 5 , y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_devil"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_gold
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,
    use = function (self, card, area, copier)
        tarot_convert("m_fg_gold")
    end
}


SMODS.Consumable{
    set = "Tarot",
    key = "tower",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 6 , y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_tower"
        },    
    config = {
        extra = {
            convert = 4,
        }
    },
    loc_vars = function (self, info_queue, card)
        info_queue[#info_queue+1] = G.P_CENTERS.m_fg_stone
        return {
            vars = {
                card.ability.extra.convert,
            }
        }
    end,
    can_use = function (self, card) return #G.hand.highlighted == card.ability.extra.convert end,
    use = function (self, card, area, copier)
        tarot_convert("m_fg_stone")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "star",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 7, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_star"
        },    
    config = {
        extra = {highlight = 4}
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.highlight}}
    end,
    can_use = function (self, card)
        if #G.hand.highlighted == card.ability.extra.highlight then return true else return false end
    end,
    use = function (self, card, area, copier)
        --[[
        local count = {
            spades = 0,
            hearts = 0,
            clubs = 0,
            diamonds = 0
        }
        local min_count = G.hand.config.temp_limit
        local target = "Spades"
        for _,v in pairs(G.hand.cards) do
            if v.config.card.suit == "Spades" then count.spades = count.spades + 1
            elseif v.config.card.suit == "Hearts" then count.hearts = count.hearts + 1
            elseif v.config.card.suit == "Clubs" then count.clubs = count.clubs + 1
            elseif v.config.card.suit == "Diamonds" then count.diamonds = count.diamonds + 1
            end
        end
        ]]
        tarot_change_suit("Diamonds","Clubs")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "moon",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 8, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_moon"
        },    
    config = {
        extra = {highlight = 4}
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.highlight}}
    end,
    can_use = function (self, card)
        if #G.hand.highlighted == card.ability.extra.highlight then return true else return false end
    end,
    use = function (self, card, area, copier)
        tarot_change_suit("Clubs","Diamonds")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "sun",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 9, y = 1},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_sun"
        },    
    config = {
        extra = {highlight = 4}
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.highlight}}
    end,
    can_use = function (self, card)
        if #G.hand.highlighted == card.ability.extra.highlight then return true else return false end
    end,
    use = function (self, card, area, copier)
        tarot_change_suit("Hearts","Spades")
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "judgement",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 0, y = 2},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_judgement"
        },    
    config = {
        extra = {low_chance = 2, count = 2}
    },
    loc_vars = function (self, info_queue, card)
		local num, denom = SMODS.get_probability_vars(nil, 1, 1)
        return {
            vars = {
                num,
                (card.ability.extra.low_chance or 2) * denom,
                card.ability.extra.count or 2
            }
        }
    end,
    can_use = function (self, card) if G.jokers and G.jokers.cards[1] and type(FG.FUNCS.get_card_info(G.jokers.cards[1]).rarity) == "number" then return #G.jokers.cards < G.jokers.config.card_limit end end,
    use = function (self, card, area, copier)
        local function clamp(min,n,max) return math.max(min,math.min(max,n)) end
        local rarity = FG.FUNCS.get_card_info(G.jokers.cards[1]).rarity
        play_sound("tarot2")
        G.jokers.cards[1]:start_dissolve()
        if FG.FUNCS.random_chance(card.ability.extra.low_chance or 2) then
            rarity = rarity - 1
            for i=1, math.max(math.min((card.ability.extra.count or 2), G.jokers.config.card_limit-G.jokers.config.card_count)) do
                SMODS.add_card{
                    set = "Joker",
                    rarity = clamp(0, rarity/2.5, 1) -- Very shitty thing because rarity is between 0 and 1
                }
            end
        else
            rarity = rarity + 1
            for i=1,  math.max(math.min((card.ability.extra.count or 2), G.jokers.config.card_limit-G.jokers.config.card_count)) do
                SMODS.add_card{
                    set = "Joker",
                    rarity = clamp(0, rarity/2.5, 1) -- ditto as above
                }
            end
        end
    end
}

SMODS.Consumable{
    set = "Tarot",
    key = "world",
    atlas = "Tarot",
    prefix_config = {atlas = false},
    pos = {x = 1, y = 2},
        fg_data = {
            is_alternate = true,
            alternate_key ="c_world"
        },    
    config = {
        extra = {highlight = 4}
    },
    loc_vars = function (self, info_queue, card)
        return {vars = {card.ability.extra.highlight}}
    end,
    can_use = function (self, card)
        if #G.hand.highlighted == card.ability.extra.highlight then return true else return false end
    end,
    use = function (self, card, area, copier)
        tarot_change_suit("Spades","Hearts")
    end
}
