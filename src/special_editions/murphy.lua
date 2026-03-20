print('BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB')
if FG.config.s_version.active == "Murphys madness" then
    print('hi AAAAAAAAAAAAAAAAAAAAAAAAAAAA')
    SMODS.Consumable:take_ownership('c_fg_emperor',{
        calculate = function (self, card, context)
            print('hi')
        end
    })
end