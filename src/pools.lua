FG.POOLS = {
    base_enhancement = {
        _calculate = function () 
            FG.POOLS.base_enhancement = {_calculate = FG.POOLS.base_enhancement._calculate}
            for _,v in pairs(G.P_CENTERS) do
                if string.sub(v.key,1,2) == 'm_' and
                v.fg_data and v.fg_data.base_enhancement then 
                    table.insert(FG.POOLS.base_enhancement,v.key)
                end
            end
        end
    }
}