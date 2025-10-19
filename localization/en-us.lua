return {
    descriptions = {
        aberration = {
            c_fg_tonal = {
                name = "Tonal",
                text = {
                    "Alternates the {C:attention}#1#{}",
                    "leftmost #2#", -- should be 3, change this to 3 leftmost later
                }
            },
            c_fg_atonal = {
                name = "Atonal",
                text = {
                    "Alternates the {C:attention}#1#{}",
                    "leftmost #2#", -- should be 3, change this to 3 leftmost later
                }
            },
            c_fg_accelerando = {
                name = "Accelerando",
                text = {
                    "Changes {C:attention}#1#{} selected cards",
                    "and turns their editions, seals and,",
                    "enhancements to their {C:purple}Alternate{} form",
                }
            },
            c_fg_treble = {
                name = "Treble",
                text = {
                    "Alternates all {C:blue}Common{}",
                    "Jokers in possession"
                }
            },
            c_fg_bass = {
                name = "Bass",
                text = {
                    "Alternates all {C:green}Uncommon{}",
                    "Jokers in possession"
                }
            },
            c_fg_alto = {
                name = "Alto",
                text = {
                    "Alternates all {C:red}Rare{}",
                    "Jokers in possession"
                }
            },
            c_fg_stake = {
                name = "Stake",
                text = {
                    "Creates up to {C:attention}#1#",
                    "random {C:purple}Aberration{} cards",
                    "{C:inactive}(Must have room)",
                }
            },
            c_fg_fil_di_voce = {
                name = "Fil Di Voce",
                text = {
                    "{C:money}+$#1#{} for each owned {C:purple}Alternate{} Joker",
                    "{C:money}+$#2#{} for each owned {C:red}Original{} Joker",
                    "{C:inactive}(Currently {C:money}$#3#{C:inactive}){}"
                }
            },
            -- alts
            c_fg_tonal_alt = {
                name = "Tonal?",
                text = {
                    "Converts the {C:attention}#1#{} leftmost #2#", -- should be 3, change this to 3 leftmost later
                    "to their {C:red}Original{} form",
                }
            },
            c_fg_atonal_alt = {
                name = "Atonal?",
                text = {
                    "Converts the {C:attention}#1#{} leftmost #2#", -- should be 3, change this to 3 leftmost later
                    "to their {C:purple}Alternate{} form",
                }
            },
            c_fg_treble_alt = {
                name = "Treble?",
                text = {
                    "Turns all {C:blue}Common{C:inactive}?{} Jokers in hand",
                    "into their {C:red}Original{} form"
                }
            },
            c_fg_bass_alt = {
                name = "Bass?",
                text = {
                    "Turns all {C:green}Uncommon{C:inactive}?{} Jokers in hand",
                    "into their {C:red}Original{} form"
                }
            },
            c_fg_alto_alt = {
                name = "Alto?",
                text = {
                    "Turns all {C:red}Rare{C:inactive}?{} Jokers in hand",
                    "into their {C:red}Original{} form"
                }
            },
        },
        Back = {},
        Blind = {},
        Edition = {},
        Enhanced = {
            m_fg_glass = {
                name = "Glass? Card",
                text = {
                    "Gains {C:white,X:red}X1{} Mult for each scoring card",
                    "with this enhancement in playing hand",
                    "destroys after use",
                    "no rank or suit",
                }
            },
            m_fg_steel = {
                name = "Steel? Card",
                text = {
                    "Gains {C:white,X:red}X#1#{} Mult for every",
                    "{C:attention}steel? card{} in {C:attention}full deck{}",
                    "Triggers while this card is",
                    "held in hand",
                    "{C:inactive}(Currently {C:white,X:red}X#2#{C:inactive} mult)"
                }
            },
            m_fg_lucky = {
                name = "Lucky? Card",
                text = {
                    "{C:green}#1# in #2#{} chance",
                    "for {C:chips}+#3#{} Chips",
                    "{C:green}#4# in #5#{} chance",
                    "to win {C:gold}$#6#"
                }
            },
            m_lucky = {
                name = "Lucky Card",
                text = {
                    "{C:green}#1# in #2#{} chance",
                    "for {C:mult}+#3#{} Mult",
                    "{C:green}#4# in #5#{} chance",
                    "to win {C:gold}$#6#"
                }
            },
            m_fg_gold = {
                name = "Gold? Card",
                text = {
                    "Adds {C:attention}half{} the money equivalent",
                    "to the cards {C:attention}held in hand{}",
                    "at the {C:attention}end of round{C:inactive} (Rounded up){}",
                    "{C:inactive}(Currently {C:gold}+$#1#{C:inactive})"
                },
            },
            m_fg_bonus = {
                name = "Bonus? Card",
                text = {
                    "{C:green}#1# in #2#{} chance",
                    "for {C:chips}+#3#{} Chips",
                    "{C:green}#4# in #5#{} chance",
                    "for {C:chips}#6#{} Chips",
                }
            },
            m_fg_mult = {
                name = "Mult? Card",
                text = {
                    "{C:green}#1# in #2#{} chance",
                    "for {C:mult}+#3#{} Mult",
                    "{C:green}#4# in #5#{} chance",
                    "for {C:mult}#6#{} Mult",
                }
            },
            m_fg_stone = {
                name = "Stone? Card",
                text = {
                    "When held in hand, destroy this card and ",
                    "enhance adjacent non-enhanced cards to",
                    "{C:attention}Stone? Cards{} with {C:chips}15 more Chips",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} extra Chips)"
                }
            },
            m_fg_wild = {
                name = "Wild? Card",
                text = {
                    "When played randomly gives",
                    "{C:chips}+#1#{} Chips, {C:mult}+#2#{} Mult,",
                    "{C:white,X:mult}X#3#{} Mult or {C:gold}$#4#{}"
                }
            }
        },
        Joker = {
            -- Mod jokers
            j_fg_change_of_pace = {
                name = 'Change of Pace',
                text = {
                    "After being sold, changes spawned {C:red}jokers{}",
                    "to their {C:purple}Alternate{} forms"
                }
            },
            j_fg_change_of_pace_alt = {
                name = 'Change of Pace?',
                text = {
                    "After being sold, changes spawned {C:purple}jokers{}",
                    "to their {C:red}Original{} forms"
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
                    "all other jokers to the opposite edition"
                }
            },
            j_fg_delinquent = {
                name = 'Delinquent',
                text = {
                    "{C:attention}Replaces{} consumable cards",
                    "with {C:purple}Aberration{} cards",
                    "when a blind is skipped",
                },
            },
            j_fg_delinquentalt = {
                name = 'Delinquent?',
                text = {
                    "{C:attention}Replenishes{} empty consumable",
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
            j_fg_disc = {
                name = "Disc Joker",
                text = {
                    "{C:red}Original{C:attention} Jokers",
                    "each give {C:chips}+#1#{} Chips",
                    "{s:0.8}Disc Joker included",
                },
            },
            j_fg_discalt = {
                name = "Disc Joker?",
                text = {
                    "Cards with {C:red}original{C:attention} enhancements",
                    "each give {C:chips}+#1#{} Chips",
                },
            },
            j_fg_orchestral = {
                name = "Orchestral Joker",
                text = {
                    "{C:purple}Alternate{C:attention} Jokers",
                    "each give {C:mult}+#1#{} Mult",
                },
            },
            j_fg_orchestralalt = {
                name = "Orchestral Joker?",
                text = {
                    "Cards with {C:purple}alternate{C:attention} enhancements",
                    "each give {C:mult}+#1#{} Mult",
                },
            },
            j_fg_conductor = {
                name = "Conductor",
                text = {
                    "Creates #1# {C:purple}aberration{} card if",
                    "played poker hand contains only",
                    "{C:attention}Face{} cards",
                    "{C:inactive}(Must have room)",
                },
            },
            j_fg_conductoralt = {
                name = "Conductor?",
                text = {
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
            j_fg_mango = {
                name = "Mango",
                text = {
                    "Gives {C:mult}+#1#{} Mult,",
                    "{C:mult}-#2#{} Mult every",
                    "{C:purple}Aberration{} card used",
                },
            },
            j_fg_mangoalt = {
                name = "Mango?",
                text = {
                    "Gives {C:mult}+#1#{} Mult,",
                    "{C:mult}-#2#{} Mult every",
                    "{C:purple}Alternate{} joker bought",
                },
            },
            j_fg_kevin = {
                name = "Kevin",
                text = {
                    "{X:mult,C:white}X#1#{} Mult,",
                    "Loses {X:mult,C:white}X#2#{} per hand",
                    "played",
                    "{C:attention}Alternate this Joker",
                    "{C:attention}to reset its values"
                },
            },
            j_fg_kevinalt = {
                name = "Kevin?",
                text = {
                    "{X:mult,C:white}X#1#{} Mult,",
                    "Loses {X:mult,C:white}X#2#{} per hand",
                    "played",
                    "{C:attention}Alternate this Joker",
                    "{C:attention}to reset its values"
                },
            },
            j_fg_equalizer = {
                name = "Equalizer",
                text = {
                    "Set {C:mult}Mult{} to {C:mult}#1#{},",
                    "{C:green}#3# in #4#{} Chance to",
                    "add {C:attention}#2#{} to this value",
                    "when an {C:attention}aberration{} card is used"
                },
            },
            j_fg_equalizeralt = {
                name = "Equalizer?",
                text = {
                    "Set {C:chips}Chips{} equal to",
                    "{C:attention}#1#{} times {C:mult}Mult{}",
                },
            },
            -- Normal jokers
            j_fg_matador = {
                name = "Matador?",
                text = {
                    "If the {C:attention}Boss Blind{} ability",
                    "never gets triggered",
                    "for the round,",
                    "Earn {C:money}$#1#{}",
                },
            },
            j_fg_joker = {
                name = 'Joker?',
                text = {
                    "Every card scored",
                    "gives {C:mult}+#1#{} Mult"
                }
            },
            j_fg_greedy_joker = {
                name = 'Greedy Joker?',
                text = {
                    "Each scored card with {C:diamonds}Diamond{} suit",
                    "temporarily gains {C:mult}+#1#{} mult, resets",
                    "when {C:attention}Boss Blind{} is defeated",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                }
            },
            j_fg_lusty_joker = {
                name = 'Lusty Joker?',
                text = {
                    "Each scored card with {C:hearts}Heart{} suit",
                    "temporarily gains {C:mult}+#1#{} mult, resets",
                    "when {C:attention}Boss Blind{} is defeated",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                }
            },
            j_fg_wrathful_joker = {
                name = 'Wrathful Joker?',
                text = {
                    "Each scored card with {C:spades}Spade{} suit",
                    "temporarily gains {C:mult}+#1#{} mult, resets",
                    "when {C:attention}Boss Blind{} is defeated",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                }
            },
            j_fg_gluttenous_joker = {
                name = "Gluttonous Joker?",
                text = {
                    "Each scored card with {C:clubs}Club{} suit",
                    "temporarily gains {C:mult}+#1#{} mult, resets",
                    "when {C:attention}Boss Blind{} is defeated",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                }
            },
            j_fg_jolly = {
                name = 'Jolly Joker?',
                text = {
                    "{C:red}+#1#{} Mult and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_zany = {
                name = 'Zany Joker?',
                text = {
                    "{C:red}+#1#{} Mult and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_mad = {
                name = 'Mad Joker?',
                text = {
                    "{C:red}+#1#{} Mult and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_crazy = {
                name = 'Crazy Joker?',
                text = {
                    "{C:red}+#1#{} Mult and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_droll = {
                name = 'Droll Joker?',
                text = {
                    "{C:red}+#1#{} Mult and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_sly = {
                name = 'Sly Joker?',
                text = {
                    "{C:chips}+#1#{} Chips and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_wily = {
                name = 'Wily Joker?',
                text = {
                    "{C:chips}+#1#{} Chips and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_clever = {
                name = 'Clever Joker?',
                text = {
                    "{C:chips}+#1#{} Chips and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_devious = {
                name = 'Devious Joker?',
                text = {
                    "{C:chips}+#1#{} Chips and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_crafty = {
                name = 'Crafty Joker?',
                text = {
                    "{C:chips}+#1#{} Chips and",
                    "retrigger scoring cards {C:attention}#3#{} time",
                    "if played hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_fg_credit_card = {
                name = 'Credit Card?',
                text = {
                    "Can go {C:red}infinitely{} in debt",
                    "Every {C:attention}4{} antes if in debt, destroy",
                    "all jokers in posession"
                }
            },
            j_fg_ceremonial = {
                name = 'Ceremonial Dagger?',
                text = {
                    "When {C:attention}Blind{} is selected,",
                    "destroy Joker to the left",
                    "and permanently add {C:attention}X#2#",
                    "its sell value to this {C:chips}Chips",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
                }
            },
            j_fg_banner = {
                name = 'Banner?',
                text = {
                    "{C:red}+#2#{} discards",
                    "{C:chips}+#1#{} Chips for",
                    "each remaining",
                    "{C:attention}discard",
                }
            },
            j_fg_marble = {
                name = 'Marble Joker?',
                text = {
                    "Replaces a card in hand",
                    "with a {C:attention}Stone?{} card",
                    "after {C:attention}Blind{} is defeated"
                }
            },
            j_fg_mystic_summit = {
                name = 'Mystic Summit?',
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
                    "Every {C:attention}#1#{} scored {C:attention}8{} creates a",
                    "{C:tarot}Tarot{} card when scored",
                    "{C:inactive}(Must have room)",
                    "{C:inactive}(Currently at #2#)"
                },
            },
            j_fg_misprint = {
                name = 'Misprint?',
                text = {
                    ""
                }
            },
            j_fg_raised_fist = {
                name = 'Raised Fist?',
                text = {
                    "Gains {C:attention}half{} the rank",
                    "of {C:attention}lowest{} ranked card",
                    "held in hand to Mult",
                    '{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}'
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
            j_fg_delayed_grat = {
                name = 'Delayed gratification',
                text = {
                    "Earn {C:money}$5{} if {C:attention}1{} discard",
                    "at end of round"
                }
            },
            j_fg_egg = {
                name = 'Egg?',
                text = {
                    "Has {C:money}$#1#{} sell value",
                    "when sold lose",
                    "{C:mult}#2#{} hand and {C:mult}#3#{} discard"
                },
            },
            j_fg_ice_cream = {
                name = "Ice Cream?",
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:chips}-#2#{} Chips when",
                    "blind {C:attention}selected{}"
                }
            },
            j_fg_blue_joker = {
                name = 'Blue Joker?',
                text = {
                    "{C:chips}+#1#{} Chips for every",
                    "card in the {C:attention}full deck{}",
                    "{C:inactive}(Currently {C:chips}+#2#{C:inactive} Chips){}"
                }
            },
            j_fg_constellation = {
                name = 'Constellation',
                text = {
                    "Gains {C:mult}+#2#{} Mult for each",
                    "{C:attention}planet{} card used",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
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
                    "{C:white,X:mult}X#2#{} Mult at end of round",
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
                    "a blind is {C:attention}skipped{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult)"
                }
            },
            j_fg_hologram = {
                name = 'Hologram?',
                text = {
                    "Gains {X:mult,C:white}X#2#{} Mult for every",
                    "{C:attention}destroyed{} card",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{}{C:inactive} Mult)"
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
            j_fg_vampire = {
                name = 'Vampire?',
                text = {
                    "This joker gains {X:mult,C:white}X#2#{} Mult",
                    "per scoring card with an {C:attention}edition{}",
                    "Removes card {C:attention}edition{}",
                    "{C:inactive}(Currently {X:mult,C:white}X#1#{C:inactive} Mult)",
                    "{C:inactive,s:0.8}(Effect applies after scoring){}"
                }
            },
            j_fg_riff_raff = {
                name = "Riff-raff",
                text = {
                    "{C:green}#1# in #2#{} chance of creating a random",
                    "{C:green}Uncommon{} joker when bind is {C:attention}selected{}",
                    "{C:green}#1# in #3#{} chance of creating a random",
                    "{C:red}Rare{} joker when bind is {C:attention}selected{}"
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
            j_fg_gift = {
                name = "Gift Card",
                text = {
                    "Gains {C:attention}one quarter{C:inactive} (rounded up) {}",
                    "of all jokers and consumables",
                    "{C:attention} in possesion{} at {C:attention}end of round{}",
                    "{C:inactive}(Currently {C:gold}$#1#{C:inactive})"
                }
            },
            j_fg_turtle_bean = {
                name = 'Turtle Bean?',
                text = {
                    "{C:attention}+#1#{} hand size",
                    "Gains {C:attention}+#2#{} extra hand size for this",
                    "round for each hand used.",
                    "{C:inactive}(Currently {C:attention}+#3#{C:inactive} hand size){}"
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
            j_fg_tribe = {
                name = "The Tribe",
                text = {
                    "{C:white,X:mult}X#1#{} Mult if",
                    "scoring hand consist of 5 {C:attention}Queens",
                    "all sharing the same {C:attention}suit{}"
                }
            },
            j_fg_bull = {
                name = "Bull?",
                text = {
                    "Gains {C:chips}+#2#{} Chips, {C:red}-$#3#{}",
                    "at {C:attention}end of round{}",
                    "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)"
                }
            },
            j_fg_trading = {
                name = 'Trading Card?',
                text = {
                    "Earn {C:gold}$#1#{} for each",
                    "card destroyed"
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
                name = "Seltzer?",
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
                    "Gains {C:white,X:mult}X#3#{} Mult when all",
                    "playing cards are {V:1}#1#",
                    "Suit changes every round",
                    "{C:inactive}(Currently{C:white,X:mult}X#2#{C:inactive} Mult)",
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
            j_fg_mr_bones = {
                name = 'Mr. Bones',
                text = {
                    "After {C:attention}final hand{} {C:blue}+#4#{} hands and {C:red}+#5#{} discards if chips",
                    "scored are at least {C:attention}#3#%{} of required score",
                    "{C:green}#1# in #2#{} chance this card gets {C:red}destroyed{}",
                    "when triggered"
                }
            },
            j_fg_acrobat = {
                name = "Acrobat?",
                text = {
                    "Gains {C:white,X:mult}X#2#{} Mult when blind",
                    "is defeated on the {C:attention}first{} hand",
                    "{C:inactive}(Currently {C:white,X:mult}X#1#{C:inactive} Mult)"
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
            j_fg_rough_gem = {
                name = "Rough Gem?",
                text = {
                    "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:diamonds}Diamond{} suit, earn",
                    "{C:money}$#2#{} when scored",
                },
            },
            j_fg_juggler = {
                name = "Juggler?",
                text = {
                    "{C:attention}+#1#{} consumable slot"
                }
            },
            j_fg_stone = {
                name = "Stone Joker?",
                text = {
                    "Scored {C:attention}Stone? Cards{}' Chip value",
                    "{C:attention}Double{}"
                },
            },
            j_fg_bloodstone = {
                name = "Bloodstone?",
                text = {
                    "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:hearts}Heart{} suit, gain",
                    "{X:mult,C:white}X#2#{} Mult when scored",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{}{C:inactive} Mult)",
                },
            },
            j_fg_arrowhead = {
                name = "Arrowhead?",
                text = {
                    "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:spades}Spade{} suit, gain",
                    "{C:chips}+#2#{} Chips when scored",
                    "{C:inactive}(Currently {C:chips}+#3#{}{C:inactive} Chips)",
                },
            },
            j_fg_onyx_agate = {
                name = "Onyx Agate?",
                text = {
                    "If poker hand contains a {C:attention}#1#{}",
                    "with only {C:clubs}Club{} {C:attention}suit{}, gain",
                    "{C:mult}+#2#{} Mult when scored",
                    "{C:inactive}(Currently {C:mult}+#3#{}{C:inactive} Mult)",
                },
            },
            j_fg_flower_pot = {
                name = "Flower Pot?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult if {C:attention}scoring hand{} contains",
                    "{C:spades}Spades{}, {C:hearts}Hearts{}, {C:clubs}Cubs{}, {C:diamonds}Diamonds{},",
                    "{C:attention}face{} and {C:attention}number{} cards"
                }
            },
            j_fg_seeing_double = {
                name = "Seeing Double?",
                text = {
                    "{C:white,X:mult}X#1#{} Mult if scoring hand",
                    "contains {C:clubs}Clubs{} and any other {C:attention}suit{}",
                    "Turn all scoring cards into {C:clubs}Clubs",
                    "after scoring"
                }
            },
            j_fg_hit_the_road = {
                name = "Hit the Road?",
                text = {
                    "Gains {C:white,X:mult}X#2#{} Mult",
                    "for every {C:attention}Jack{} discarded",
                    "{C:inactive}(Currently {C:white,X:mult}X#1#{C:inactive} Mult)"
                }
            },
            j_fg_stuntman = {
                name = 'Stuntman?',
                text = {
                    "{C:chips}+#1#{} Chips",
                    "{C:red,E:1}Forcebly{} removes all discards and",
                    "sets maximum hand size to {C:attention}#2#{}"
                }
            },
            j_fg_invisible = {
                name = "Invisible Joker?",
                text = {
                    "When sold, remove a random {C:attention}Joker",
                    "Create an {C:attention}Invisible memory?{}",
                    "with the removed Joker",
                    "{C:inactive}(Cannot copy eternal jokers{}",
                }
            },
            j_fg_invisible_memory = {
                name = "{C:dark_edition,E:1}Invisible memory?{}",
                text = {
                    "The memory of an {C:attention}Invisible Joker?{}",
                    "After {C:attention}#1#{} round(s), {C:red,E:2}self-destruct{} and",
                    "create {C:attention}#2#{C:dark_edition} negative{} copies of {C:attention}#3#{}",
                }
            },
            j_fg_shoot_the_moon = {
                name = 'Shoot the moon?',
                text = {
                    "Gains {C:mult}+#2#{} Mult for every {C:attention}face{} card",
                    "held in hand at {C:attention}end of round{}",
                    "{C:inactive}(Currently {C:mult}+#1#{C:inactive} Mult){}"
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
                name = "Oops all 6s?",
                text = {
                    "When a {C:green,E:1}listed probability{} hits,",
                    "{X:green,C:white,E:1}X#4#{} the {C:green,E:1}numerator{} and",
                    "{X:green,C:white,E:1}X#3#{} the {C:green,E:1}denominator",
                    "{C:inactive}(Currently {C:green,E:1}X#2#/#1#{C:inactive} probability)"
                }
            },
            j_fg_drunkard = {
                name = "Drunkard?",
                text = {
                    "{C:red}#1#{} discards, {C:blue}+#2#{} hands",
                    "each round",
                }
            },
            j_fg_troubadour = {
                name = "Troubadour?",
                text = {
                    "{C:attention}#1#{} hand size,",
                    "{C:blue}+#2#{} hand each round",
                }
            },
            j_fg_swashbuckler = {
                name = "Swashbuckler?",
                text = {
                    "Adds the {C:attention}sell value{} of this Joker",
                    "to all other owned Jokers when {C:attention}sold",
                    "{C:inactive}(Currently {C:gold}+#1#{C:inactive} sell value)"
                }
            },
            j_fg_lucky_cat = {
                name = "Lucky Cat?",
                text = {
                    "For every scored {C:attention}lucky{C:inactive}(?){} card, {C:green}#4# in #5#{} chance to",
                    "permanantly {C:chips}+#1#{} Chips, {C:mult}+#2#{} mult and {C:gold}+$#3#",
                    "to said card depending on it's version"
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
                name = 'deathmodereal',
                text = {
                    "He's {X:black,C:white}cool(ish){}",
                    '{X:mult,C:white}X#1#{} mult',
                    "{C:inactive,s:0.7}(X2 required score for",
                    "{C:inactive,s:0.7}each hand played)"
                },
            },
            j_fg_deathmoderealalt = {
                name = 'deathmodereal',
                text = {
                    "He's {X:white,C:black}cool{}",
                    'each scored card gives',
                    '{X:mult,C:white}X#1#{} mult'
                }
            },
            j_fg_jogla = {
                name = 'Jogla',
                text = {
                    "Create {C:attention}#1# {C:dark_edition}Negative{} copies of",
                    "the {C:attention}leftmost{} consumable in possession",
                    "at the end of the {C:attention}shop{}",
                    "{C:inactive}(Currently copying {C:attention}#2#{C:inactive})",
                    "{C:inactive,s:0.7}\"I am NOT a wizard\""
                },
            },
            j_fg_jogla_alt = {
                name = "Joglalt",
                text = {
                    "Increases hand size by {C:attention}#1#{} when",
                    "{C:attention}Boss blind{} defeated",
                    "{C:inactive}(Currently {C:attention}+#2#{C:inactive} hand size)"
                }
            },
            j_fg_jenker = {
                name = 'Jenku',
                text = {
                    "Retriggers every {C:attention}Joker{}",
                    "for every second {C:attention}Boss Blind{} defeated",
                    "starting at {C:mult}1{}",
                    "{C:inactive}(Currently {C:mult}#1#{}{C:inactive} time(s))",
                    "{C:inactive,s:0.7}\"Probably caused the most crashes.\""
                }
            },
            j_fg_goldenleaf = {
                name = "GoldenLeaf",
                text = {
                    "When a {C:gold}Gold{}{C:inactive}(?){} card",
                    "is scored,",
                    "{X:mult,C:white}X#1#{} Mult",
                    "{C:inactive}\"get it cause im \"golden\"leaf\""
                }
            },
            j_fg_goldenleafalt = {
                name = "SilverAutumn",
                text = {
                    "Permanently increase amount",
                    "of hands by {C:blue}#1#{} when",
                    "{C:attention}Boss blind{} defeated",
                    "{C:inactive}(Currently {C:blue}+#2#{C:inactive} hands)"
                }
            },
            j_fg_samuran = {
                name = 'Samuran',
                text = {
                    "{C:green}#1# in #2#{} chance to create a {C:dark_edition}negative{} copy",
                    " of a {C:red}non-negative{} consumable when used"
                }
            },
            j_fg_samuran_alt = {
                name = 'Samuran?',
                text = {
                    "All consumables in the shop are {C:dark_edition}negative{}",
                    "{C:attention}Further increase{} shop prices for each",
                    "{C:dark_edition}negative{} consumable in posession"
                }
            }
        },
        Other = {
            fg_unchangeable = {
                name = "Unchangeable",
                label = "Unchangeable",
                text = {
                    "Can't be alternated"
                }
            },
            fg_alternate_mark = {
                name = "Alternate",
                label = "Alternate",
                text = {
                    "This is an",
                    "{C:purple}alternate{} card"
                }
            },
            p_fg_aberration1 = {
                name = 'Melody Pack',
                text = {
                    "Choose {C:attention}#1#{} of up to ",
                    "{C:attention}#2#{} {C:purple}aberration{} cards to",
                    "be used immediately"
                },
            },
            p_fg_aberration2 = {
                name = 'Melody Pack',
                text = {
                    "Choose {C:attention}#1#{} of up to ",
                    "{C:attention}#2#{} {C:purple}aberration{} cards to",
                    "be used immediately"
                },
            },
            p_fg_aberration3 = {
                name = 'Jumbo Melody Pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:purple}aberration{} cards to",
                    "be used immediately"
                },
            },
            p_fg_aberration4 = {
                name = 'Mega Melody Pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2#{} {C:purple}aberration{} cards to",
                    "be used immediately"
                },
            }
        },
        Planet = {},
        Spectral = {
            c_fg_soul = {
                name = "The Soul?",
                text = {
                    "Creates a",
                    "{C:gold,E:1}Collective{} joker"
                }
            }
        },
        Stake = {},
        Tag = {},
        Tarot = {
            c_fg_chariot = {
                name = "The Chariot?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Steel? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_death = {
                name = "Death?",
                text = {
                    "Select up to {C:attention}#1#{} cards",
                    "Convert all cards into the {C:attention}rightmost card",
                    "{C:inactive}(Only copies {C:attention}suit{C:inactive} and {C:attention}rank{C:inactive}){}",
                    "{C:inactive}(Drag to rearrange){}"
                }
            },
            c_fg_devil = {
                name = "The Devil?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Gold? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_emperor = {
                name = "The Emperor",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:legendary}Soul{}"
                }
            },
            c_fg_empress = {
                name = "The Empress?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Mult? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_fool = {
                name = "The Fool?",
                text = {
                    "Creates {C:attention}#1#{} random",
                    "{C:tarot}Tarot{} or {C:planet}Planet{} card",
                    "{C:inactive}({C:tarot}The Fool?{} excluded)"
                }
            },
            c_fg_hanged_man = {
                name = "The Hanged Man?",
                text = {
                    "Destroys {C:attention}#1#{} random",
                    "cards in hand"
                }
            },
            c_fg_hermit = {
                name = "The Hermit?",
                text = {
                    "Enhance {C:attention}#1#{} selected cards",
                    "with a {C:attention}random{} enhancement",
                    "{C:attention}Halves{} money",
                    "{C:inactive}(Max of {C:gold}$#2#{C:inactive})"
                }
            },
            c_fg_hierophant = {
                name = "The Hierophant?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Bonus? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_high_priestess = {
                name = "High Priestess?",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "create a {C:legendary}Black Hole{}"
                }
            },
            c_fg_judgement = {
                name = "Judgement?",
                text = {
                    "Destroy selected joker",
                    "{C:green}#1# in #2#{} chance of creating up to {C:attention}#3#{}",
                    "jokers with a {C:attention}lower{} rarity, otherwise",
                    "create up to {C:attention}#3#{} with a {C:attention}higher{} rarity",
                    "{C:inactive}(Cannot create legendary jokers)"
                }
            },
            c_fg_justice = {
                name = "Justice?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Glass? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_lovers = {
                name = "The Lovers?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Wild? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_magician = {
                name = "The Magician?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Lucky? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_moon = {
                name = "The Moon?",
                text = {
                    "Select {C:attention}#1#{} cards to",
                    "turn them into {C:clubs}Clubs",
                    "Turn the rest of the {C:attention}hand{}",
                    "into {C:diamonds}Diamonds{}"
                }
            },
            c_fg_star = {
                name = "The Star?",
                text = {
                    "Select {C:attention}#1#{} cards to",
                    "turn them into {C:diamonds}Diamonds",
                    "Turn the rest of the {C:attention}hand{}",
                    "into {C:clubs}Clubs{}"
                }
            },
            c_fg_strength = {
                name = "Strength?",
                text = {
                    {
                        "Select {C:attention}2{} cards",
                        "Increases the rank of",
                        "the {C:attention}leftmost{} card by {C:attention}#1#{}",
                        "Decreases the rank of the",
                        "the {C:attention}rightmost{} card by {C:attention}#1#{}",
                    },
                }
            },
            c_fg_sun = {
                name = "The Sun?",
                text = {
                    "Select {C:attention}#1#{} cards to",
                    "turn them into {C:hearts}Hearts",
                    "Turn the rest of the {C:attention}hand{}",
                    "into {C:spades}Spades{}"
                }
            },
            c_fg_temperance = {
                name = "Temperance?",
                text = {
                    "Gives {C:attention}double{} the total sell value",
                    "of {C:attention}all{} consumables in posession",
                    "{C:inactive}(Max of {C:gold}$#2#{C:inactive})",
                    "{C:inactive}(Currently {C:gold}$#1#{C:inactive})"
                }
            },
            c_fg_tower = {
                name = "The Tower?",
                text = {
                    "Replaces the enhancement of",
                    "up to {C:attention}#1#{} selected cards",
                    "into {C:attention}Stone? Cards{}",
                    "Create a copy of each card",
                    "{C:attention}without{} any enhancement",
                    "{C:inactive}(Copied cards must have{}",
                    "{C:inactive}an enhancement){}"
                }
            },
            c_fg_wheel_of_fortune = {
                name = "The Wheel of Fortune?",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "add {C:dark_edition}Negative{} to",
                    "a random {C:attention}Joker{}"
                }
            },
            c_fg_world = {
                name = "The World?",
                text = {
                    "Select {C:attention}#1#{} cards to",
                    "turn them into {C:spades}Spades",
                    "Turn the rest of the {C:attention}hand{}",
                    "into {C:hearts}Hearts{}"
                }
            },
        },
        Voucher = {
            v_fg_violin = {
                name = "Violin",
                text = {
                    "{C:attention}+1{} available choice",
                    "in every {C:purple}Melody Pack{}",
                }
            },
            v_fg_cello = {
                name = "Cello",
                text = {
                    "{C:attention}+1{} select choice",
                    "in every {C:purple}Melody Pack{}",
                }
            },
            v_fg_change_of_pace = {
                name = "Change of Pace",
                text = {
                    "{C:purple}Alternate{} Jokers appear",
                    "{C:attention}X2{} more frequently",
                }
            },
            v_fg_modulation = {
                name = "Metric Modulation",
                text = {
                    "{C:purple}Alternate{} Jokers appear",
                    "{C:attention}X3{} more frequently",
                }
            },
            v_fg_music_merchant = {
                name = "Music Merchant",
                text = {
                    "{C:purple}Aberration{} cards can",
                    "now appear in the shop"
                }
            },
            v_fg_music_tycoon = {
                name = "Music Tycoon",
                text = {
                    "{C:purple}Aberration{} cards appear",
                    "{C:attention}X3{} more frequently",
                    "in the shop"
                }
            }
        },
    },
    FG = {
        config = {
            disclaimer = {
                "This mod is currently in early beta. Everything is subject to change",
            },
            labels = {
                ['content'] = 'Content',
                ['ui'] = 'Interface',
                ['misc'] = "Misc"
            },
            extra_jokers = "Additional jokers",
            extra_jokers_tooltip = {
                "Prevents jokers added by Fool's Gambit ",
                "that don't have a vanilla counterpart",
                "from spawning",
                " ",
                "It is not recommended to toggle",
                "this option during a run",
                "{C:dark_edition}This option is experimental{}"
            },
            duplicated_jokers = "Duplicate jokers",
            duplicated_jokers_tooltip = {
                "Allows jokers to spawn even if",
                "it's alternate is in your joker tray",
                " ",
                "It is not recommended to toggle",
                "this option during a run",
                "{C:dark_edition}This option is experimental{}"
            },
            alt_sfx = "Alternate SFX",
            alt_sfx_tooltip = {
                "Replaces balatro's sound effects",
                "with custom ones",
                " ",
                "{C:red}Requires restart{}"
            },
            extended_tooltips = "Extended tooltips",
            extended_tooltips_tooltip = {
                "Displays alternate effects",
                "in the info queue"
            },
            additional_title = "Additional title",
            additional_title_tooltip = {
                "Display a \"+Fool's Gambit\" logo",
                "next to the main Balatro title"
            },
            special_edition = "Special edition",
            debug_mode = "Enable debug mode",
            misc = {
                ["?"] = "(?)",
                require_restart = "(Requires restart)"
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
                mina_kitsune = "Scientifically Insane",
                astrojoot = "AstroJoot"
            },
            languages = {
                disclaimer = {
                    "Some localizations may be incomplete",
                    --"*Sendien \'sold\' separately"
                },
                ["en-us"] = "English",
                ["es_ES"] = "Spanish",
                ["zh-CN"] = "Chinese",
                ["sn_bos"] = "Sendien*",
                ["ja"] = "Japanese",
            },
            misc = {
                page_title = "Credits",
                title = "Fool's Gambit",
                version = "Version",
                lead_developer = "Lead developer",
                code = "CODE",
                art = "ART",
                music = "MUSIC",
                special_thanks = "Special thanks to",
                special_thanks_misc = "Everyone in the FG modding thread",
                localization = "Localization",
                links = {
                    title = "Useful links",
                    github = "Github repository",
                    discord = "Discord server",
                    d_thread = "Mod thread",
                    wiki = "Mod wiki",
                    wiki_dev = "Dev wiki",
                },
            }
        },
        language_adaptations = {
            w_joker_singular = "Joker",
            w_joker_plural = "Jokers",
            w_consumable_singular = "Consumable",
            w_consumable_plural = "Consumables"
        }
    },
    misc = {
        -- This one is very important. I have moved every localization key we might need for FG here.
        -- See aux_functions > FG.FUNCS.card_eval_status_text for more info
        FG = {
            chipMult = "Multiplied!",
            plus_aberration = "+1 aberration",
            replaced = "Replaced!",
            replenished = "Replenished!",
            card_added = "+1 Card",
        },
        achievement_descriptions = {},
        achievement_names = {},
        blind_states = {},
        challenge_names = {},
        collabs = {},
        dictionary = {
            k_minus = "-",
            k_fg_common_alt = "Common?",
            k_fg_uncommon_alt = "Uncommon?",
            k_fg_rare_alt = "Rare?",
            k_fg_legendary_alt = "Legendary?",
            k_fg_collective = "Collective",
            k_fg_collective_alt = "Collective?",
            k_aberration = "Aberration",
            b_aberration_cards = "Aberration Cards",
            k_chipMult = "Multiplied!",
            k_plus_aberration = "+1 Aberration",
            k_replaced = "Replaced!",
            k_replenished = "Replenished!",
            k_card_added = "+1 Card",
            k_unchangeable_warning = "This card can't be alternated",
            k_fg_active = "Active!",
            k_fg_none = "None",
            k_fg_aberration2 = { group_name = "fuck" }
        },
        high_scores = {},
        labels = {
            fg_common_alt = "Common?",
            fg_uncommon_alt = "Uncommon?",
            fg_rare_alt = "Rare?",
            fg_legendary_alt = "Legendary?",
            fg_collective = "Collective",
            fg_collective_alt = "Collective?",
            fg_unchangeable = "Unchangeable",
            fg_alternate_mark = "Alternate",
        },
        poker_hand_descriptions = {},
        poker_hands = {},
        quips = {
            -- Jogla
            fg_jogla_w1 = {
                "I'd say it's",
                "{C:attention}showtime{}"
            },
            fg_jogla_w2 = {
                "So, what's your",
                "next move?"
            },
            fg_jogla_l1 = {
                "I am sorry I",
                "couldn't aid you"
            },
            fg_jogla_l2 = {
                "What a terrible",
                "fate you've met"
            },

            -- GoldenLeaf
            fg_goldenleaf_wq = {
                "Travis scott, lock into a stud",
                "NOW!"
            },
            fg_goldenleaf_lq = {
                "How the fuck do you lose",
                "with a collective joker????"
            }
        },
        ranks = {},
        suits_plural = {},
        suits_singular = {},
        tutorial = {},
        v_dictionary = {},
        v_text = {},
    }
}
