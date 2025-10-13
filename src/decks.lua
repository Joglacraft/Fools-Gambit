if false then
SMODS.Back{
    key = "collective",
    loc_txt = {
        name = "Collective deck",
        text = {
            "Start with a",
            "{C:purple}Soul?{} card"
        }
    },
    apply = function (self, back)
        G.E_MANAGER:add_event(Event{
            func = function ()
                SMODS.add_card{
                    key = "c_fg_soul"
                }
                return true
            end
        })
    end
}
end