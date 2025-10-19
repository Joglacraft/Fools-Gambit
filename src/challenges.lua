
SMODS.Challenge{
    key = 'money_bleed',
    loc_txt = {
        name = 'Money-bleed'
    },
    jokers = {
        {id = 'j_fg_bull', eternal = true, fg_unchangeable = true},
        {id = 'j_fg_bootstraps', eternal = true, fg_unchangeable = true}
    }
}

local cards = {}

for _,s in pairs({'S','H','C','D'}) do
    for _,r in pairs({'A','K','Q','J','T','9','8','7','6','5','4','3','2'}) do
        table.insert(cards,{s=s,r=r,e='m_fg_stone'})
    end
end

local banned_keys_ref = {
    -- Jokers
    'j_certificate',
    -- Consumables
    'c_familiar',
    'c_grim',
    'c_cryptid',
    -- Vouchers
    'v_magic_trick',    
    -- Booster packs
    'p_standard_normal_1',
    'p_standard_normal_2',
    'p_standard_normal_3',
    'p_standard_normal_4',
    'p_standard_jumbo_1',
    'p_standard_jumbo_2',
    'p_standard_mega_1',
    'p_standard_mega_2',
}
local banned_keys = {}

for _,v in ipairs(banned_keys_ref) do
    banned_keys[#banned_keys+1] = {id = v}
end

SMODS.Challenge{
    key = 'force_stone',
    loc_txt = {
        name = 'Crumble zone'
    },
    rules = {
        {id = 'all_eternal'}
    },
    restrictions = {
        banned_cards = banned_keys,
        banned_tags = {
            {id = 'tag_standard'},
        },
    },
    deck = {
        -- I didn't see deck.enhancement in the SMODS documentation lol -Jogla
        cards = cards
    }
}
cards = nil
banned_keys_ref = nil
banned_keys = nil