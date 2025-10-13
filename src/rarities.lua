SMODS.Rarity{
    key = "common_alt",
    badge_colour = G.C.BLUE,
    default_weight = 0.7,
    pools = {Joker = true},
    fg_data = {
        is_alternate = true
    },
}

SMODS.Rarity{
    key = "uncommon_alt",
    badge_colour = G.C.GREEN,
    default_weight = 0.25,
    pools = {Joker = true},
    fg_data = {
        is_alternate = true
    },
}

SMODS.Rarity{
    key = "rare_alt",
    badge_colour = G.C.RED,
    default_weight = 0.05,
    pools = {Joker = true},
    fg_data = {
        is_alternate = true
    },
}

SMODS.Rarity{
    key = "legendary_alt",
    badge_colour = G.C.PURPLE,
    default_weight = 0,
    pools = {Joker = true},
    fg_data = {
        is_alternate = true
    },
}


SMODS.Rarity{
    key = "collective",
    badge_colour = G.C.GOLD,
    default_weight = 0,
    pools = {Joker = true},
}

SMODS.Rarity{
    key = "collective_alt",
    badge_colour = G.C.GOLD,
    default_weight = 0,
    pools = {Joker = true},
    fg_data = {
        is_alternate = true
    },
}

-- Reset tables
FG.rarities.alternate = {}
FG.rarities.original = {}

for _,v in pairs(SMODS.Rarities) do
    -- Populate tables
    if v.fg_data and v.fg_data.is_alternate then
        table.insert(FG.rarities.alternate,v.key)
    else
        table.insert(FG.rarities.original,v.key)
    end
end
--print("test"..FG.fuck)