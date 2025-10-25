FG.ALTS.spectral_equivalents = {
    c_soul = "c_fg_soul"
}

SMODS.Atlas{
    key = 'spectral_disc',
    path = 'spectral_disc.png',
    px = 71, py = 95
}


SMODS.Consumable{
    set = "Spectral",
    hidden = true,
    soul_set = "aberration",
    soul_rate = 0.00834,
    can_repeat_soul = false,
    key = "soul",
    atlas = "Tarot",
    pos = {x = 2, y = 2},
    prefix_config = {atlas = false},
    soul_pos = {x = 0, y = 0},
    config = {
        fg_data = {
			is_alternate = true,
			alternate_card = 'c_soul'
		},
    },
    set_sprites = function (self, card, front)
        card.children.floating_sprite = Sprite(card.T.x, card.T.y, card.T.w, card.T.h, G.ASSET_ATLAS['fg_spectral_disc'], card.config.center.soul_pos)
        card.children.floating_sprite.role.draw_major = card
        card.children.floating_sprite.states.hover.can = false
        card.children.floating_sprite.states.click.can = false
    end,
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