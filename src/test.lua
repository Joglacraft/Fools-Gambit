FG.test = {
    main_menu_button_text = "Stuff",
    -- silly thing I made. Makes samuran act like copy/paste from cryptid
    samuran_is_copy_paste = false
}

function FG.test.toggle_unchangeable()
    if not G.jokers then
        sendWarnMessage("Please, execute this function while in a run.","FG/toggle_unchangeable")
        return "not_in_game"
    end
    if not G.jokers.highlighted[1] then
        sendWarnMessage("Please, select one Joker before executing this funciton","FG.toggle_unchangeable")
        return "no_card_selected"
    end
    local target = G.jokers.highlighted[1]
    if not FG.FUNCS.get_card_info(target).unchangeable then
        target.ability.fg_unchangeable = true
        return "enabled"
    elseif FG.FUNCS.get_card_info(target).unchangeable then
        target.ability.fg_unchangeable = nil
        return "disabled"
    end
end


if FG.config.debug_mode then
    SMODS.Joker {
        key = "test",
        yes_pool_flag = "i_am_sorry_jenku",
        loc_txt = {
            name = "Test Joker",
            text = {
                "Testing"
            }
        },
        cost = 1,
        rarity = 1,
        loc_vars = function (self, info_queue, card)
        end,
        calculate = function (self, card, context)
        end
    }
end


-- Test any variables and functions here, under FG.test