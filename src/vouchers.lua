FG.vouchers = {}

SMODS.Atlas {
	key = "vouchers",
	path = "vouchers.png",
	px = 71,
	py = 95
}

SMODS.Voucher{
    key = "change_of_pace",
    atlas = "vouchers",
    pos = { x = 2, y = 0},
    redeem = function (self, voucher)
        FG.FUNCS.recalculate_alt_rates(0.30)
    end
}

SMODS.Voucher{
    key = "modulation",
    atlas = "vouchers",
    pos = { x = 2, y = 1},
    requires = {"v_fg_change_of_pace"},
    redeem = function (self, voucher)
        FG.FUNCS.recalculate_alt_rates(0.45)
    end
}

SMODS.Voucher{
    key = "music_merchant",
    atlas = "vouchers",
    pos = { x = 0, y = 0},
    redeem = function (self, voucher)
        G.GAME.aberration_rate = 4
    end
}

SMODS.Voucher{
    key = "music_tycoon",
    atlas = "vouchers",
    pos = { x = 0, y = 1},
    requires = {"v_fg_music_merchant"},
    redeem = function (self, voucher)
        G.GAME.aberration_rate = 12
    end
}


SMODS.Voucher{
	key = 'violin',
    atlas = "vouchers",
    pos = { x = 1, y = 0 },
    redeem = function(self,card)

        -- Overrides any pack that generates aberrations
        for _,v in pairs(G.P_CENTERS) do
            if v.kind == "aberration" then
                v.config.extra = v.config.extra + 1
            end
        end

        -- Modifies existing packs
        for _,v in ipairs(G.shop_booster.cards) do
            if v.config.center.kind == "aberration" then
                v.ability.extra = v.ability.extra + 1
            end
        end
    end
}


SMODS.Voucher{
	key = 'cello',
    atlas = "vouchers",
    pos = { x = 1, y = 1 },
    requires = {"v_fg_violin"},
    redeem = function(self,card)

        -- Overrides any pack that generates aberrations
        for _,v in pairs(G.P_CENTERS) do
            if v.kind == "aberration" then
                v.config.choose = v.config.choose + 1
            end
        end

        -- Modifies existing packs
        for _,v in ipairs(G.shop_booster.cards) do
            if v.config.center.kind == "aberration" then
                v.ability.choose = v.ability.choose + 1
            end
        end
    end
}