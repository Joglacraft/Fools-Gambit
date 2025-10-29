sendInfoMessage("Giga/Food compat loaded!","FoolsGambit/Compat")


SMODS.Consumable{
    key = 'turkey',
    set = 'Giga_Food',
    atlas = 'giga_Foods',
    prefix_config = {atlas = false},
    pos = {x = 2, y = 1},
    soul_pos = {x = 3, y = 4},
    rarity = 4,
    cost = 4,
    hidden = true,
    soul_set = 'Giga_Food',
    config = {
        fg_data = {
            is_alternate = true,
            alternate_card = 'c_giga_turkey',
            crossover_label = 'GIGA'
        },
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