FG = {
	ALTS = {},		-- Stores all alternating tables.
	FUNCS = {}, 	-- Stores all funtions used in the mod, be it the API or not.
	cards = {},
	rarities = {
		original = {},
		alternate = {}
	}
}
FG.config = SMODS.current_mod.config

FG.config.version = SMODS.current_mod.version

SMODS.current_mod.optional_features = { retrigger_joker = true }

--[[
SMODS.Atlas{
	key = "mod_icon",
	path = "modicon.png",
	px = 34,
	py = 34
}
]]

SMODS.Atlas{
	key = 'Consumeables',
	path = 'Tarots.png',
	px = 71,
	py = 95
}

---@alias card table

G.C.FG_ALTERNATE = HEX('8867a5')
G.C.FG_ORIGINAL = HEX('FE5F55')

-- This is in preparation for file splitting. I'll do that later. - Jogla
-- im splitting jokers and stuff into sections to make this easier later - jenku
local mod_contents = {
	{path = 'special_editions/sendien', depencies = {}},
	{path = 'aux_functions', depencies = {}},
	{path = 'overrides', depencies = {}},
	{path = 'jokers', depencies = {}},
	{path = 'editions', depencies = {}},
	{path = 'consumeables', depencies = {}},
	{path = 'booster_packs', depencies = {}},
	{path = 'rarities', depencies = {}},
	{path = 'vouchers', depencies = {}},
	{path = 'enhancements', depencies = {}},
	{path = 'UI_definitions', depencies = {}},
	{path = 'test', depencies = {}},
	{path = 'special_editions/mila', depencies = {}},
	{path = 'tarots', depencies = {}},
	{path = 'seals', depencies = {}},
	{path = 'misc', depencies = {}},
	{path = 'decks', depencies = {}},
}

for k, v in ipairs(mod_contents) do -- Load this mod's files
	local exists = true
	for _,vv in ipairs(v.depencies) do
		if not next(SMODS.find_mod(vv)) then exists = false end
	end
	if exists then assert(SMODS.load_file('/content/'..v.path..'.lua'))() end
end

-- Pool flags
--G.GAME.pool_flags.alternate_spawn = false



if FG.config.debug_mode then
	sendInfoMessage("\n\n\n=== [ /!\\ WARNING /!\\ ] ===\n\nYou are playing with Debug Mode enabled.\nThis can lead to unexpected errors, as it may contain unfinished content.\n\nWHEN MAKING A BUG REPORT, STATE THAT YOU ARE USING DEBUG MODE.\nFool's Gambit version: "..tostring(SMODS.current_mod.version).."\n\n=== [ /!\\ WARNING /!\\ ] ===\n\n", "Fool's gambit")
end