SMODS.Atlas{
    key = "stickers",
    path = "stickers.png",
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = "istickers",
    path = "uhhhh.png",
    px = 71,
    py = 95
}
SMODS.Atlas{
    key = "stakes",
    path = "pink_stake.png",
    px = 29,
    py = 29
}
SMODS.Atlas{key = "modicon", path = "icon.png", px = 34, py = 34}
SMODS.Sticker{
    key = "unchangeable",
    atlas = "stickers",
    pos = { x = 0, y = 0},
    badge_colour = HEX("e083b0"),
    default_compat = true,
    rate = 0.3,
    should_apply = function(self, card, center, area, bypass_roll)
        if math.random(0,1) <= 0.3 and not (card.ability.set == "Planet") then
            return G.GAME.modifiers.enable_unchangeable_in_shop
        end
    end,
}

SMODS.Sticker{
    key = "alternate_mark",
    hide_badge = false,
    badge_colour = G.C.PURPLE,
    default_compat = false,
    sets = {},
    rate = 0,
}


SMODS.Stake{
    key = "pink",
    atlas = "stakes",
    pos = {x = 0, y = 0},
    unlocked_stake = "blue",
    applied_stakes = {"black"},
    above_stake = "black",
    sticker_atlas = 'istickers',
    sticker_pos = {x = 0, y = 0},
    unlocked = false,
    colour = G.C.PINK,
    prefix_config = { applied_stakes = { mod = false }, above_stake = { mod = false } },
    loc_txt = {
        name = "Pink stake",
        text = {
            "Shop can have {C:attention}unchangeable{} jokers",
            "{C:inactive,s:0.8}(Can't be alternated)",
        },
        sticker = {
            name = "Pink Sticker",
            text = {
                "Used this joker",
                "to win on{C:attention} Pink",
                "{C:attention}Stake{} difficulty"
            }
        }
    },
    modifiers = function ()
        G.GAME.modifiers.enable_unchangeable_in_shop = true
        -- print("peepeepoopoo")
    end
}


SMODS.Atlas{
    key = "logo_small",
    path = "logo2.png",
    px = 139,
    py = 51
}


SMODS.Joker{
    key = "logo",
    set = "aberration",
    atlas = "logo_small",
    yes_pool_flag = "i_want_to_see_the_fg_logo_in_my_runs",
    in_pool = function (self, args) return false end,
    unlocked = true,
    discovered = true,
    no_collection = true,
	pos = { x = 0, y = 0 },
    loc_txt = {
        name = "E",
        text = {
            "A",
            "B"
        }
    }
}

---
--- Quips
---

SMODS.JimboQuip{
    key = 'fg_jogla_w1',
    type = 'win',
	extra = {center = 'j_fg_jogla'},
	filter = function () if next(SMODS.find_card('j_fg_jogla')) or next(SMODS.find_card('j_fg_joglalt')) then return true, {weight = 8e256} end end,
}

SMODS.JimboQuip{
    key = 'fg_jogla_w2',
    type = 'win',
	extra = {center = 'j_fg_jogla'},
	filter = function () if next(SMODS.find_card('j_fg_jogla')) or next(SMODS.find_card('j_fg_joglalt')) then return true, {weight = 8e256} end end,
}

SMODS.JimboQuip{
    key = 'fg_jogla_l1',
    type = 'loss',
	extra = {center = 'j_fg_jogla'},
	filter = function () if next(SMODS.find_card('j_fg_jogla')) or next(SMODS.find_card('j_fg_joglalt')) then return true, {weight = 8e256} end end,
}

SMODS.JimboQuip{
    key = 'fg_jogla_l2',
    type = 'loss',
	extra = {center = 'j_fg_jogla'},
	filter = function () if next(SMODS.find_card('j_fg_jogla')) or next(SMODS.find_card('j_fg_joglalt')) then return true, {weight = 8e256} end end,
}



SMODS.JimboQuip{
    key = 'fg_goldenleaf_wq',
    type = 'win',
    extra = { center = 'j_fg_goldenleaf', particle_colours = { G.C.PURPLE, G.C.YELLOW, G.C.GOLD } },
    filter = function()
        if next(SMODS.find_card('j_fg_goldenleaf')) or next(SMODS.find_card('j_fg_goldenleafalt')) then
            return true, { weight = 100 }
        end
        return false
    end
}

SMODS.JimboQuip{
    key = 'fg_goldenleaf_lq',
    type = 'loss',
    extra = { center = 'j_fg_goldenleaf', particle_colours = { G.C.PURPLE, G.C.YELLOW, G.C.GOLD } },
    filter = function()
        if next(SMODS.find_card('j_fg_goldenleaf')) or next(SMODS.find_card('j_fg_goldenleafalt')) then
            return true, { weight = 100 }
        end
        return false
    end
}
--- 
--- Sound replacer
--- 
if FG.config.alternate_sfx then
    FG.sounds = {
        "ambientFire1",
        "ambientFire2",
        "ambientFire3",
        "ambientOrgan1",
        "button",
        "cancel",
        "card1",
        "card3",
        "cardFan2",
        "cardSlide1",
        "cardSlide2",
        "chips1",
        "chips2",
        "coin1",
        "coin2",
        "coin3",
        "coin4",
        "coin5",
        "coin6",
        "coin7",
        "crumple1",
        "crumple2",
        "crumple3",
        "crumple4",
        "crumple5",
        "crumpleLong1",
        "crumpleLong2",
        "explosion_buildup1",
        "explosion_release1",
        "explosion1",
        "foil1",
        "foil2",
        "generic1",
        "glass1",
        "glass2",
        "glass3",
        "glass4",
        "glass5",
        "glass6",
        "gold_seal",
        "gong",
        "highlight1",
        "highlight2",
        "holo1",
        "introPad1",
        "magic_crumple",
        "magic_crumple2",
        "magic_crumple3",
        "multhit1",
        "multhit2",
        "negative",
        "other1",
        "paper1",
        "polychrome1",
        "slice1",
        "splash_buildup",
        "tarot1",
        "tarot2",
        "timpani",
        "voice1",
        "voice2",
        "voice3",
        "voice4",
        "voice5",
        "voice6",
        "voice7",
        "voice8",
        "voice9",
        "voice10",
        "voice11",
        "whoosh_long",
        "whoosh",
        "whoosh1",
        "whoosh2",
        "win"
    }
    for _,sound in ipairs(FG.sounds) do
        print(sound)
        SMODS.Sound{
            key = sound,
            path = sound..".ogg",
            replace = sound
        }
    end
end