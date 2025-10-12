
-- Main menu override

--- This shit fucks with the entire game engine

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

function Game:start_run(args)
	local ret = start_run_ref(self,args)

	-- Initialize FG's default data table
	G.GAME.fg_data = {
		original_rarities_multiply = 1,
		alternate_rarities_multiply = 0,
		aberration_rate = 200
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
	if self.ability and self.ability.fg_data and self.ability.fg_data.is_alternate then
		SMODS.Stickers['fg_alternate_mark']:apply(self,true)
	else
		SMODS.Stickers['fg_alternate_mark']:apply(self,false)
	end
	return ret
end

local ref = Game.init_game_object

function Game:init_game_object()
	local ret = ref(self)
	self.P_CENTERS['m_lucky'].config.fg_data = {
		is_alternate = false,
		alternate_card = 'm_fg_lucky'
	}
	return ret
end