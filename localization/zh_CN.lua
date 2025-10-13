return {
    descriptions = {
        aberration={
            c_fg_tonal = {
                name = "音律",
                text = {
                    "转化{C:attention}三个{}靠左的小丑", -- should be 3, change this to 3 leftmost later
                    "至它们的{C:red}本初{}形态",
                    "{C:inactive}贴图非完成品{}"
                }
            },
            c_fg_atonal = {
                name = "走调",
                text = {
                    "转化{C:attention}三个{}靠左的小丑", -- should be 3, change this to 3 leftmost later
                    "至它们的{C:purple}迭代{}形态",
                    "{C:inactive}贴图非完成品{}"
                }
            },
            c_fg_accelerando = {
                name = "提速",
                text = {
                    "将{C:attention}三个{}被选择的卡牌",
                    "的版本、蜡封和增强效果",
                    "转化它们的{C:purple}迭代{}形态",
                    "{C:inactive}贴图非完成品{}"
                }
            },
            c_fg_treble = {
                name = "高音",
                text = {
                    "将所有的普通小丑",
                    "转化成它们的{C:purple}迭代{}形态"
                }
            },
            c_fg_bass = {
                name = "低音",
                text = {
                    "将所有的罕见小丑",
                    "转化成它们的{C:purple}迭代{}形态"
                }
            },
            c_fg_alto = {
                name = "中音",
                text = {
                    "将所有的稀有小丑",
                    "转化成它们的{C:purple}迭代{}形态"
                }
            },
            c_fg_stake = {
                name = "五线谱",
                text = {
                    "生成最多{C:attention}#1#个",
                    "随机{C:purple}转变牌{}",
                    "{C:inactive}(必须留有余地)",
                }
            },
            c_fg_fil_di_voce = {
                name = "静音",
                text = {
                    "根据{C:purple}迭代{}小丑的数量，",
                    "每个{C:purple}迭代{}小丑给予{C:money}$#1#{}块钱",
                }
            }
        },
        Back={},
        Blind={},
        Edition={},
        Enhanced={
            m_fg_glass = {
                name = "玻璃？牌",
                text = {
                    "在手牌中，随着每张被打出的{C:attention}玻璃？牌{}，",
                    "增加{C:white,X:red}X1{}倍率",
                    "计分后摧毁此卡牌",
                    "无点数无花色",
                }
            },
            m_fg_steel = {
                name = "钢铁？牌",
                text = {
                    "随着每张{C:attention}牌组{}内的{C:attention}钢铁？牌{}",
                    "增加{C:white,X:red}X#1#{}倍率",
                    "当手中持有该牌时，",
                    "触发效果",
                    "{C:inactive}(当前倍率{C:white,X:red}X#2#{C:inactive})"
                }
            },
            m_fg_lucky = {
                name = "幸运？牌",
                text = {
                    "{C:green}#1#/#2#{}的几率",
                    "{C:chips}+#3#{}筹码",
                    "{C:green}#4#/#5#{}的几率",
                    "获得{C:gold}$#6#"
                }
            },
            m_fg_gold = {
                name = "黄金？牌",
                text = {
                    "如果这张卡牌在回合结束时还在手中",
                    "获得{C:attention}手中牌数{}数目的{C:attention}一半{}作为金钱，",
                    "{C:inactive}（四舍五入）{}",
                    "{C:inactive}（当前获得{C:gold}$#1#{C:inactive}）"
                },
            },
            m_fg_bonus = {
                name = "奖励？牌",
                text = {
                    "{C:green}#1#/#2#{}的几率",
                    "{C:chips}+#3#{}筹码",
                    "{C:green}#4#/#5#{}的几率",
                    "{C:chips}#6#{}筹码",
                }
            },
            m_fg_mult = {
                name = "倍率？牌",
                text = {
                    "{C:green}#1#/#2#{}的几率",
                    "{C:mult}+#3#{}倍率",
                    "{C:green}#4#/#5#{}的几率",
                    "{C:mult}#6#{}倍率",
                }
            },
            m_fg_stone = {
                name = "石头？牌",
                text = {
                    "当出牌后手中还持有此牌时，",
                    "摧毁此牌卡并且增强周围",
                    "未被增强的卡牌至有多{C:chips}15{}筹码的{C:attention}石头？牌{}",
                    "{C:inactive}（当前{C:chips}+#2#{C:inactive}额外筹码）"
                }
            },
            m_fg_wild = {
                name = "万能？牌",
                text = {
                    "当卡牌被打出时，",
                    "在下列效果中随机挑选一个：",
                    "{C:chips}+#1#{}筹码,、{C:mult}+#2#{}倍率、",
                    "{C:white,X:mult}X#3#{}倍率或获得{C:gold}$#4#{}"
                }
            }
        },
        Joker={
            -- Mod jokers
            j_fg_change_of_pace = {
                name = 'Change of Pace',
                text = {
                    "After being sold, changes spawned {C:red}jokers{}",
                    "to their {C:purple}Alternate{} forms."
                }
            },
            j_fg_change_of_pace_alt = {
                name = 'Change of Pace?',
                text = {
                     "After being sold, changes spawned {C:purple}jokers{}",
                    "to their {C:red}Original{} forms."
                }
            },
            j_fg_flipped_script = {
                name = 'Flipped Script',
                text = {
                    "When sold, changes all {C:purple}Alternate{}",
                    "{C:attention}Jokers{} to their {C:red}Original{}"
                }
            },
            j_fg_flipped_script_alt = {
                name = 'Flipped Script',
                text = {
                    "When sold, changes all {C:red}Original{}",
                    "{C:attention}Jokers{} to their {C:purple}Alternate{}"
                }
            },
            j_fg_script_flipped = {
                name = 'Script Flipped',
                text = {
                    "When sold, changes the edition of",
                    "all other jokers to the opposite edition."
                }
            },
			j_fg_delinquent = {
			    name = 'Delinquent',
			    text = {
                    "{C:attention}Replaces{} consumeable cards",
                    "with {C:purple}Aberration{} cards",
                    "when a blind is skipped",
                },
            },
            j_fg_delinquentalt = {
			    name = 'Delinquent?',
			    text = {
                    "{C:attention}Replenishes{} empty consumeable",
                    "card slots with {C:purple}Aberration{} cards",
                    "when a blind is beaten",
                },
            },						
            j_fg_concert = {
                name = 'Concert Ticket',
                text = {
                     "Every {C:money}$#1#{} spent {C:inactive}(#2#){} creates",
                     "an {C:purple}aberration{} card",
					 "{C:inactive}(Must have room)",
                }
            },
			 j_fg_concertalt = {
                name = 'Concert Ticket?',
                text = {
                     "Creates an {C:purple}aberration{} card",
                     "when redeeming a {C:attention}Voucher{}",
					 "{C:inactive}(Must have room)",
                }
            },
			j_fg_disc={
                name="Disc Joker",
                text={
                    "{C:red}Original{C:attention} Jokers",
                    "each give {C:chips}+#1#{} Chips",
					 "{s:0.8}Disc Joker included",
                },
            },
			j_fg_orchestral={
                name="Orchestral Joker",
                text={
                    "{C:purple}Alternate{C:attention} Jokers",
                    "each give {C:mult}+#1#{} Mult",
					 "{s:0.8}Orchestral Joker included",
                },
            },
			j_fg_conductor={
                name="Conductor",
                text={
                    "Creates #1# {C:purple}aberration{} card if",
                    "played poker hand contains only",
                    "{C:attention}Face{} cards",
                    "{C:inactive}(Must have room)",
                },
            },
			j_fg_conductoralt={
                name="Conductor?",
                text={
                    "Creates #1# {C:attention}Face{} cards",
                    "every {C:purple}aberration{} card used",
                },
            },
            j_fg_oscillator = {
                name = "Oscillator",
                text = {
                    "Gains {C:chips}+#2#{} Chips when blind {C:attention}selected{}",
                    "{C:chips}-#3#{} Chips when blind {C:attention}defeated{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips, can't be negative)",
                    "{C:inactive}(Value is kept when {C:purple}alternating{C:inactive} this card)"
                }
            },
            j_fg_oscillator_alt = {
                name = "Oscillator?",
                text = {
                    "Gains {C:chips}+#3#{} Chips when blind {C:attention}defeated{}",
                    "{C:chips}-#2#{} Chips when blind {C:attention}selected{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips, can't be negative)",
                    "{C:inactive}(Value is kept when {C:red}alternating{C:inactive} this card)"
                }
            },
            j_fg_mango={
			    name="Mango",
				text={
				    "Gives {C:mult}+#1#{} Mult,",
					"{C:mult}-#2#{} Mult every",
					"{C:purple}Aberration{} card used",
				},
			},
			j_fg_mangoalt={
			    name="Mango?",
				text={
				    "Gives {C:mult}+#1#{} Mult,",
					"{C:mult}-#2#{} Mult every",
					"{C:purple}Alternate{} joker bought",
				},
			},
            -- Normal jokers
            j_fg_joker = {
                name = '小丑？',
                text = {
                    "打出的牌",
                    "在计分时给予{C:mult}+#1#{}倍率"
                }
            },
            j_fg_greedy = {
                name = '贪婪小丑？',
                text = {
                    "打出的{C:diamonds}方片{}花色牌",
                    "暂时为这张小丑的倍率{C:mult}+#1#{}，",
                    "在打败{C:attention}头目盲注{}时重置",
                    "{C:inactive}（当前{C:mult}+#2#{C:inactive}倍率",
                }
            },
            j_fg_lusty = {
                name = '色欲小丑？',
                text = {
                    "打出的{C:hearts}红桃{}花色牌",
                    "暂时为这张小丑的倍率{C:mult}+#1#{}，",
                    "在打败{C:attention}头目盲注{}时重置",
                    "{C:inactive}（当前{C:mult}+#2#{C:inactive}倍率",
                }
            },
            j_fg_wrathful = {
                name = '愤怒小丑？',
                text = {
                    "打出的{C:spades}黑桃{}花色牌",
                    "暂时为这张小丑的倍率{C:mult}+#1#{}，",
                    "在打败{C:attention}头目盲注{}时重置",
                    "{C:inactive}（当前{C:mult}+#2#{C:inactive}倍率",
                }
            },
            j_fg_gluttenous = {
                name = '暴食小丑？',
                text = {
                    "打出的{C:clubs}梅花{}花色牌",
                    "暂时为这张小丑的倍率{C:mult}+#1#{}，",
                    "在打败{C:attention}头目盲注{}时重置",
                    "{C:inactive}（当前{C:mult}+#2#{C:inactive}倍率",
                }
            },
            j_fg_jolly = {
                name = '开心小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:red}+#1#{}倍率并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_zany = {
                name = '古怪小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:red}+#1#{}倍率并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_mad = {
                name = '疯狂小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:red}+#1#{}倍率并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_crazy = {
                name = '狂野小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:red}+#1#{}倍率并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_droll = {
                name = '滑稽小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:red}+#1#{}倍率并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_sly = {
                name = '奸诈小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:chips}+#1#{}筹码并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_wily = {
                name = '狡猾小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:chips}+#1#{}筹码并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_clever = {
                name = '聪敏小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:chips}+#1#{}筹码并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_devious = {
                name = '阴险小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:chips}+#1#{}筹码并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_crafty = {
                name = '精明小丑？',
                text = {
                    "如果打出的牌中",
                    "包含{C:attention}#2#",
                    "{C:chips}+#1#{}筹码并且",
                    "额外触发其中的{C:attention}#2##3#{}次",
               }
            },
            j_fg_dagger = {
                name = '仪式匕首？',
                text = {
                    "在选择{C:attention}盲注{}时",
                    "摧毁左侧的小丑牌",
                    "并将其售价的{C:attention}X#2#{}倍",
                    "永久添加至这张牌的{C:chips}筹码",
                    "{C:inactive}（当前为{C:chips}+#1#{C:inactive}筹码）",
                }
            },
            j_fg_banner = {
                name = '旗帜？',
                text = {
                    "{C:red}+#2#{}弃牌次数，",
                    "每一个剩余的",
                    "{C:attention}弃牌次数",
                    "{C:chips}+#1#{}筹码",
                }
            },
            j_fg_mystic_summit = {
                name = '神秘之峰？',
                text = {
                    "{C:red}-#2#{} discards",
                    "{C:mult}+#1#{} Mult when",
                    "{C:attention}#3#{} discards",
                    "remaining",
                }
            },
            j_fg_loyalty_card = {
                name = 'Loyalty Card?',
                text = {
                     "Every {C:attention}#1#{} items",
                     "purchased from the {C:attention}shop{} makes",
                     "the next one {C:money}free{}",
                     "{C:inactive}#2#",
                }
            },
            j_fg_8_ball = {
                name = '8 Ball?',
                text = {
                        "Each scored {C:attention}8{} creates a",
                        "{C:tarot}Tarot{} card when scored",
                        "{C:inactive}(Must have room)",
                },
            },
            j_fg_misprint = {
                name = 'Misprint?',
                text = {
                    ""
                }
            },
            j_fg_fist = {
                name = 'Raised Fist?',
                text = {
                    "Adds {C:attention}#1#{} the rank",
                    "of {C:attention}highest{} ranked card",
                    "held in hand to Mult",
                }
            },
            j_fg_fibonacci = {
                name = 'Fibonacci?',
                text = {
                    "Retrigger each scored {C:attention}Ace{}, {C:attention}2{}, {C:attention}3{}, {C:attention}5{},",
                    "{C:attention}8{} and {C:attention}King{} {C:attention}1{} time and permanently",
                    "upgrades it to next rank when scored",
                    "{C:inactive}(ex: Ace to 2, 8 to King, King to Ace){}",
                },
            },
            j_fg_scary_face = {
                name = 'Scary Face?',
                text = {
                    'Gains {C:chips}+#2#{} chips for each',
                    'scored {C:attention}face{} card',
                    '{C:inactive}(Currently {C:chips}+#1#{C:inactive} chips){}'
                },
            },
            j_fg_gros_michel = {
                name = "Gros Michel?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult",
                    "{C:green}#2# in #3#{} chance this",
                    "card gets destroyed",
                    "at end of round"
                }
            },
            j_fg_even_steven = {
                name = "Even Steven?",
                text = {
                    "Gains {C:mult}+#1#{} Mult for each",
                    "{C:attention}even triggered{} card",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                    "{C:inactive}(10, 8, 6, 4, 2){}"
                }
            },
            j_fg_odd_todd = {
                name = "Odd Todd?",
                text = {
                    "Gains {C:chips}+#1#{} Chips for each",
                    "{C:attention}odd triggered{} card",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips)",
                    "{C:inactive}(A, 9, 7, 5, 3)"
                }
            },
            j_fg_scholar = {
                name = "Scholar?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult if scoring hand",
                    "contains at least {C:attention}#2#{} #3#s"
                }
            },
            j_fg_business = {
                name = "Business Card?",
                text = {
                    "{C:green}#1# in #2#{} chance to enhance",
                    "scored {C:attention}face{} cards",
                    "{C:inactive}(Applies effect after scoring){}"
                }
            },
            j_fg_supernova = {

            },
            j_fg_ride_the_bus = {
                name = "Ride the Bus?",
                text = {
                    "{C:mult}+#2#{} Mult",
                    "{C:mult}-#1#{} Mult for every",
                    "played {C:attention}face{} card"
                }
            },
            j_fg_abstract = {
                name = 'Abstract Joker?',
                text = {
                    "{C:mult}+#1#{} Mult for",
                    "each {C:attention}Joker{} card Sold",
                    "{C:inactive}(Currently {C:red}+#2#{C:inactive} Mult)",
                },
            },
            j_fg_egg = {
                name = 'Egg?',
                text = {
                    "Has {C:money}$#1#{} sell value.",
                    "when sold lose",
                    "{C:mult}#2#{} hand and {C:mult}#3#{} discard"
                },
            },
            j_fg_ice_cream = {
                name = "Ice cream?",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:chips}-#2#{} Chips when",
                    "blind {C:attention}selected{}"
                }
            },
            j_fg_faceless = {
                name = "Faceless Joker?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult if played hand",
                    "contains no {C:attention}face{} cards"
                }
            },
            j_fg_splash = {
                name = "Splash?",
                text = {
                    "undebuffs {C:attention}scored cards{}",
                }
            },
            j_fg_cavendish = {
                name = "Cavendish?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult",
                    "{C:green}#3# in #4#{} chance of losing",
                    "{C:white,X:mult}X#2#{} Mult at end of round.",
                    "Self-destruct on {C:white,X:mult}X1{} Mult"
                }
            },
            j_fg_card_sharp = {
                name = "Card Sharp?",
                text = {
                    ""
                }
            },
            j_fg_red_card = {
                name = "Red Card?",
                text = {
                    "Gains {C:mult}+#2#{} Mult when",
                    "skipping a blind is {C:attention}skipped{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                }
            },
            j_fg_baron = {
                name = "Baron?",
                text = {
                    "Gains {C:white,X:mult}X#2#{} Mult for",
                    "each {C:attention}King{} held in hand",
                    "at {C:attention}end of round",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{}{C:inactive} Mult)"
                }
            },
            j_fg_cloud_9 = {
                name = "Cloud 9?",
                text = {
                    "Earn {C:gold}$#1#{} for each",
                    "scored {C:attention}9{}"
                }
            },
            j_fg_rocket = {
                name = "Rocket?",
                text = {
                    "Earn {C:gold}$#1#{} at {C:attention}end of round{}",
                    "Decrease payout by {C:gold}$#2#{}",
                    "when {C:attention}skipping blind{}"
                }
            },
            j_fg_erosion = {
                name = "Erosion?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult if {C:attention}full deck{}",
                    "consists of less",
                    "than {C:attention}#2#{} cards"
                }
            },
            j_fg_duo = {
                name = 'The Duo?',
                text = {
                    "Gains {X:mult,C:white}X#1#{} Mult if played",
                    "hand contains",
                    "a {C:attention}#2#",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
               }
            },
            j_fg_trio = {
                name = 'The Trio?',
                text = {
                    "Gains {X:mult,C:white}X#1#{} Mult if played",
                    "hand contains",
                    "a {C:attention}#2#",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
               }
            },
            j_fg_family = {
                name = 'The Family?',
                text = {
                    "Gains {X:mult,C:white}X#1#{} Mult if played",
                    "hand contains",
                    "a {C:attention}#2#",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
               }
            },
            j_fg_order = {
                name = 'The Order?',
                text = {
                    "Gains {X:mult,C:white}X#1#{} Mult if played",
                    "hand contains",
                    "a {C:attention}#2#",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
               }
            },
            j_fg_popcorn = {
                name = "Popcorn?",
                text = {
                    "{C:mult}+#1#{} Mult",
                    "{C:mult}-#2#{} per",
                    "hand played"
                }
            },
            j_fg_ramen = {
                name = "Ramen?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult",
                    "Loses {C:white,X:mult}X#2#{} Mult for",
                    "for card {C:attention}played{}",
                    "{C:inactive}(Include non-scoring){}"
                }
            },
            j_fg_walkie_talkie = {
                name = "Walkie Talkie?",
                text = {
                    "Gains {C:chips}+#3#{} Chips and {C:mult}+#4#{} Mult for",
                    "each {C:attention}scored {C:attention}10{} or {C:attention}4{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips and {C:mult}+#2#{C:inactive} Mult)"
                }
            },
            j_fg_selzer = {
                name = "Seltzer",
                text = {
                    "Retrigger all played",
                    "cards {C:attention}#1#{} time(s) for the",
                    "next {C:attention}#2#{} hands(s)"
                }
            },
            j_fg_castle = {
                name = "Castle",
                text = {

                }
            },
            j_fg_smiley = {
                name = "Smiley face?",
                text = {
                    "Gains {C:mult}+#2#{} Mult for",
                    "each scored {C:attention}face{} card",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                }
            },
            j_fg_trouses = {},
            j_fg_ancient = {
                name = "Ancient Joker",
                text = {
                    "Gains {C:white,X:mult}X#2#{} Mult when",
                    "all playing cards are {V:#1#}#3#{}",
                    "Suit changes every round",
                    "{C:inactive}(Currently{C:white,X:mult}#1#{C:inactive} Mult)",
                    "{C:inactive}(Can't go below X0.75 Mult)"
                }
            },
            j_fg_campfire = {
                name = "Campfire?",
                text = {
                    "Gains {C:white,X:mult}X#2#{} Mult for each card {C:attention}discarded{}",
                    "Losses {C:white,X:mult}X#3#{} Mult when {C:attention}boss blind{} defeated",
                    "{C:inactive}(Currently {C:white,X:mult}X#1#{C:inactive} Mult, can't go below {C:white,X:mult}X0.75{C:inactive} Mult)"
                }
            },
            j_fg_throwback = {
                name = "Throwback?",
                text = {
                    "{C:white,X:mult}X#2#{} Mult for each",
                    "{C:attention}shop{} skipped this run",
                    "{C:inactive}(Currently {C:white,X:mult}X#1#{C:inactive} Mult){}"
                }
            },
            j_fg_hanging_chad = {
                name = "Hanging Chad?",
                text = {
                    "{C:green}#1# in #2#{} chance to add a random",
                    "{C:attention}enhancement{} to scored cards",
                    "If already enhanced, {C:green}#3# in #4#{}",
                    "chance to add a random {C:attention}seal{}",
                    "If already have a seal, {C:green}#5# in #6#{}",
                    "chance add a random {C:attention}edition{}",
                    "{C:inactive,s:0.8}(Effect applies after scoring){}"
                },
			},
			j_fg_gem={
                name="Rough Gem?",
                text={
                    "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:diamonds}Diamond{} suit, earn",
                    "{C:money}$#2#{} when scored",
                },
			},
			j_fg_stone={
                name="Stone Joker?",
                text={
                    "Scored {C:attention}Stone? Cards{}' Chip value",
                    "{C:attention}Double{}"
                },
			},
			j_fg_bloodstone={
                name="Bloodstone?",
                text={
                   "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:hearts}Heart{} suit, gain",
                    "{X:mult,C:white}X#2#{} Mult when scored",
					"{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                },
			},
			j_fg_arrowhead={
                name="Arrowhead?",
                text={
                   "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:spades}Spade{} suit, gain",
                    "{C:chips}+#2#{} Chips when scored",
					"{C:inactive}(Currently {C:chips}+#3#{}{C:inactive} Chips)",
                },
			},
			j_fg_agate={
                name="Onyx Agate?",
                text={
                   "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:clubs}Club{} suit, gain",
                    "{C:mult}+#2#{} Mult when scored",
					"{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)",
                },
			},
            j_fg_hit_the_road = {
                name = "Hit the Road?",
                text = {
                    "Gains {C:white,X:mult}X#2#{} Mult",
                    "for every {C:attention}Jack{} discarded",
                    "{C:inactive}(Currently {C:white,X:mult}X#1#{C:inactive} Mult)"
                }
            },
            j_fg_invisible = {
                name = "隐形小丑？",
                text = {
                    "被售卖时，摧毁一个随机{C:attention}小丑",
                    "制造一个带有被摧毁的小丑的",
                    "{C:attention}隐形回忆？{}",
                    "{C:inactive}（无法复制永恒卡牌）{}",
                }
            },
            j_fg_invisible_memory = {
                name = "{C:dark_edition,E:1}隐形回忆？{}",
                text = {
                    "一个{C:attention}隐形小丑？{}的回忆",
                    "在{C:attention}#1#{}个回合后，{C:red,E:2}自我摧毁{}并",
                    "生成{C:attention}#2#{}个{C:dark_edition}负片{}{C:attention}#3#{}",
                }
            },
            j_fg_drivers_license = {
                name = "Driver's license?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult if at least",
                    "{C:attention}half{C:inactive} ({C:attention}#2#{C:inactive}/#3#){} if your {C:attention}full deck{}",
                    "contains {C:attention}enhanced{} cards",
                }
            },
            j_fg_bootstraps = {
                name = "Bootstraps?",
                text = {
                    "Gains {C:mult}+#2#{} Mult, {C:red}-$#3#{}",
                    "at {C:attention}end of round{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                }
            },
            j_fg_oops = {
                name = "六六大顺？",
                text = {
                    "当一个以{C:attention,E:1}数字标注{}出的{C:green,E:1}几率发生时，",
                    "将所有以{C:attention,E:1}数字标注{}出的{C:green,E:1}几率{}",
                    "{X:green,C:white,E:1}X#4#{}{C:green,E:1}分子并{X:green,C:white,E:1}X#3#{}{C:green,E:1}分母",
                    "{C:inactive}（当前{C:green,E:1}X#2#/#1#{C:inactive}概率)"
                }
            },
            -- Legendaries
            j_fg_caino = {
                name = "Canio?",
                text = {
                    "Gains {X:mult,C:white}X#2#{} Mult for",
                    "each {C:attention}discarded{} face card",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                }
            },
            j_fg_triboulet = {
                name = "Triboulet?",
                text = {
                    "Gains {X:mult,C:white}X#2#{} Mult for",
                    "each {C:attention}scored{} face card",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                }
            },
            j_fg_yorick = {
                name = "Yorick?",
                text = {
                    "Gains {X:mult,C:white}X#2#{} Mult every",
                    "{C:attention}#3# {C:inactive}(#4#){} hands played",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)"
                }
            },
            j_fg_chicot = {
                name = "Chicot?",
                text = {
                    "{C:red}+#2#{} discard when",
                    "{C:attention}boss blind{} defeated",
                    "{C:inactive}(Currently {C:red}+#1#{C:inactive} discards)"
                }
            },
            j_fg_perkeo = {
                name = "Perkeo?",
                text = {
                    "Creates {C:attention}#1#{C:inactive} perishable {C:dark_edition}negative{}",
                    "copy of a non-{C:dark_edition}negative{C:attention} joker{}",
                    "when {C:attention}boss blind{} defeated"
                }
            },
            -- Collectives
            j_fg_deathmodereal = {
                name = '真死模式',
                text = {
                    "他很{X:black,C:white}酷（吧）{}",
                    '{X:mult,C:white}X#1#{}倍率'
                },
            },
            j_fg_deathmoderealalt = {
                name = '真死模式',
                text = {
                    "他很{X:white,C:black}酷{}",
                    '每张被打出的牌都',
                    '{X:mult,C:white}X#1#{}倍率'
               }
            },
            j_fg_jogla = {
                name = '乔戈拉',
                text = {
                    "在结束商店后，生成{C:attention}#1#{}个{C:dark_edition}负片{}",
                    "{C:attention}最靠左{}的消耗牌",
                    "{C:inactive}（当前正在针对{C:attention}#2#{C:inactive}）",
                    "{C:inactive,s:0.7}\"我不是巫师啊(´；ω；‘)\""
                },
            },
            j_fg_jogla_alt = {
                name = "乔迭拉",
                text = {
                    "在打败头目盲注时，增加{C:attention}#1#{}个",
                    "手牌槽位",
                    "{C:inactive}（当前增加{C:attention}+#2#{C:inactive}个槽位）"
                }
            },
            j_fg_jenker = {
                name = '盏枯',
                text = {
                    "每打败两个{C:attention}头目盲注{}，",
                    "就多触发所有{C:attention}小丑牌{}1遍",
                    "从{C:mult}一{}开始",
					"{C:inactive}（当前触发{C:mult}#1#{}{C:inactive}遍）",
                    "{C:inactive,s:0.7}“我估摸是制造最多卡死的（ﾉ´д｀）”"
                }
            },
            j_fg_goldenleaf = {
                name = "金叶",
                text = {
                    "当一个{C:gold}黄金{}{C:inactive}（？）{} 牌",
                    "被打出时，",
                    "{X:mult,C:white}X#1#{}倍率",
                    "{C:inactive}“因为我是“金”叶啊( • ω • )”"
                }
            },
            j_fg_goldenleafalt = {
                name = "银秋",
                text = {
                    "当打败{C:attention}头目盲注{}时，",
                    "永久增加{C:blue}#1#{}个",
                    "出牌次数",
                    "{C:inactive}（当前{C:blue}+#2#{C:inactive}出牌次数）"
                }
            }
        },
        Other={
            fg_unchangeable = {
                name = "非变",
                label = "非变",
                text = {
                    "无法被迭代转化"
                }
            },
            p_fg_aberration1 = {
                name = '调律包',
                text = {
                    "从最多{C:attention}#1#{}张{C:purple}转变牌{}中",
                    "选择{C:attention}#2#{}张",
                    "即选即用"
                }
            },
            p_fg_aberration2 = {
                name = '调律包',
                text = {
                    "从最多{C:attention}#1#{}张{C:purple}转变牌{}中",
                    "选择{C:attention}#2#{}张",
                    "即选即用"
                }
            },
            p_fg_aberration3 = {
                name = '巨型调律包',
                text = {
                    "从最多{C:attention}#1#{}张{C:purple}转变牌{}中",
                    "选择{C:attention}#2#{}张",
                    "即选即用"
                }
            },
            p_fg_aberration4 = {
                name = '超级调律包',
                text = {
                    "从最多{C:attention}#1#{}张{C:purple}转变牌{}中",
                    "选择{C:attention}#2#{}张",
                    "即选即用"
                }
            }
        },
        Planet={},
        Spectral={
            c_fg_soul = {
                name = "灵魂？",
                text = {
                    "生成一张",
                    "{C:gold,E:1}集群{}小丑牌"
                }
            }
        },
        Stake={},
        Tag={},
        Tarot={
            c_fg_chariot = {
                name = "战车？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "的增强效果替换为",
                    "{C:attention}钢铁？牌{}",
                    "将他们复制一次，",
                    "将复制的牌的增强效果{C:attention}移除{}",
                    "{C:inactive}（选定卡牌必须已有{}",
                    "{C:inactive}增强效果）{}"
                }
            },
            c_fg_death = {
                name = "死神？",
                text = {
                    "选择最多{C:attention}#1#{}张卡牌，",
                    "将所有选择的卡牌变成{C:attention}最靠右{}的那张牌",
                    "{C:inactive}（只变化{C:attention}花色{C:inactive}和{C:attention}点数{C:inactive}）{}",
                    "{C:inactive}（你可以拖动来改变位置）{}"
                }
            },
            c_fg_devil = {
                name = "恶魔？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "的增强效果替换为",
                    "{C:attention}黄金？牌{}",
                    "将他们复制一次，",
                    "将复制的牌的增强效果{C:attention}移除{}",
                    "{C:inactive}（选定卡牌必须已有{}",
                    "{C:inactive}增强效果）{}"
                }
            },
            c_fg_emperor = {
                name = "皇帝？",
                text = {
                    "有{C:green}#1#/#2#{}的几率",
                    "生成一个{C:legendary}灵魂{}"
                }
            },
            c_fg_empress = {
                name = "皇后？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "的增强效果替换为",
                    "{C:attention}倍率？牌{}",
                    "将他们复制一次，",
                    "将复制的牌的增强效果{C:attention}移除{}",
                    "{C:inactive}（选定卡牌必须已有{}",
                    "{C:inactive}增强效果）{}"
                }
            },
            c_fg_fool = {
                name = "愚者？",
                text = {
                    "生成{C:attention}#1#{}个",
                    "随机的{C:tarot}塔罗{}或{C:planet}星球{}牌",
                    "{C:inactive}（不包括{C:tarot}愚者？{C:inactive}）"
                }
            },
            c_fg_hermit = {
                name = "隐者？",
                text = {
                    "增强最多{C:attention}#1#{}张选定卡牌，",
                    "增强效果{C:attention}随机{}",
                    "{C:attention}减半{}资金",
                    "{C:inactive}（最高{C:gold}$#2#{C:inactive}）"
                }
            },
            c_fg_hierophant = {
                name = "教皇？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "的增强效果替换为",
                    "{C:attention}奖励？牌{}",
                    "将他们复制一次，",
                    "将复制的牌的增强效果{C:attention}移除{}",
                    "{C:inactive}（选定卡牌必须已有{}",
                    "{C:inactive}增强效果）{}"
                }
            },
            c_fg_high_priestess = {
                name = "女祭司？",
                text = {
                    "有{C:green}#1#/#2#{}的几率",
                    "生成一个{C:legendary}黑洞{}"
                }
            },
            c_fg_justice = {
                name = "正义？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "的增强效果替换为",
                    "{C:attention}玻璃？牌{}",
                    "将他们复制一次，",
                    "将复制的牌的增强效果{C:attention}移除{}",
                    "{C:inactive}（选定卡牌必须已有{}",
                    "{C:inactive}增强效果）{}"
                }
            },
            c_fg_magician = {
                name = "魔术师？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "的增强效果替换为",
                    "{C:attention}幸运？牌{}",
                    "将他们复制一次，",
                    "将复制的牌的增强效果{C:attention}移除{}",
                    "{C:inactive}（选定卡牌必须已有{}",
                    "{C:inactive}增强效果）{}"
                }
            },
            c_fg_moon = {
                name = "月亮？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "转换为{C:clubs}梅花",
                    "将剩余{C:attention}手牌{}转换为",
                    "{C:diamonds}方片{}"
                }
            },
            c_fg_star = {
                name = "星星？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "转换为{C:diamonds}方片",
                    "将剩余{C:attention}手牌{}转换为",
                    "{C:clubs}梅花{}"
                }
            },
            c_fg_sun = {
                name = "太阳？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "转换为{C:hearts}红桃",
                    "将剩余{C:attention}手牌{}转换为",
                    "{C:spades}黑桃{}"
                }
            },
            c_fg_temperance = {
                name = "节制？",
                text = {
                    "获得{C:attention}双倍{}拥有的消耗牌",
                    "售出价格总和的",
                    "资金{C:inactive}（最高{C:gold}$#2#{C:inactive}）",
                    "{C:inactive}(当前{C:gold}$#1#{C:inactive})"
                }
            },
            c_fg_wheel_of_fortune = {
                name = "命运之轮？",
                text = {
                    "有{C:green}#1#/#2#{}的几率",
                    "给一张随机的{C:attention}小丑牌{}",
                    "添加{C:dark_edition}负片{}版本"
                }
            },
            c_fg_world = {
                name = "世界？",
                text = {
                    "将最多{C:attention}#1#{}张选定卡牌",
                    "转换为{C:spades}黑桃",
                    "将剩余{C:attention}手牌{}转换为",
                    "{C:hearts}红桃{}"
                }
            },
        },
        Voucher={
            v_fg_violin = {
                name = "小提琴",
                text = {
                    "在所有的{C:purple}调律包{}中",
                    "{C:attention}+1{}选项并{C:attention}+1{}可选张数"
                }
            }
        },
    },
    FG = {
        config = {
            disclaimer = {
                "此模组正在早期开发",
                "一切内容都待改变",
            },
            extra_jokers = "多余小丑",
            extra_jokers_tooltip = {
                "防止本模组所加的",
                "新小丑（即非原游戏迭代小丑）生成",
                "{C:inactive,s:0.7}推荐在非游玩时改变这个选项",
                "{C:dark_edition,s:0.7}实验性选项{}"
            },
            diplicate_jokers = "复数小丑",
            duplicate_jokers_tooltip = {
                "允许在已有迭代版本的小丑下",
                "生成同个非迭代小丑（反之亦然）",
                "{C:inactive,s:0.7}推荐在非游玩时改变这个选项",
                "{C:dark_edition,s:0.7}实验性选项{}"
            },
            alt_sfx = "替代音效",
            alt_sfx_tooltip = {
                "代替小丑牌中的",
                "原有音效",
                "{C:red}要求重启游戏{}"
            },
            special_edition = "特殊版本",
            debug_mode = "打开开发者模式",
            misc = {
                ["?"] = "（？）",
                require_restart = "（要求重启游戏）"
            }
        },
        credits = {
            names = {
                goldenleaf = "GoldenLeaf",
                jogla = "Jogla",
                deathmodereal = "deathmodereal",
                jenku = "Jenku",
                gappie = "Gappie",
                samuran = "Samuran",
                hyperx = "Hyperx",
                localthunk = "LocalThunk",
                mathisfun_ = "MathIsFun_",
                rav = "Rav",
                lavbulb = "Lavbubl",
                poker_the_poker = "Poker The Poker",
            },
            languages = {
                ["en-us"] = "英语",
                ["es_ES"] = "西班牙语",
                ["zh-CN"] = "中文",
                ["sn_bos"] = "森语"
            },
            misc = {
                page_title = "致谢名单",
                title = "Fool's Gambit",
                version = "版本",
                lead_developer = "重要开发者",
                code = "编程",
                art = "美工",
                music = "音乐",
                special_thanks = "特别感谢",
                special_thanks_misc = "模组论坛中的每一位",
                localization = "翻译",
                links = {
                    title = "链接",
                    github = "Github",
                    discord = "Discord伺服器",
                    d_thread = "模组论坛",
                    wiki = "模组维基",
                    wiki_dev = "开发者维基",
                },
            }
        },
    },
    misc = {
        FG = {
            chipMult="乘倍！",
			plus_aberration="+1 转变牌",
			replaced="替代！",
			replenished="补充！",
			card_added="+1 卡牌",
        },
        achievement_descriptions={},
        achievement_names={},
        blind_states={},
        challenge_names={},
        collabs={},
        dictionary={
            k_fg_collective = "集群",
            k_aberration = "转变",
            b_aberration_cards= "转变牌",
            k_chipMult="乘倍！",
			k_plus_aberration="+1 转变牌",
			k_replaced="替代！",
			k_replenished="补充！",
			k_card_added="+1 卡牌",
            k_unchangeable_warning = "这张卡牌无法被迭代转化",
            k_fg_active = "激活！",
            k_fg_none = "无",
        },
        high_scores={},
        labels={
            fg_collective = "集群",
            fg_aberration = "转变"
        },
        poker_hand_descriptions={},
        poker_hands={},
        quips={},
        ranks={},
        suits_plural={},
        suits_singular={},
        tutorial={},
        v_dictionary={},
        v_text={},
    },
}