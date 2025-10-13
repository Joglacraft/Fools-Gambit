SMODS.Atlas {
	key = "pack",
	path = "boosters.png",
	px = 71,
	py = 95
}

FG.boosters = {}

FG.boosters.aberration1 = SMODS.Booster {
    key = "aberration1",
    kind = "aberration",
    atlas = "pack",
    pos = { x = 0, y = 0 },
    config = { extra = 3, choose = 1 },
    draw_hand = true,
    cost = 4,
    order = 1,
    weight = 0.96,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, self.config.extra or card.config.center.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("aberration", G.pack_cards, nil, nil, true, true, nil)
    end,
    loc_txt = {
        ['en-us'] = {
            group_name = "Aberration pack"
        },
        ['zh_CN'] = {
            group_name = "调律包"
        }}
}


FG.boosters.aberration2 = SMODS.Booster {
    key = "aberration2",
    kind = "aberration",
    atlas = "pack",
    pos = { x = 1, y = 0 },
    config = { extra = 3, choose = 1 },
    draw_hand = true,
    cost = 4,
    order = 1,
    weight = 0.96,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, self.config.extra or card.config.center.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("aberration", G.pack_cards, nil, nil, true, true, nil)
    end,
    loc_txt = {
        ['en-us'] = {
            group_name = "Aberration pack"
        },
        ['zh_CN'] = {
            group_name = "调律包"
        }}
}

FG.boosters.jumbo_aberration = SMODS.Booster {
    key = "aberration3",
    kind = "aberration",
    atlas = "pack",
    pos = { x = 2, y = 0 },
    config = { extra = 5, choose = 1 },
    draw_hand = true,
    cost = 4,
    order = 1,
    weight = 0.96,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, self.config.extra or card.config.center.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("aberration", G.pack_cards, nil, nil, true, true, nil)
    end,
    loc_txt = {
        ['en-us'] = {
            group_name = "Jumbo aberration pack"
        },
        ['zh_CN'] = {
            group_name = "巨型调律包"
        }}
}

FG.boosters.mega_aberration = SMODS.Booster {
    key = "aberration4",
    kind = "aberration",
    atlas = "pack",
    pos = { x = 3, y = 0 },
    config = { extra = 5, choose = 2 },
    draw_hand = true,
    cost = 4,
    order = 1,
    weight = 0.96,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.config.center.config.choose, self.config.extra or card.config.center.config.extra } }
    end,
    create_card = function(self, card)
        return create_card("aberration", G.pack_cards, nil, nil, true, true, nil)
    end,
    loc_txt = {
        ['en-us'] = {
            group_name = "Mega aberration pack"
        },
        ['zh_CN'] = {
            group_name = "超级调律包"
        }}
}