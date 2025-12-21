--- Fallback function to search through `FG.ALTS`
---@return table t The resulting table of the search. Should contain key-pair values
function FG.FUNCS.full_search_alternate ()
	local t = {}

	for _,v in pairs(FG.ALTS) do
		for kk,vv in pairs(v) do
			t[kk] = vv
		end
	end
	return t
end


--- Checks if a card is an alternate or not in the given table.
--- @param card table
--- @return boolean
function FG.FUNCS.is_alternate(card) return card.config.center.fg_data and card.config.center.fg_data.is_alternate end

--- Gets the key/value pair associated with the passing data.
---@param card table The provided card key.
---@return string|nil key The key of the alternate card. Returns `nil` if not found
function FG.FUNCS.get_alternate(card) return card.config.center and (type(card.config.center.fg_data.alternate_key) == 'string') and card.config.center.fg_data.alternate_key or nil end

-- Alternates between this card and the associated alternative card.
---@param card table|card The card object
---@return {old:card,new:card} table A table containing the old card and the new card.
function FG.FUNCS.alternate_card(card)
	local key = FG.FUNCS.get_alternate(card) or "j_joker"
	local found = FG.FUNCS.check_exists(key)

	if not found then key = "j_joker" end

	local new_card = SMODS.add_card{
		key = key,
		skip_materialize = true
	}
	card:start_dissolve(nil,true,0)

	return {
		original = card,
		alternate = new_card
	}
end

---Iterates through G.P_CENTERS and returns if the key exists.
---@param key string The key of the card to check for
---@return boolean
function FG.FUNCS.check_exists (key)
	for k, v in pairs(G.P_CENTERS) do 
		if k == key then return true; end
	end
	return false
end

--- Transfers the edition from the old card to the new card.
---@param source table|card The card to be altered.
---@param target? table|card - The card to be created. If not provided, it will be the same as source.
function FG.FUNCS.update_edition(source,target)
	target = target or source
	if source.edition then
		target:set_edition(FG.FUNCS.get_card_info(source).edition,true,true)
	else
		target:set_edition(nil,true,true)
	end
end

--- Alternate card's editions.
---@param source table|card The card to be altered.
---@param target? table|card The card to be created. If not provided, it will be the same as source.
function FG.FUNCS.alternate_edition(source,target)
	target = target or source
	if source.edition then
		target:set_edition(source.config.center.fg_data.alternate_card)
	else
		target:set_edition(nil,true,true)
	end
end

--- Update enhancement
---@param source table|card The card to be altered.
---@param target? table|card The card to be created. If not provided, it will be the same as source.
function FG.FUNCS.update_enhancement(source,target)
	target = target or source
	local enhancement = nil
	if FG.FUNCS.get_card_info(source).key then 
		enhancement = FG.FUNCS.get_card_info(source).key
	end
	target:set_ability(G.P_CENTERS[enhancement])
end

--- Alternate a card's enhancement
---@param source table|card The card to be altered.
---@param target? table|card The card to be created. If not provided, it will be the same as source.
function FG.FUNCS.alternate_enhancement(source,target)
	target = target or source
	local enhancement = source.config.center.fg_data.alternate_key
	if enhancement then target:set_ability(G.P_CENTERS[enhancement]) end
end


function FG.FUNCS.update_seal(source,target) end
function FG.FUNCS.alternate_seal(source,target)
	target = target or source
	local seal = G.P_SEALS[source:get_seal()].fg_data.alternate_key
	if seal then target:set_seal(seal) end
end

--- Transfers and updates the values from any given card to any other card.
---@param source table|card is the old card, that is being deleted
---@param target table|card is the new card created for alternating.
function FG.FUNCS.update_alternate_values(source,target,mode)
	target.config.center.fg_data = target.config.center.fg_data or {}
	target.config.center.fg_data.vars = source.config.center.fg_data and source.config.center.fg_data.vars or {}
end

--- Allows to duplicate any given card and insert it into playing hand. Return value is the new card. Sourced from 'cryptid' (Spectral).
---@param card card The card that is being duplicated.
---@return card card The newly created card.
FG.FUNCS.duplicate_playing_card = function (card)
	local _first_dissolve = nil
	G.playing_card = (G.playing_card and G.playing_card + 1) or 1
	local _card = copy_card(card, nil, nil, G.playing_card)
	_card:add_to_deck()
	G.deck.config.card_limit = G.deck.config.card_limit + 1
	table.insert(G.playing_cards, _card)
	G.hand:emplace(_card)
	_card:start_materialize(nil, _first_dissolve)
	_first_dissolve = true
	return _card
end

--- Wrapper function to not use card_eval_status_text (scroll down  [vvv])<br>
--- @param args {card:table,type?:string|"extra",category?:string|"FG",message?:string|"ERROR",mode?:"localize"|"literal",colour?:string,color?:string}
--- `card` table|card The card instance.<br>
--- `message` string The message. Can be literal or a key for translation.<br>
--- `category?` string Defaults to `FG`.<br>
--- `mode` string `literal` Display the raw text in `args.message`. `localize` Use `args.message` as a localization entry<br>
--- `colour|color` string Refer to `G.C.<colours>` for all available colours.<br>
function FG.FUNCS.card_eval_status_text (args)
	if not type(args) == "table" then return end
	local args = args or {}
	local card = args.card -- Target card
	local eval_type = args.type or "extra"
	local misc_cat = args.category
	local message = args.message or "ERROR"
	local mode = args.mode or "localize"
	local colour = args.colour or args.color or string.upper("orange") -- The color of the square background.
	colour = string.upper(colour)
	
	if not card then error("No target card selected!\nMake sure you specify the target card in the function arguments") return end

	if mode == "literal" then
		card_eval_status_text(card, eval_type, nil, nil, nil,
		{ message = message, colour = G.C[colour], delay = args.delay})
	elseif mode == "localize" then
		card_eval_status_text(card, eval_type, nil, nil, nil,
		{ message = localize(message,misc_cat), colour = G.C[colour], delay = args.delay})
	end
end
--- Retrieves useful data for the specified card
---@param card table|card  The target card to evaluate
---@return {id:boolean|number,rank:false|string,suit:false|string,is_face:boolean,key:false|string,edition:false|string,seal:false|string,stickers:{},base_cost:number,cost:number,mod_cost:number,sell_cost:number,rarity:number|string,raw:table|nil}|nil
--- Returns the card's `id`, `rank`, `suit`, if it's a face card, `key` (or enhancement), `edition`, `seal` 
--- and if it's `eternal`, `perishable` and how many rounds it has left, `rental`, buy and sell cost and
--- the `raw` data of the card, or `nil` if no card is passed.
function FG.FUNCS.get_card_info(card)
	if not card then sendWarnMessage("No card was passed.","FG.FUNCS.get_card_info") return nil end
	local ret = {
		id = false,
		rank = false,
		suit = false,
		is_face = false,
		key = false,
		edition = false,
		seal = card.seal or false,
		stickers = {},
		base_cost = card.base_cost or 0,
		cost = card.cost or 0,
		mod_cost = (card.cost or 0) - (card.base_cost or 0),
		sell_cost = card.sell_cost or 0,
		rarity = 0,
		raw = card
	}
	
	if card.base then ret.id = card.base.id end
	if card.config then
		if card.config.card then ret.rank = card.config.card.value end
		if card.config.card then ret.suit = card.config.card.suit end
		if ret.rank then
			for k,v in pairs(SMODS.Ranks) do
				if ret.rank == v.key and v.face then ret.is_face = true end
			end
		end
		if card.config.center then 
			ret.key = card.config.center.key 
			ret.rarity = card.config.center.rarity
		end
	end
	if card.edition then ret.edition = card.edition.key end
	if card.ability then
		for ability,v in pairs(card.ability) do
			for _,sticker in pairs(SMODS.Stickers) do
				if ability == sticker.key then ret.stickers[ability] = v end
			end
		end
	end
	return ret
end


---Simple function to check for any given chance.
---@param max number 1 in N chance, where N is `max`
---@return boolean success If the random chance succeeds
function FG.FUNCS.random_chance(max)
	return pseudorandom('mila', G.GAME.probabilities.normal, math.max(max,G.GAME.probabilities.normal,1)) <= G.GAME.probabilities.normal
end
--[[ -- new broken function. GoldenLeaf fucking fix this ty
function FG.FUNCS.random_chance(max)
	local boolean = pseudorandom('mila', SMODS.get_probability_vars(nil, 1, max)) <= G.GAME.probabilities.normal
	--SMODS.calculate_context({pseudorandom_result = true, result = boolean})
	return boolean
end]]

---@deprecated
function FG.FUNCS.allow_duplicate (card)
	if not G.jokers then sendWarnMessage("G.jokers doesn't exist!","FG.FUNCS.allow_duplicate") return end
	local found_showman = false
	local found_alternate = false
	for _,v in ipairs(G.jokers.cards) do
		if FG.FUNCS.get_card_info(v).key == "j_ring_master" then found_showman = true end -- Find showman
		if FG.FUNCS.get_card_info(v).key == FG.FUNCS.get_alternate(card) then found_alternate = true end -- Find alternate card
	end
	if FG.config.duplicated_jokers or found_showman or not found_alternate then return true else return false end
end

---Allows to easily create multi-line texts.
---@param args {text:table|string,colour:string,scale:number,padding:number,tooltip:{}|nil,align:"tl"|"tm"|"tr"|"cl"|"cm"|"cr"|"bl"|"bm"|"br",mode:"R"|"C"} The settings for the text.
---`text = {"No text"}` is a table (array), each string represents an entire line.
---`colour = "white` is the colour of the text.<br>
---`scale = 0.3` is the size of the text.<br>
---`padding = 0.05` is the distance between lines.<br>
---`tooltip` is a tooltip that will appear when hovering over the text.<br>
---`align = "cm"` sets the alignment of the text. `l`,`m`,`r` for horizontal, `t`,`m`,`b` for vertical alignment.<br>
---`mode = "R"` sets the container alignment for rows or colums.<br>
---
---@return table node The entire node structure. Do note it has a wrapper node.
function FG.FUNCS.UIBox_text (args)
	if not args or not type(args) == "table" then return 
	{ n = G.UIT.R, nodes = {{n = G.UIT.T, config = {text = "ERROR", scale = 0.3, colour = G.C.RED}}}} end
	
	local text = args.text or {"No text"}
	local colour = args.colour or "white"
	local scale = args.scale or 0.3
	local padding = args.padding or 0.05
	local hover = args.tooltip or nil
	local align = args.align or "cm"
	local mode = args.mode or "R"
	
	local ret = {n = G.UIT[string.upper(mode)], config = {padding = padding}, nodes = {}}
	
	if type(text) ~= "table" then return ret end
	for _,text in ipairs(text) do
		local tooltip = nil

		if hover then
			tooltip = {text = {}}
			for _,h_text in ipairs(hover) do
				if h_text == "" then h_text = " " end
				table.insert(tooltip.text,h_text)
			end
		end

		local cur_txt = {n = G.UIT.R, config = {align = align}, nodes = {
			{n = G.UIT.T, config = { text = text, colour = G.C[string.upper(colour)], scale = scale, tooltip = tooltip}}
		}}
		
		table.insert(ret.nodes,cur_txt)
	end

	return ret
end


--- Allows to search for any raw localization file, without formatting
---@param args table
---@return table|string
function FG.FUNCS.localize(args)
	local ret = G.localization
	local function recursive_find(dir,index)
		if index <= #args and dir ~= nil then
			ret = dir[args[index]]
			recursive_find(ret,index+1)
		end
	end
	recursive_find(ret,1)
	return ret
end

---Modifies the likelyhood of alternate/original rarities to appear.
---@param rate? number The new rate to set alternate spawn. A value between 0 and 1.
---@return boolean success Returns false if the function fails, true otherwise
function FG.FUNCS.recalculate_alt_rates(rate)
	if not G.GAME then sendErrorMessage("Could not find G.GAME.fg_data","FG/recalculate_alt_rates") return false end
	rate = rate or 0.15
	-- clamp result
	if rate > 1 then rate = 1 elseif rate < 0 then rate = 0 end

	-- Reset tables
	FG.rarities.alternate = {}
	FG.rarities.original = {}
	--sendDebugMessage("Reset tables")

	for _,v in pairs(SMODS.Rarities) do
		-- Populate tables
		if v.fg_data and v.fg_data.is_alternate then
			table.insert(FG.rarities.alternate,v.key)
		else
			table.insert(FG.rarities.original,v.key)
		end
	end

	G.GAME.fg_data.original_rarities_multiply = 1-rate
	G.GAME.fg_data.alternate_rarities_multiply = rate
	
	for _,v in ipairs(FG.rarities.original) do
		G.GAME[v:lower().."_mod"] = G.GAME.fg_data.original_rarities_multiply
	end
	for _,v in ipairs(FG.rarities.alternate) do
		G.GAME[v:lower().."_mod"] = G.GAME.fg_data.alternate_rarities_multiply
	end

	return true
end

function FG.FUNCS.recalculate_pool (pool) return FG.POOLS[pool]._calculate() end

function FG.FUNCS.recalculate_pools () for k,_ in pairs(FG.POOLS) do FG.FUNCS.recalculate_pool(k) end end


-- CALLBACK FUNCTIONS FOR BUTTONS AND SHIT

-- Settings, special edition
G.FUNCS.FG_s_version = function (args)
	FG.config.s_version.selected = args.cycle_config.current_option
	FG.config.s_version.active = args.to_val
end

G.FUNCS.FG_link_website = function(args)
	love.system.openURL(args.config.ref_table)
end

function printt(tbl,max_indent,indent)
	indent = indent or 0
	max_indent = max_indent or 3
	local spaces = string.rep("  ",2*indent)
	for k,v in pairs(tbl) do
		if type(v) ~= "table" then
			print(spaces..k..": "..tostring(v))
		else 
			if indent < max_indent then
				print(spaces..k..": [TABLE]")
				printt(v,max_indent,indent+1)
			else
				return
			end
		end
	end
end


--FG.fuck = math.pi/math.sqrt(-1)