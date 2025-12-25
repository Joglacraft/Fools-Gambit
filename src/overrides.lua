-- Talisman compat
to_big = to_big or function (x) return x end
to_number = to_number or function (x) return x end


-- Main menu override

local main_menu_ref = Game.main_menu

function Game:main_menu(change_context)
	local ret = main_menu_ref(self,change_context)
	local SC_scale = 1.1*(G.debug_splash_size_toggle and 0.8 or 1)
	local CAI = {
        TITLE_TOP_W = G.CARD_W,
        TITLE_TOP_H = G.CARD_H,
    }

    self.fg_title = CardArea(
        20, 20,
        CAI.TITLE_TOP_W,CAI.TITLE_TOP_H,
        {card_limit = 1, type = 'title'})

	if FG.config.additional_title then
		G.fg_title:set_alignment({
			major = G.SPLASH_LOGO,
			type = 'cm',
			bond = 'Strong',
			offset = {x=4,y=3}
		})
	else
		G.fg_title:set_alignment({
			major = G.SPLASH_LOGO,
			type = 'cm',
			bond = 'Strong',
			offset = {x = 50, y = 20}
		})
	end


    local replace_card = Card(self.fg_title.T.x, self.fg_title.T.y, 1.2*G.CARD_W*SC_scale*1.8, 1.2*G.CARD_H*SC_scale*0.5, G.P_CENTERS.j_fg_logo, G.P_CENTERS.j_fg_logo)
    replace_card.no_ui = true
	self.fg_title:emplace(replace_card)
	return ret
end



-- Injects FG alternate flag

local start_run_ref = Game.start_run

function Game:start_run(args,...)
	local ret = start_run_ref(self,args,...)

	-- Initialize FG's default data table
	G.GAME.fg_data = G.GAME.fg_data or {
		original_rarities_multiply = 1,
		alternate_rarities_multiply = 0,
		aberration_rate = 200,
		stuntman_data = {
			hand_var = 0,
			hand_size = 5,
			applied = false
		},
		credit_card_data = {
			active = false,
			trigger_ante = 4,
		},
		chaos_data = {
			max = 0,
			current = 0
		},
		burglar_data = {
			active = false,
		},
		-- For compatibility with other mods
		compat = {
			giga = SMODS and next(SMODS.find_mod('GIGA')) and {
				tacos_hand_mod = 0
			} or nil
		}
	}

	-- Load and reset alt rates
	FG.FUNCS.recalculate_alt_rates(0.15)

	-- Reset pack sizes to default
	for k,v in pairs(G.P_CENTERS) do
		if k == "p_fg_aberration1" then
			v.config.choose = 1
			v.config.extra = 3
		elseif k == "p_fg_aberration2" then
			v.config.choose = 1
			v.config.extra = 3
		elseif k == "p_fg_aberration3" then
			v.config.choose = 1
			v.config.extra = 5
		elseif k == "p_fg_aberration4" then
			v.config.choose = 2
			v.config.extra = 5
		end
	end

	-- [ DEPRECATED ]
	if G.GAME.pool_flags.alternate_spawn and false then
		for k, v in pairs(G.P_CENTERS) do
			if string.find(k, 'j_') and not string.find(k, "_fg_") then
				G.P_CENTERS[k]['no_pool_flag'] = 'alternate_spawn'
			end
		end
	end
	-- [ #end ]
	return ret
end

local ref = Game.update

function Game:update(dt,...)
	local ret = ref(self,dt,...)
	if G.GAME.fg_data then

		--- STUNTMAN DATA

		if G.GAME.fg_data.stuntman_data.activated then
			-- If true, there is a stuntman
			if next(find_joker('j_fg_stuntman')) then
				-- If the card limit is higher than the supposed hand size...
				if G.GAME.fg_data.stuntman_data.activated and G.hand.config.card_limit > G.GAME.fg_data.stuntman_data.hand_size then
					-- ... then add the extra limit to hand_var to be applied when joker is sold
					G.GAME.fg_data.stuntman_data.hand_var = G.GAME.fg_data.stuntman_data.hand_var + (G.hand.config.card_limit-G.GAME.fg_data.stuntman_data.hand_size)
				end
				-- Modify hand size
				if G.GAME.fg_data.stuntman_data.activated and G.hand and G.hand.config.card_limit > G.GAME.fg_data.stuntman_data.hand_size then
					G.hand.config.card_limit = G.GAME.fg_data.stuntman_data.hand_size
				end
				-- Else, there is not a stuntman. Should fix hand size
			else
				if G.hand then G.hand.config.card_limit = G.hand.config.card_limit + G.GAME.fg_data.stuntman_data.hand_var end
			end
		end

		-- Final check. Prevents shit being done in the wrong order.
		if next(find_joker('j_fg_stuntman')) then
			G.GAME.fg_data.stuntman_data.activated = true
		else
			G.GAME.fg_data.stuntman_data.activated = false
		end

		-- Credit card
		G.GAME.fg_data.credit_card_data.active = next(find_joker('j_fg_credit_card')) and true or false
	end
	return ret
end



-- Injects CoP into the shop

--if FG.config.debug_mode then -- slightly less scary !!! still broken!!!! (eats tags) || buggy af, fix the UI please
	function FG.FUNCS.replace_shop_joker(key, index)
		if G.shop_jokers then
			if G.shop_jokers.cards then
				local replacee = G.shop_jokers.cards[index]
				if replacee then
					G.shop_jokers:remove_card(replacee)
					replacee:remove()
				else
					--G.E_MANAGER:add_event(Event({func = function()
					--change_shop_size(1)
					--return true end }))
				end
				local replacement = SMODS.add_card({set = "Joker", area = G.shop_jokers, key = key})
				create_shop_card_ui(replacement, 'joker', G.shop_jokers)
				replacement:start_materialize()
			end
		end
	end

	local shopref = create_card_for_shop
	function create_card_for_shop(area)
		local card = shopref(area)

		if G.shop_jokers and G.shop_jokers.cards and #G.shop_jokers.cards > 0 and G.GAME.round == 3 - G.GAME.skips and false then
            FG.FUNCS.replace_shop_joker("j_fg_change_of_pace", #G.shop_jokers.cards+1)
		end

		return card
	end
--end





---
--- ONLY FOR THE TRAILER
---

if false then
function create_UIBox_main_menu_buttons()
	local text_scale = 0.45

	local t = {
		n=G.UIT.ROOT, config = {align = "cm",colour = G.C.CLEAR}, nodes={ 
		{n=G.UIT.C, config={align = "bm"}, nodes={      
			{n=G.UIT.R, config={align = "cm", padding = 0.2, r = 0.1, emboss = 0.1, colour = G.C.L_BLACK, mid = true}, nodes={
			UIBox_button{id = 'main_menu_play', button = "setup_run", colour = G.C.PURPLE, minw = 3.65, minh = 1.55, label = {FG.test.main_menu_button_text}, scale = text_scale*2, col = true},
		}}}}}}
	return t
end
end

local ref = Card.update

function Card:update(dt)
	local ret = ref(self,dt)
	if self.ability and self.config.center.fg_data and self.config.center.fg_data.is_alternate then
		SMODS.Stickers['fg_alternate_mark']:apply(self,true)
	else
		SMODS.Stickers['fg_alternate_mark']:apply(self,false)
	end
	if G.GAME and G.GAME.fg_data and G.GAME.fg_data.burglar_data.active and G.GAME.round_resets.discards > 0 then
		G.GAME.round_resets.hands = G.GAME.round_resets.hands + G.GAME.round_resets.discards
		G.GAME.round_resets.discards = 0
	end
	return ret
end

local ref = Game.init_game_object

function Game:init_game_object()
	-- Dealing with edge_cases
	local ret = ref(self)
	self.P_CENTERS['m_lucky'].fg_data = {
		is_alternate = false,
		alternate_key ='m_fg_lucky',
		base_enhancement = true,
	}
	FG.FUNCS.recalculate_pools()
	return ret
end

-- Mr bonez
local ref = end_round
function end_round(...)
	local eval
	local skip_og = false -- Skip original function, mainly to remove the game over screen
	for _,v in ipairs(G.jokers.cards) do
		eval = v:calculate_joker({end_of_round = true})
		if eval then
			if eval.fg_game_over == 'mr_bones' then

				if FG.FUNCS.random_chance(v.ability.extra.max_chance) then
					v:start_dissolve()
				end

				skip_og = true
				G.E_MANAGER:add_event(Event({
					func = function()
						if G.FUNCS.draw_from_deck_to_hand(nil) then
							return true
						end
						G.E_MANAGER:add_event(Event({
							func = function()
							G.STATE = G.STATES.SELECTING_HAND
							G.STATE_COMPLETE = false
							G.GAME.blind:drawn_to_hand()
							return true
							end
						}))
						return true
					end
				}))
				break
			end
		end
	end
	local ret = not skip_og and ref(...)
	return ret
end


-- Credit card shenanigans

local ref = G.FUNCS.can_buy

function G.FUNCS.can_buy(e)
	local ret = ref(e)
	if G.GAME.fg_data and G.GAME.fg_data.credit_card_data.active then
        e.config.colour = G.C.ORANGE
        e.config.button = 'buy_from_shop'
	end
	return ret
end

local ref = G.FUNCS.can_buy_and_use

function G.FUNCS.can_buy_and_use(e)
	local ret = ref(e)
	if G.GAME.fg_data and G.GAME.fg_data.credit_card_data.active then
        e.config.colour = G.C.SECONDARY_SET.Voucher
        e.config.button = 'buy_from_shop'
	end
	return ret
end

local ref = G.FUNCS.can_redeem

function G.FUNCS.can_redeem(e)
	local ret = ref(e)
	if G.GAME.fg_data and G.GAME.fg_data.credit_card_data.active then
		e.config.colour = G.C.GREEN
		e.config.button = 'use_card'
	end
	return ret
end

local ref = G.FUNCS.can_open

function G.FUNCS.can_open(e)
	local ret = ref(e)
	if G.GAME.fg_data and G.GAME.fg_data.credit_card_data.active then
		e.config.colour = G.C.GREEN
		e.config.button = 'use_card'
	end
	return ret
end

local ref = G.FUNCS.can_reroll

function G.FUNCS.can_reroll(e)
	local ret = ref(e)
	if G.GAME.fg_data and G.GAME.fg_data.credit_card_data.active then
        e.config.colour = G.C.GREEN
        e.config.button = 'reroll_shop'
	end
	return ret
end

local ref = G.FUNCS.reroll_boss_button

function G.FUNCS.reroll_boss_button(e)
	local ret = ref(e)
	if G.GAME.fg_data and G.GAME.fg_data.credit_card_data.active then
		if (G.GAME.used_vouchers["v_retcon"] or
		(G.GAME.used_vouchers["v_directors_cut"] and not G.GAME.round_resets.boss_rerolled)) then 
			e.config.colour = G.C.RED
			e.config.button = 'reroll_boss'
			e.children[1].children[1].config.shadow = true
			if e.children[2] then e.children[2].children[1].config.shadow = true end 
	  	end
	end
	return ret
end

local ref = end_round

function end_round(...)
	local ret = ref(...)
	if next(SMODS.find_mod('GIGA')) then
		if G.hand then G.hand.config.card_limit = G.hand.config.card_limit - G.GAME.fg_data.compat.giga.tacos_hand_mod end
		G.GAME.fg_data.compat.giga.tacos_hand_mod = 0
	end
	return ret
end


local ref = G.FUNCS.reroll_shop

function G.FUNCS.reroll_shop(...)
	local ret = ref(...)
	G.GAME.fg_data.chaos_data.current = G.GAME.fg_data.chaos_data.current + 1
	return ret
end

local ref = calculate_reroll_cost
function calculate_reroll_cost(skip_increment,...)
	if G.GAME.fg_data.chaos_data.current < G.GAME.fg_data.chaos_data.max then
		skip_increment = true
	else
		G.GAME.fg_data.chaos_data.current = 0
	end
	
	local ret = ref(skip_increment,...)
	return ret
end

local ref = ease_discard
function ease_discard(mod, instant, silent,...)
	local ret
	if G.GAME.fg_data.burglar_data.active then
		ret = ease_hands_played(mod, instant, silent,...)
	else
		ret = ref(mod, instant, silent,...)
	end
	return ret
end