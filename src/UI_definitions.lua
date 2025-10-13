-- Config tab
SMODS.current_mod.config_tab = function()
	return {n = G.UIT.ROOT, config = {
		-- config values here, see 'Building a UI' page
		r = 0.1, minw = 10, minh = 6, align = "tm", padding = 0.2, colour = G.C.BLACK, id = "wrapper"
	}, nodes = {
		-- Disclaimer
		{n = G.UIT.R, config = {align = "tm"}, nodes = {
			{n = G.UIT.R, config = {align = "tm"}, nodes = {
				FG.FUNCS.UIBox_text{
					text = FG.FUNCS.localize{"FG","config","disclaimer"},
					colour = "red",
					scale = 0.4,
					align = "tm",
				}
			}}
		}},
		-- Set 1
		{n = G.UIT.R, nodes = {
			{n = G.UIT.C, nodes = {
				create_toggle{
					label = FG.FUNCS.localize{"FG","config","extra_jokers"},
					ref_table = FG.config,
					ref_value = "extra_jokers"
				},		
			}},
			{n = G.UIT.C, config = {align = "cm"}, nodes = {
				{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","config","misc","?"}, colour = G.C.GREY, scale = .4, tooltip = {text = FG.FUNCS.localize{"FG","config","extra_jokers_tooltip"}}}},
			}},
			{n = G.UIT.C, config = {minw = 0.1}}, -- Separator
			{n = G.UIT.C, nodes = {
				create_toggle{
					label = FG.FUNCS.localize{"FG","config","duplicated_jokers"},
					ref_table = FG.config,
					ref_value = "duplicated_jokers"
				},		
			}},
			{n = G.UIT.C, config = {align = "cm"}, nodes = {
				{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","config","misc","?"}, colour = G.C.GREY, scale = .4, tooltip = {text = FG.FUNCS.localize{"FG","config","duplicated_jokers_tooltip"}}}},
			}},
		}},
		-- Set 2
		{n = G.UIT.R, nodes = {
			{n = G.UIT.C, nodes = {
				create_toggle{
					label = FG.FUNCS.localize{"FG","config","extended_tooltips"},
					ref_table = FG.config,
					ref_value = "extended_tooltips"
				},		
			}},
			{n = G.UIT.C, config = {align = "cm"}, nodes = {
				{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","config","misc","?"}, colour = G.C.GREY, scale = .4, tooltip = {text = FG.FUNCS.localize{"FG","config","extended_tooltips_tooltip"}}}},
			}},
			{n = G.UIT.C, config = {minw = 0.1}}, -- Separator
			{n = G.UIT.C, nodes = {
				create_toggle{
					label = FG.FUNCS.localize{"FG","config","additional_title"},
					ref_table = FG.config,
					ref_value = "additional_title",
					callback = function ()
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
								offset = {x=50,y=20}
							})
						end
					end
				},
			}},
			{n = G.UIT.C, config = {align = "cm"}, nodes = {
				{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","config","misc","?"}, colour = G.C.GREY, scale = .4, tooltip = {text = FG.FUNCS.localize{"FG","config","additional_title_tooltip"}}}},
			}},
		}},
		-- Set 3
		{n = G.UIT.R, config = {align = "cm"}, nodes = {
			{n = G.UIT.R, config = {align = "cm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","config","special_edition"}, colour = G.C.WHITE, scale = .4, minw = 2, minh = 6, padding = 0.4}}}},
			create_option_cycle{
				options = FG.config.s_version.options,
				current_option = FG.config.s_version.selected,
				opt_callback = 'FG_s_version',
				ref_table = FG.config.s_version,
				ref_value = "selected",
				w = 5.5
			},
		}},
		--set 4
		{n = G.UIT.R, config = {align = "cm"}, nodes = {
			{n = G.UIT.R, nodes = {
				create_toggle{
					label = FG.FUNCS.localize{"FG","config","debug_mode"},
					ref_table = FG.config,
					ref_value = "debug_mode"
				},	
			}},
			{n = G.UIT.R, config = {align = "cm"}, nodes = {
				{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","config","misc","require_restart"}, colour = G.C.GREY, scale = .4, minw = 2, minh = 6, padding = 0.4}},
			}},
		}},
	}}
end


FG.UIDEF = {}
FG.UIDEF.credits_page = 1
G.FUNCS.FG_credits = function (e,page,from_callback)
	if not page or type(page) ~= "number" then page = 1 end
	local t = {
			{n = G.UIT.R, config = {align = "tm"}, nodes = {
				-- Main page
				{n = G.UIT.C, config = {align = "tm", padding = 0}, nodes = {
					{n = G.UIT.R, config = {align = "tm", padding = 0}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","lead_developer"}, colour = G.C.GOLD, scale = .5}}}},
					{n = G.UIT.R, config = {align = "tm", padding = 0.15}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","names","jogla"}, colour = G.C.WHITE, scale = .3}}}},
					{n = G.UIT.R, config = {align = "tm"}, nodes = {
						{n = G.UIT.C, config = {minw = 2, align = "tm", padding = 0.1}, nodes = {
							{n = G.UIT.R, config = {align = "tm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","code"}, colour = G.C.GREEN, scale = .5}}}},
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","names","goldenleaf"},
									FG.FUNCS.localize{"FG","credits","names","jogla"},
									FG.FUNCS.localize{"FG","credits","names","jenku"},
									FG.FUNCS.localize{"FG","credits","names","deathmodereal"},
									FG.FUNCS.localize{"FG","credits","names","astrojoot"},
								},
								scale = 0.3,
								align = "tm",
							},
						}},
						{n = G.UIT.C, config = {minw = 2, align = "tm", padding = 0.1}, nodes = {
							{n = G.UIT.R, config = {align = "tm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","art"}, colour = G.C.BLUE, scale = .5}}}},
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","names","goldenleaf"},
									FG.FUNCS.localize{"FG","credits","names","gappie"},
									FG.FUNCS.localize{"FG","credits","names","samuran"},
									FG.FUNCS.localize{"FG","credits","names","hyperx"},
								},
								scale = 0.3,
								align = "tm",
							},
						}},
						{n = G.UIT.C, config = {minw = 2, align = "tm", padding = 0.1}, nodes = {
							{n = G.UIT.R, config = {align = "tm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","music"}, colour = G.C.RED, scale = .5}}}},
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","names","goldenleaf"},
								},
								scale = 0.3,
								align = "tm",
							},
						}},
					}},
					{n = G.UIT.R, config = {align = "tm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","special_thanks"}, colour = G.C.GOLD, scale = .5}}}},
					{n = G.UIT.R, config = {minh = 0.1}},
					{n = G.UIT.R, config = {align = "tm"}, nodes = {
						{n = G.UIT.C, config = {minw = 2, align = "tm", padding = 0}, nodes = {
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","names","localthunk"},
									FG.FUNCS.localize{"FG","credits","names","mathisfun_"},
								},
								scale = 0.3,
								align = "tm",
							},					
						}},
						{n = G.UIT.C, config = {minw = 2, align = "tm", padding = 0}, nodes = {
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","names","rav"},
									FG.FUNCS.localize{"FG","credits","names","lavbulb"},
									--FG.FUNCS.localize{"FG","credits","names","itscoldhere"},
								},
								scale = 0.3,
								align = "tm",
							},	
						}},
					}},
					{n = G.UIT.R, config = {minw = 0, align = "tm", padding = 0}, nodes = {
						-- standalone text
					}},
					{n = G.UIT.R, config = {align = "tm", padding = 0}, nodes = {
						FG.FUNCS.UIBox_text{
							text = {
								FG.FUNCS.localize{"FG","credits","misc","special_thanks_misc"}
							},
							align = "tm",
							mode = "R",
						}
					}},			
				}},
				-- Local 'n such
				{n = G.UIT.C, config = {align = "tm"}, nodes = {
					{n = G.UIT.R, config = {align = "tm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","localization"}, colour = G.C.WHITE, scale = .45}}}},	
					-- Local labels
					{n = G.UIT.R, nodes = {
						{n = G.UIT.C, config = {padding = 0.05}, nodes = {
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","languages","en-us"},
									"",
									FG.FUNCS.localize{"FG","credits","languages","es_ES"},
									FG.FUNCS.localize{"FG","credits","languages","zh-CN"},
									--FG.FUNCS.localize{"FG","credits","languages","sn_bos"},
									FG.FUNCS.localize{"FG","credits","languages","ja"},
								},
								scale = 0.3,
								align = "tl",
								colour = "gold",
							}
						}},
						{n = G.UIT.C, config = {minw = 0.2}},
						{n = G.UIT.C, config = {padding = 0.05}, nodes = {
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","names","goldenleaf"}..", "..FG.FUNCS.localize{"FG","credits","names","jogla"}..", "..FG.FUNCS.localize{"FG","credits","names","jenku"},
									FG.FUNCS.localize{"FG","credits","names","deathmodereal"},
									FG.FUNCS.localize{"FG","credits","names","jogla"},
									FG.FUNCS.localize{"FG","credits","names","goldenleaf"},
									--FG.FUNCS.localize{"FG","credits","names","goldenleaf"}..", "..FG.FUNCS.localize{"FG","credits","names","jogla"},
									FG.FUNCS.localize{"FG","credits","names","mina_kitsune"},
								},
								scale = 0.3,
								align = "cl"
							},
						}},
					}},
					{n = G.UIT.R, config = {align = "cm"}, nodes = {
						FG.FUNCS.UIBox_text{
							text = FG.FUNCS.localize{"FG","credits","languages","disclaimer"},
							align = "cm",
							colour = "grey"
						},
					}},
					-- Links
					{n = G.UIT.R, config = {minh = 0.3}},
					{n = G.UIT.R, config = {align = "tm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","links","title"}, colour = G.C.WHITE, scale = .45}}}},	
					{n = G.UIT.R, config = {minh = 0.15}},
					{n = G.UIT.R, config = {padding = 0.05, align = "cm"}, nodes = {
						UIBox_button{
							label = {FG.FUNCS.localize{"FG","credits","misc","links","github"}},
							minw = 4,
							minh = 0.5,
							scale = 0.35,
							button = "FG_link_website",
							ref_table = "https://github.com/Joglacraft/Fools-Gambit"
						}
					}},
					{n = G.UIT.R, config = {padding = 0.05, align = "cm"}, nodes = {
						{n = G.UIT.C, nodes = {
							UIBox_button{
								label = {FG.FUNCS.localize{"FG","credits","misc","links","discord"}},
								minw = 2,
								minh = 0.5,
								scale = 0.35,
								button = "FG_link_website",
								ref_table = "https://discord.gg/m6Hm6KyQRz"
							}		
						}},
						{n = G.UIT.C, nodes = {
							UIBox_button{
								label = {FG.FUNCS.localize{"FG","credits","misc","links","d_thread"}},
								minw = 2,
								minh = 0.5,
								scale = 0.35,
								button = "FG_link_website",
								ref_table = "https://discord.com/channels/1116389027176787968/1333809003829923900"
							}		
						}},
					}},
					{n = G.UIT.R, config = {padding = 0.05, align = "cm"}, nodes = {
						{n = G.UIT.C, nodes = {
							UIBox_button{
								label = {FG.FUNCS.localize{"FG","credits","misc","links","wiki"}},
								minw = 2,
								minh = 0.5,
								scale = 0.35,
								button = "FG_link_website",
								ref_table = "https://balatromods.miraheze.org/wiki/Fool%27s_Gambit"
							}		
						}},
						{n = G.UIT.C, nodes = {
							UIBox_button{
								label = {FG.FUNCS.localize{"FG","credits","misc","links","wiki_dev"}},
								minw = 2,
								minh = 0.5,
								scale = 0.35,
								button = "FG_link_website",
								ref_table = "https://github.com/jenkuuuuuu/Fools-Gambit/wiki"
							}		
						}},							
					}},
				}}
			}},
			{n = G.UIT.R, nodes = {

			}}
		}
	return t[page]
end



-- Credits
SMODS.current_mod.extra_tabs = function()
	--local _,tot_pages = FG.UIDEF.credits(1)
	--local opts = {}
	--for i=1,tot_pages do table.insert(opts,"") end
	return {
		{
			label = FG.FUNCS.localize{"FG","credits","misc","page_title"},		
			tab_definition_function = function()
				local t = {n = G.UIT.ROOT, config = {r = 0.1, minw = 10, minh = 6, align = "tm", padding = 0.2, colour = G.C.BLACK}, nodes = {
					{n = G.UIT.R, config = {align = "cm"}, nodes = {
						{n = G.UIT.C, config = {align = "cm"}, nodes = {{n = G.UIT.T, config = {text = FG.FUNCS.localize{"FG","credits","misc","title"}, colour = G.C.DARK_EDITION, scale = .7}}}},
						{n = G.UIT.C, config = {minw = .2}},
						{n = G.UIT.C, nodes = {
							FG.FUNCS.UIBox_text{
								text = {
									FG.FUNCS.localize{"FG","credits","misc","version"},
									tostring(FG.config.version)
								},
								scale = 0.3,
								colour = "GREY"
							}
						}},
						--[[{n = G.UIT.C, nodes = {
							create_option_cycle{
								options = {"",""},
								w = 0,
								h = 0.6,
								ref_table = FG.UIDEF,
								no_pips = true,
							}
						}}]]
					}},
					G.FUNCS.FG_credits(nil,1,false),
				}}
				return t
			end,
		},
	}
end
