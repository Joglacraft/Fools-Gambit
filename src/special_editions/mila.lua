if FG.config.s_version.active == "2025 April Fools" then
init_loc_ref = init_localization

function init_localization()
    localizeref = localize
    if FG.config.s_version.active == "2025 April Fools" then
        function localize(args, misc_cat)
            if args and not (type(args) == "table") then
                if misc_cat and G.localization.misc[misc_cat] then
                    return "mila"
                end
                return "mila"
            end

            local loc_target = nil
            local ret_string = nil
            if args.type == "other" then
                loc_target = G.localization.descriptions.Other[args.key]
            elseif args.type == "descriptions" or args.type == "unlocks" then
                loc_target = G.localization.descriptions[args.set][args.key]
            elseif args.type == "tutorial" then
                loc_target = G.localization.tutorial_parsed[args.key]
            elseif args.type == "quips" then
                loc_target = G.localization.quips_parsed[args.key]
            elseif args.type == "raw_descriptions" then
                loc_target = G.localization.descriptions[args.set][args.key]
                local multi_line = {}
                if loc_target then
                    for _, lines in ipairs(
                        args.type == "unlocks" and loc_target.unlock_parsed or
                            args.type == "name" and loc_target.name_parsed or
                            args.type == "text" and loc_target or
                            loc_target.text_parsed
                    ) do
                        local final_line = "mila"
                        multi_line[#multi_line + 1] = final_line
                    end
                end
                return multi_line
            elseif args.type == "text" then
                loc_target = G.localization.misc.v_text_parsed[args.key]
            elseif args.type == "variable" then
                loc_target = G.localization.misc.v_dictionary_parsed[args.key]
                if not loc_target then
                    return "mila"
                end
                if loc_target.multi_line then
                    local assembled_strings = {}
                    for k, v in ipairs(loc_target) do
                        assembled_strings[k] = "mila"
                    end
                    return assembled_strings or {"mila"}
                else
                    ret_string = "mila"
                end
            elseif args.type == "name_text" then
                if
                    pcall(
                        function()
                            ret_string = "mila"
                        end
                    )
                 then
                else
                    ret_string = "mila"
                end
            elseif args.type == "name" then
                loc_target =
                    G.localization.descriptions[(args.set or args.node.config.center.set)][
                    args.key or args.node.config.center.key
                ]
            end

            if ret_string then
                return "mila"
            end

            if loc_target then
                for _, lines in ipairs(
                    args.type == "unlocks" and loc_target.unlock_parsed or
                        args.type == "name" and loc_target.name_parsed or
                        (args.type == "text" or args.type == "tutorial" or args.type == "quips") and loc_target or
                        loc_target.text_parsed
                ) do
                    local final_line = {}
                    for _, part in ipairs(lines) do
                        local assembled_string = "mila"
                        final_line[#final_line + 1] = {
                            n = G.UIT.T,
                            config = {
                                detailed_tooltip = part.control.T and
                                    (G.P_CENTERS[part.control.T] or G.P_TAGS[part.control.T]) or
                                    nil,
                                text = assembled_string,
                                shadow = args.shadow,
                                colour = part.control.V and args.vars.colours[tonumber(part.control.V)] or
                                    loc_colour(part.control.C or nil, args.default_col),
                                scale = 0.32 * (part.control.s and tonumber(part.control.s) or 1) *
                                    G.LANG.font.DESCSCALE
                            }
                        }
                    end
                    if args.type == "name" or args.type == "text" then
                        return final_line
                    end
                    args.nodes[#args.nodes + 1] = final_line
                end
            end
		end
elseif G.SETTINGS.language ~= "fg_mila" then
function localize(args, misc_cat)
  if args and not (type(args) == 'table') then
    if misc_cat and G.localization.misc[misc_cat] then return G.localization.misc[misc_cat][args] or 'ERROR' end
    return G.localization.misc.dictionary[args] or 'ERROR'
  end

  local loc_target = nil
  local ret_string = nil
  if args.type == 'other' then
    loc_target = G.localization.descriptions.Other[args.key]
  elseif args.type == 'descriptions' or args.type == 'unlocks' then 
    loc_target = G.localization.descriptions[args.set][args.key]
  elseif args.type == 'tutorial' then 
    loc_target = G.localization.tutorial_parsed[args.key]
  elseif args.type == 'quips' then 
    loc_target = G.localization.quips_parsed[args.key]
  elseif args.type == 'raw_descriptions' then 
    loc_target = G.localization.descriptions[args.set][args.key]
    local multi_line = {}
    if loc_target then 
      for _, lines in ipairs(args.type == 'unlocks' and loc_target.unlock_parsed or args.type == 'name' and loc_target.name_parsed or args.type == 'text' and loc_target or loc_target.text_parsed) do
        local final_line = ''
        for _, part in ipairs(lines) do
          local assembled_string = ''
          for _, subpart in ipairs(part.strings) do
            assembled_string = assembled_string..(type(subpart) == 'string' and subpart or args.vars[tonumber(subpart[1])] or 'ERROR')
          end
          final_line = final_line..assembled_string
        end
        multi_line[#multi_line+1] = final_line
      end
    end
    return multi_line
  elseif args.type == 'text' then
    loc_target = G.localization.misc.v_text_parsed[args.key]
  elseif args.type == 'variable' then 
    loc_target = G.localization.misc.v_dictionary_parsed[args.key]
    if not loc_target then return 'ERROR' end 
    if loc_target.multi_line then
      local assembled_strings = {}
      for k, v in ipairs(loc_target) do
        local assembled_string = ''
        for _, subpart in ipairs(v[1].strings) do
          assembled_string = assembled_string..(type(subpart) == 'string' and subpart or args.vars[tonumber(subpart[1])])
        end
        assembled_strings[k] = assembled_string
      end
      return assembled_strings or {'ERROR'}
    else
      local assembled_string = ''
      for _, subpart in ipairs(loc_target[1].strings) do
        assembled_string = assembled_string..(type(subpart) == 'string' and subpart or args.vars[tonumber(subpart[1])])
      end
      ret_string = assembled_string or 'ERROR'
    end
  elseif args.type == 'name_text' then
    if pcall(function() ret_string = G.localization.descriptions[(args.set or args.node.config.center.set)][args.key or args.node.config.center.key].name end) then
    else ret_string = "ERROR" end
  elseif args.type == 'name' then
    loc_target = G.localization.descriptions[(args.set or args.node.config.center.set)][args.key or args.node.config.center.key]
  end

  if ret_string then return ret_string end

  if loc_target then 
    for _, lines in ipairs(args.type == 'unlocks' and loc_target.unlock_parsed or args.type == 'name' and loc_target.name_parsed or (args.type == 'text' or args.type == 'tutorial' or args.type == 'quips') and loc_target or loc_target.text_parsed) do
      local final_line = {}
      for _, part in ipairs(lines) do
        local assembled_string = ''
        for _, subpart in ipairs(part.strings) do
          assembled_string = assembled_string..(type(subpart) == 'string' and subpart or args.vars[tonumber(subpart[1])] or 'ERROR')
        end
        local desc_scale = G.LANG.font.DESCSCALE
        if G.F_MOBILE_UI then desc_scale = desc_scale*1.5 end
        if args.type == 'name' then
          final_line[#final_line+1] = {n=G.UIT.O, config={
            object = DynaText({string = {assembled_string},
              colours = {(part.control.V and args.vars.colours[tonumber(part.control.V)]) or (part.control.C and loc_colour(part.control.C)) or G.C.UI.TEXT_LIGHT},
              bump = true,
              silent = true,
              pop_in = 0,
              pop_in_rate = 4,
              maxw = 5,
              shadow = true,
              y_offset = -0.6,
              spacing = math.max(0, 0.32*(17 - #assembled_string)),
              scale =  (0.55 - 0.004*#assembled_string)*(part.control.s and tonumber(part.control.s) or 1)
            })
          }}
        elseif part.control.E then
          local _float, _silent, _pop_in, _bump, _spacing = nil, true, nil, nil, nil
          if part.control.E == '1' then
            _float = true; _silent = true; _pop_in = 0
          elseif part.control.E == '2' then
            _bump = true; _spacing = 1
          end
          final_line[#final_line+1] = {n=G.UIT.O, config={
            object = DynaText({string = {assembled_string}, colours = {part.control.V and args.vars.colours[tonumber(part.control.V)] or loc_colour(part.control.C or nil)},
            float = _float,
            silent = _silent,
            pop_in = _pop_in,
            bump = _bump,
            spacing = _spacing,
            scale = 0.32*(part.control.s and tonumber(part.control.s) or 1)*desc_scale})
          }}
        elseif part.control.X then
          final_line[#final_line+1] = {n=G.UIT.C, config={align = "m", colour = loc_colour(part.control.X), r = 0.05, padding = 0.03, res = 0.15}, nodes={
              {n=G.UIT.T, config={
                text = assembled_string,
                colour = loc_colour(part.control.C or nil),
                scale = 0.32*(part.control.s and tonumber(part.control.s) or 1)*desc_scale}},
          }}
        else
          final_line[#final_line+1] = {n=G.UIT.T, config={
          detailed_tooltip = part.control.T and (G.P_CENTERS[part.control.T] or G.P_TAGS[part.control.T]) or nil,
          text = assembled_string,
          shadow = args.shadow,
          colour = part.control.V and args.vars.colours[tonumber(part.control.V)] or loc_colour(part.control.C or nil, args.default_col),
          scale = 0.32*(part.control.s and tonumber(part.control.s) or 1)*desc_scale},}
        end
      end
        if args.type == 'name' or args.type == 'text' then return final_line end
        args.nodes[#args.nodes+1] = final_line
    end
  end
end
end
init_loc_ref(self)
end


end