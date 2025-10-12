FG.ALTS.spectral_equivalents = {
    c_soul = "c_fg_soul"
}


SMODS.Consumable{
    set = "Spectral",
    hidden = true,
    soul_set = "aberration",
    soul_rate = 0.00834,
    can_repeat_soul = false,
    key = "soul",
    atlas = "Consumeables",
    config = {
        fg_data = {
			is_alternate = true,
			alternate_card = 'c_soul'
		},
    },
    pos = {x = 2, y = 2},
    soul_pos = {x = 6, y = 5},
    can_use = function (self, card)
        if G.jokers and #G.jokers.cards < G.jokers.config.card_limit then
            return true
        end
    end,
    use = function (self, card, area, copier)
        SMODS.add_card{
            set = "Joker",
            rarity = "fg_collective"
        }
    end
}