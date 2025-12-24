return {
    descriptions = {
        aberration = {
            c_fg_tonal = {
                name = "Tonal",
                text = {
                    "Alterna {C:attention}#1#{} #2# de",
                    "más a la izquierda"
                }
            },
            c_fg_atonal = {
                name = "Atonal",
                text = {
                    "Alterna {C:attention}#1#{} #2# de",
                    "más a la izquierda"
                }
            },
            c_fg_accelerando = {
                name = "Accelerando",
                text = {
                    "Selecciona hasta {C:attention}#1#{} cartas y",
                    "alterna sus ediciones, sellos y mejoras"
                }
            },
            c_fg_treble = {
                name = "Clave de Sol",
                text = {
                    "Alterna todos los",
                    "comodines {C:blue}comunes{}",

                }
            },
            c_fg_bass = {
                name = "Clave de Fa",
                text = {
                    "Alterna todos los",
                    "comodines {C:green}inusuales{}",

                }
            },
            c_fg_alto = {
                name = "Clave de Do",
                text = {
                    "Alterna todos los",
                    "comodines {C:red}raros{}",
                }
            },
            c_fg_stake = {
                name = "Stake",
                text = {
                    "Crea hasta {C:attention}#1#{} cartas",
                    "de aberración aleatorias"
                }
            },
            c_fg_fil_di_voce = {
                name = "Fil Di Voce",
                text = {
                    "{C:money}+$#1#{} dólares por cada comodín {C:purple}alternativo{}",
                    "{C:money}+$#2#{} dólares por cada comodín {C:red}original{}",
                    "{C:inactive}(Actualmente {C:money}$#3#{C:inactive}){}"
                    
                }
            },
            c_fg_tonal_alt = {
                name = "¿Tonal?",
                text = {
                    "Convierte {C:attention}#1#{} #2# de más a",
                    "la izquierda a su versión {C:red}original{}"
                }
            },
            c_fg_atonal_alt = {
                name = "¿Atonal?",
                text = {
                    "Convierte {C:attention}#1#{} #2# de más a",
                    "la izquierda a su versión {C:purple}alternativa{}"
                }
            },
            c_fg_treble_alt = {
                name = "¿Clave de Sol?",
                text = {
                    "Convierte todos los comodines {C:blue}comunes{}",
                    "en sus versiones {C:red}originales{}"
                }
            },
            c_fg_bass_alt = {
                name = "¿Clave de Fa?",
                text = {
                    "Convierte todos los comodines {C:green}inusuales{}",
                    "en sus versiones {C:red}originales{}"
                }
            },
            c_fg_alto_alt = {
                name = "¿Clave de Do?",
                text = {
                    "Convierte todos los comodines {C:red}raros{}",
                    "en sus versiones {C:red}originales{}"
                }
            },
        },
        Back={},
        Blind={},
        Edition={},
        Enhanced={
            m_fg_glass = {
                name = "Carta de ¿Vidrio?",
                text = {
                    "Gana {C:white,X:red}X1{} Multi por cada carta",
                    "con esta mejora que puntue en la mano jugada",
                    "Se destruye tras ser usada",
                    "No tiene ni número ni palo"
                }
            },
            m_fg_steel = {
                name = "Carta de ¿Acero?",
                text = {
                    "Gana {C:white,X:red}X#1#{} multi pr cada",
                    "carta de acero en el",
                    "mazo completo",
                    "Se activa cuando se mantiene",
                    "en la mano",
                    "{C:inactive}(Actualmente {C:white,X:red}X#2#{C:inactive} multi)"
                }
            },
            m_fg_lucky = {
                name = "Carta ¿De la suerte?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades",
                    "para {C:chips}+#3#{} Fichas",
                    "{C:green}#4# in #5#{} probabilidades",
                    "para {C:gold}$#6#"
                }
            },
            m_fg_gold = {
                name = "Carta de ¿Oro?",
                text = {
                    "Añade {C:attention}la mitad{} del dinero que",
                    "cartas que {C:attention}tienes en la mano{}",
                    "al {C:attention}final de la ronda{}",
                    "{C:inactive}(Redondeado al alza{})",
                    "{C:inactive}(Actualmente {C:money}+$#1#){C:inactive}"
                }
            },
            m_fg_bonus = {
                name = "Carta ¿Adicional?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades",
                    "para {C:chips}+#3#{} Fichas",
                    "{C:green}#4# en #5#{} probabilidades",
                    "para {C:chips}-#6#{} Fichas",
                }
            },
            m_fg_mult = {
                name = "Carta ¿Multi?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades",
                    "para {C:mult}+#3#{} Multi",
                    "{C:green}#4# en #5#{} probabilidades",
                    "para {C:mult}-#6#{} Multi",
                }
            },
            m_fg_stone = {
                name = "Carta de ¿Piedra?",
                text = {
                    "Cuando se mantenga en la mano, destroye esta",
                    "carta y mejora las cartas adyacentes sin mejoras",
                    "a {C:attention}Cartas de ¿Piedra?{} con {C:chips}15 Fichas extra.{}",
                    "{C:inactive}(Actualmente {C:chips}+#2#{C:inactive} Fichas extra)"
                }
            },
            m_fg_wild = {
                name = "Carta ¿Versátil?",
                text = {
                    "Al ser jugada, aleatoriamente",
                    "{C:chips}+#1#{} Fichas, {C:mult}+#2#{} Multi,",
                    "{C:white,X:mult}X#3#{} Multi o {C:gold}$#4#{}"
                }
            }
        },
        Joker={
            -- Mod jokers
            j_fg_change_of_pace = {
                name = 'Cámbio de paso',
                text = {
                    "Tras ser vendida, cambia los {C:red}comodines{} generados",
                    "a sus formas {C:purple}alternativas{}"
                }
            },
            j_fg_change_of_pace_alt = {
                name = '¿Cámbio de paso?',
                text = {
                    "Tras ser vendido, cambia los {C:purple}comidines{} generados",
                    "a sus formas {C:red}originales{}"
                }
            },
            j_fg_flipped_script = {
                name = 'Guión volteado',
                text = {
                    "All ser vendido, cambia todos {C:attention}comodines{}",
                    "{C:purple}alternativos{} a sus formas {C:red}originales{}"
                }
            },
            j_fg_flipped_script_alt = {
                name = 'Guión volteado',
                text = {
                    "All ser vendido, cambia todos {C:attention}comodines{}",
                    "{C:red}originales{} a sus formas {C:purple}alternativas{}"
                }
            },
            j_fg_script_flipped = {
                name = 'Volteado Guión',
                text = {
                    "When sold, changes the edition of",
                    "all other jokers to the opposite edition."
                }
            },
			j_fg_delinquent = {
			    name = 'Delincuente',
			    text = {
                    "{C:attention}Reemplaza{} los consumibles en posesión",
                    "con cartas de{C:purple}aberración{}",
                    "cuando se omite una ciega",
                },
            },
            j_fg_delinquentalt = {
			    name = '¿Delincuente?',
			    text = {
                    "{C:attention}RellenaAgu{} ranuras de consumible",
                    "vacias con cartas de {C:purple}aberración{}",
                    "cuando se derrota una ciega",
                },
            },						
            j_fg_concert = {
                name = 'Entrada de concierto',
                text = {
                     "Cada {C:money}$#1#{} gastado {C:inactive}(#2#){} crea",
                     "una carta de {C:purple}aberración{}",
					 "{C:inactive}(Debe haber espacio)",
                }
            },
			 j_fg_concertalt = {
                name = '¿Entrada de concierto?',
                text = {
                     "Crea una carta de {C:purple}aberración{}",
                     "cuando se canjea un {C:attention}cupón{}",
					 "{C:inactive}(Debe haber espacio)",
                }
            },
			j_fg_disc={
                name= "Comodín disco",
                text={
                    "Los {C:attention}Comodines {C:red}originales",
                    "dan cada uno {C:chips}+#1#{} Fichas",
					 "{s:0.8} Disco comodín incluido",
                },
            },
            j_fg_discalt = {
                name = "¿Comodín disco?",
                text = {
                    "Las cartas con mejoras {C:red}originales{C:attention}",
                    "puntuan {C:chips}+#1#{} fichas",
                },
            },
			j_fg_orchestral={
                name="Comodín orquestral",
                text={
                    "Los {C:attention}Comodines {C:purple}alternativos",
                    "dan cada uno {C:mult}+#1#{} Multi",
					"{s:0.8}Comodín orquestral incluido",
                },
            },
            j_fg_orchestralalt = {
                name = "¿Comodín orquestral?",
                text = {
                    "Las cartas con mejoras {C:purple}alternativas{C:attention}",
                    "dan {C:mult}+#1#{} Multi",
                },
            },
			j_fg_conductor={
                name="Director",
                text={
                    "Crea #1# carta de{C:purple}aberración{} si",
                    "la mano de poker jugada solo",
                    "contiene {C:attention}figuras{}",
                    "{C:inactive}(Debe haber espacio)",
                },
            },
			j_fg_conductoralt={
                name="¿Director?",
                text={
                    "Crea #1# carta de {C:attention}figura{} por cada",
                    "carta de {C:purple}aberración{} usada",
                },
            },
            j_fg_oscillator = {
                name = "Oscilador",
                text = {
                    "Gama {C:chips}+#2#{} Fichas cuando se {C:attention}selecciona{} una ciega",
                    "{C:chips}-#3#{} Fichas cuando se {C:attention}derrota{} una ciega",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas, no puede ser negativo){}",
                    "{C:inactive}(Se mantiene el valor al {C:purple}alternar{C:inactive} esta carta)"
                }
            },
            j_fg_oscillator_alt = {
                name = "¿Oscilador?",
                text = {
                    "Gama {C:chips}+#3#{} Fichas cuando se {C:attention}derrota{} una ciega",
                    "{C:chips}-#2#{} Fichas cuando se {C:attention}selecciona{} una ciega",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas, no puede ser negativo){}",
                    "{C:inactive}(Se mantiene el valor al {C:red}alternar{C:inactive} esta carta)"
                }
            },
            j_fg_mango={
			    name="Mango",
				text={
				    "{C:mult}+#1#{} Multi,",
					"{C:mult}-#2#{} Multi por cada",
					"carta de {C:purple}aberración{} usada",
				},
			},
			j_fg_mangoalt={
			    name="¿Mango?",
				text={
				    "{C:mult}+#1#{} Multi,",
					"{C:mult}-#2#{} Multi por cada",
					"comidín {C:purple}alterno{} comprado",
				},
			},
            j_fg_kevin = {
                name = "Kevin",
                text = {
                    "{X:mult,C:white}X#1#{} Multi,",
                    "Pierde {X:mult,C:white}X#2#{} por cada",
                    "mano jugada",
                    "{C:attention}Alterna este comodín para",
                    "{C:attention}reiniciar sus valores"
                },
            },
            -- Normal jokers
            j_fg_matador = {
                name = "Torero?",
                text = {
                    "Si la habilidad de la {C:attention}ciega jefe{}",
                    " nunca es activada en esta ronda,",
                    "gana {C:money}$#1#{}",
                },
            },
            j_fg_joker = {
                name = '¿Comodín?',
                text = {
                    "Cada carta jugada",
                    "da {C:mult}+#1#{} Multi"
                }
            },
            j_fg_greedy_joker = {
                name = '¿Comodín codicioso?',
                text = {
                    "Gana {C:mult}+#1#{} multi por cada carta",
                    "con el palo de {C:diamonds}diamantes{}",
                    "Se reinicia cuando se derrota",
                    "la {C:attention}ciega jefe{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Multi)",
                }
            },
            j_fg_lusty_joker = {
                name = '¿Comodín lujurioso?',
                text = {
                    "Gana {C:mult}+#1#{} multi por cada carta",
                    "con el palo de {C:hearts}corazones{}",
                    "Se reinicia cuando se derrota",
                    "la {C:attention}ciega jefe{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Multi)",
                }
            },
            j_fg_wrathful_joker = {
                name = '¿Comodín irascible?',
                text = {
                    "Gana {C:mult}+#1#{} multi por cada carta",
                    "con el palo de {C:spades}picas{}",
                    "Se reinicia cuando se derrota",
                    "la {C:attention}ciega jefe{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Multi)",
                }
            },
            j_fg_gluttenous_joker = {
                name = "¿Comodín glotón?",
                text = {
                    "Gana {C:mult}+#1#{} multi por cada carta",
                    "con el palo de {C:clubs}tréboles{}",
                    "Se reinicia cuando se derrota",
                    "la {C:attention}ciega jefe{}",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Multi)",
                }
            },
            j_fg_jolly = {
                name = '¿Comodín contento?',
                text = {
                    "{C:red}+#1#{} Multi",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "una {C:attention}#2#",
                }
            },
            j_fg_zany = {
                name = '¿Comodín chiflado?',
                text = {
                    "{C:red}+#1#{} Multi",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "un {C:attention}#2#",
                }
            },
            j_fg_mad = {
                name = '¿Comodín demente?',
                text = {
                    "{C:red}+#1#{} Multi",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "una {C:attention}#2#",
                }
            },
            j_fg_crazy = {
                name = '¿Comodín loco?',
                text = {
                    "{C:red}+#1#{} Multi",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "una {C:attention}#2#",
                }
            },
            j_fg_droll = {
                name = '¿Comodín gracioso?',
                text = {
                    "{C:red}+#1#{} Multi",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "un {C:attention}#2#",
                }
            },
            j_fg_sly = {
                name = '¿Comodín artero?',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "una {C:attention}#2#",
                }
            },
            j_fg_wily = {
                name = '¿Comodín taimado?',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "un {C:attention}#2#",
                }
            },
            j_fg_clever = {
                name = '¿Comodín astuto?',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "una {C:attention}#2#",
                }
            },
            j_fg_devious = {
                name = '¿Comodín ladino?',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "una {C:attention}#2#",
                }
            },
            j_fg_crafty = {
                name = '¿Comodín mañoso?',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "Reactiva las cartas jugadas",
                    "{C:attention}#3#{} vez si la mano contiene",
                    "un {C:attention}#2#",
                }
            },
            j_fg_half = {
                name = '¿Medio Comodín?',
                text = {
                    "Copia la habilidad de un",
                    "comodín {C:attention}aleatorio{} y {C:attention}divide{}",
                    "por la mitad sus valores"
                }
            },
            j_fg_credit_card = {
                name = '¿Targeta de crédito?',
                text = {
                    "Puedes endeudarte {C:red}infinitamente{}",
                    "Cada {C:attention}4{} apuestas, o al ser vendida, si estáes en",
                    "deuda, destruye todos los comodines en posesión"
                }
            },
            j_fg_ceremonial = {
                name = '¿Daga ceremonial?',
                text = {
                    "Cuando se selecciona una {C:attention}ciega{},",
                    "destruye el comodín a su izquierda y",
                    "añade permanentemente {C:attention}X#2#",
                    "su valor de venta en {C:chips}Fichas",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
                }
            },
            j_fg_banner = {
                name = '¿Estandarte?',
                text = {
                    "{C:red}+#2#{} descartes",
                    "{C:chips}+#1#{} Fichas por",
                    "cada {C:attention}discard{}",
                    "restante",
                }
            },
            j_fg_marble = {
                name = '¿Comodín de mármol?',
                text = {
                    "Convierte una carta de la",
                    "mano a una {C:attention}Carta de ¿Piedra?{}",
                    "cuando se derrota a la",
                    "{C:attention}ciega jefe{}"
                }
            },
            j_fg_mystic_summit = {
                name = '¿Cumbre mística?',
                text = {
                    "{C:red}-#2#{} descartes",
                    "{C:mult}+#1#{} Multi cuando",
                    "queden {C:attention}#3#{} descartes",
                    "restantes",
                }
            },
            j_fg_loyalty_card = {
                name = '¿Tarjeta de fidelización?',
                text = {
                     "Cada {C:attention}#1#{} cartas",
                     "compradas en la {C:attention}tienda{} hacen",
                     "que el siguente sea {C:money}gratis{}",
                     "{C:inactive}(#2#)",
                }
            },
            j_fg_8_ball = {
                name = '¿Bola 8?',
                text = {
                        "Cada {C:attention}8{} jugado crea una",
                        "carta {C:tarot}Tarot{} al puntuar",
                        "{C:inactive}(Debe haber espacio)",
                },
            },
            j_fg_misprint = {
                name = '¿Error de imprenta?',
                text = {
                    ""
                }
            },
            j_fg_raised_fist = {
                name = '¿Puño en alto?',
                text = {
                    "Añade {C:attention}la mitad{} del rango",
                    "de la carta con la categoría más {C:attention}alta{}",
                    "en la mano como Multi",
                    '{C:inactive}Actualmente {C:mult}+#1#{C:inactive} multi{}'
                }
            },
            j_fg_chaos = {
                name = '¿Caos el payaso?',
                text = {
                    "El precio de {C:green}cambiar{} la tienda",
                    "aumenta cada {C:attention}2{} cambios"
                }
            },
            j_fg_fibonacci = {
                name = '¿Fibonacci?',
                text = {
                    "Reactica cada {C:attention}As{}, {C:attention}2{}, {C:attention}3{}, {C:attention}5{},",
                    "{C:attention}8{} y {C:attention}rey{} jugado {C:attention}1{} vez y mejora",
                    "permanentemente la carta al siguiente número",
                    "{C:inactive}(ej: Ás a 2, 8 a Rey, Rey a Ás){}",
                },
            },
            j_fg_scary_face = {
                name = '¿Cara aterradora?',
                text = {
                    'Gana {C:chips}+#2#{} Fichas por cada',
                    '{C:attention}figura{} que anote',
                    '{C:inactive}Actualmente {C:chips}+#1#{C:inactive} fichas{}'
                },
            },
            j_fg_gros_michel = {
                name = "¿Banano?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi",
                    "{C:green}#2# en #3#{} probabilidades de que",
                    "se destruya al final de la ronda"
                }
            },
            j_fg_even_steven = {
                name = "¿Pares?",
                text = {
                    "Gana {C:mult}+#1#{} Multi por cada",
                    "carta {C:attention}par{} anotada",
                    "{C:inactive}(Actualmente {C:mult}+#2#{C:inactive} Multi)",
                    "{C:inactive}(10, 8, 6, 4, 2){}"
                }
            },
            j_fg_odd_todd = {
                name = "¿Nones?",
                text = {
                    "Gana {C:chips}+#1#{} Fichas por cada",
                    "carta {C:attention}impar{} anotaad",
                    "{C:inactive}(Actualmente {C:chips}+#2#{C:inactive} Fichas)",
                    "{C:inactive}(A, 9, 7, 5, 3)"
                }
            },
            j_fg_scholar = {
                name = "¿Erudito?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi si la mano jugada",
                    "contiene al menos {C:attention}#2#{} Ases"
                }
            },
            j_fg_business = {
                name = "¿Tarjeta de presentación?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de mejorar",
                    "las {C:attention}figuras{} que anoten",
                    "{C:inactive}(Se aplica tras jugar las cartas){}"
                }
            },
            j_fg_supernova = {
                name = '¿Supernova?',
                text = {
                    "{C:chips}+#1#{} Fichas por cada mano de poker",
                    "jugada tantas veces como",
                    "la mano {C:attention}actual{}"
                }
            },
            j_fg_ride_the_bus = {
                name = "¿Al autobús?",
                text = {
                    "{C:mult}+#2#{} Mulit",
                    "{C:mult}-#1#{} Multi por cada",
                    "{C:attention}figura{} jugada"
                }
            },
            j_fg_space = {
                name = '¿Comodín Espacial?',
                text = {
                    "{X:mult,C:white}X#3#{} Multi",
                    "{C:green}#1# en #2#{} probabilidades de {C:attention}bajar de nivel{}",
                    "la mano de póker jugada"
                }
            },
            j_fg_abstract = {
                name = '¿Comodín abstracto?',
                text = {
                    "{C:mult}+#1#{} Multi por cada",
                    "{C:attention}comidín{} vendido",
                    "{C:inactive}(Actualmente {C:red}+#2#{C:inactive} Multi)",
                },
            },
            j_fg_egg = {
                name = '¿Huevo?',
                text = {
                    "Tiene un valor de",
                    "venta de {C:money}$#1#{}",
                    "Al ser vendido, pierde",
                    "{C:mult}#2#{} mano y {C:mult}#3#{} descarte"
                },
            },
            j_fg_ice_cream = {
                name = "¿Helado?",
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{C:chips}-#2#{} Fichas cuando",
                    "{C:attention}se selecciona{} una ciega"
                }
            },
            j_fg_blue_joker = {
                name = '¿Comodín azul?',
                text = {
                    "{C:chips}+#1#{} Fichas por cada carta",
                    "en el {C:attention}mazo completo{}",
                    "{C:inactive}(Actualmente {C:chips}+#2#{C:inactive} Fichas){}"
                }
            },
            j_fg_constellation = {
                name = '¿Constelación?',
                text = {
                    "Gana {C:mult}+#2#{} Multi por cada",
                    "carta de {C:attention}planeta{} usada",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Multi)"
                }
            },
            j_fg_faceless = {
                name = "¿Comodín sin cara?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi si la mano jugada",
                    "no contiene {C:attention}figuras{}"
                }
            },
            j_fg_splash = {
                name = "Salpicadura?",
                text = {
                    "Rehabilita las {C:attention}cartas jugadas{}",
                }
            },
            j_fg_cavendish = {
                name = "Cavendish?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi",
                    "{C:green}#3# in #4#{} probabilidades de perder",
                    "{C:white,X:mult}X#2#{} Multi al final de la ronda",
                    "Se autodestruye cuando llega a {C:white,X:mult}X1{} Multi"
                }
            },
            j_fg_card_sharp = {
                name = "¿Fullero?",
                text = {
                    ""
                }
            },
            j_fg_red_card = {
                name = "¿Tarjeta roja?",
                text = {
                    "Gana {C:mult}+#2#{} Multi cuando se",
                    "{C:attention}salta{} una ciega",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Multi)"
                }
            },
            j_fg_hologram = {
                name = '¿Holograma?',
                text = {
                    "Gana {X:mult,C:white}X#2#{} Multi por cada",
                    "carta {C:attention}destruida{}",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#1#{}{C:inactive} Multi)"
                }
            },
            j_fg_baron = {
                name = "¿Barón?",
                text = {
                    "Gana {C:white,X:mult}X#2#{} Multi por",
                    "cada {C:attention}rey{} en la mano",
                    "al {C:attention}final de la ronda",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#1#{}{C:inactive} Multi)"
                }
            },
            j_fg_vampire = {
                name = '¿Vampiro?',
                text = {
                    "Este comodín gana {X:mult,C:white}X#2#{} Multi por",
                    "cada que puntue con una {C:attention}edición{} y",
                    "elimina la {C:attention}edición{} de la carta",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#1#{C:inactive} Multi)",
                    "{C:inactive,s:0.8}(Se aplica tras jugar las cartas){}"
                }
            },
            j_fg_square = {
                name = '¿Comodín cuadrado?',
                text = {
                    "{X:edition,C:mult}+#1#^#2# = #4#{} Multi",
                    "Aumenta la {C:attention}base{} en {X:edition,C:mult}+#3#{} si la",
                    "mano jugada es un {C:attention}Póker{}"
                }
            },
            j_fg_riff_raff = {
                name = "¿Gentuza?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de crear un comodín",
                    "{C:green}Inusual{} cuando se {C:attention}selecciona{} una ciega",
                    "{C:green}#1# en #3#{} probabilidades de crear un comodín",
                    "{C:red}Raro{} cuando se {C:attention}selecciona{} una ciega"
                }
            },
            j_fg_cloud_9 = {
                name = "¿Nube 9?",
                text = {
                    "Gana {C:gold}$#1#{} por cada",
                    "{C:attention}9{} anotado"
                }
            },
            j_fg_rocket = {
                name = "¿Cohete?",
                text = {
                    "Gana {C:gold}$#1#{} al {C:attention}final de la ronda{}",
                    "El pago disminuye en {C:gold}$#2#{}",
                    "cuando {C:attention}se salta una ciega{}"
                }
            },
            j_fg_gift = {
                name = "¿Carta de regalo?",
                text = {
                    "Gana {C:attention}un cuarto{C:inactive} (redondeado al alza) {}del valor de",
                    "venta de todos los comodines y consumibles",
                    "{C:attention} en posesión{} al {C:attention}final de la ronda{}",
                    "{C:inactive}(Actualmente {C:gold}$#1#{C:inactive})"
                }
            },
            j_fg_erosion = {
                name = "¿Erosión?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi si el {C:attention}mazo",
                    "{C:attention}completo{} tiene menos",
                    "de {C:attention}#2#{} cartas"
                }
            },
            j_fg_lucky_cat = {
                name = "¿Gato de la suerte?",
                text = {
                    "Por cada carta de la {C:inactive}¿{C:attention}Suerte{C:inactive}?{}",
                    "{C:green}1 en 4{} probabilidades de añadir {C:chips}+#1#{} Fichas,",
                    "{C:mult}+#2#{} Multi y {C:money}+$#3#{} dependiendo de la versión"
                }
            },
            j_fg_duo = {
                name = '¿El dúo?',
                text = {
                    "Gana {X:mult,C:white}X#1#{} Multi si",
                    "la mano contiene",
                    "una {C:attention}#2#",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#3#{}{C:inactive} Multi)",
               }
            },
            j_fg_trio = {
                name = '¿El trío?',
                text = {
                    "Gana {X:mult,C:white}X#1#{} Multi si",
                    "la mano contiene",
                    "un {C:attention}#2#",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#3#{}{C:inactive} Multi)",
               }
            },
            j_fg_family = {
                name = '¿La familia?',
                text = {
                    "Gana {X:mult,C:white}X#1#{} Multi si",
                    "la mano contiene",
                    "un {C:attention}#2#",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#3#{}{C:inactive} Multi)",
               }
            },
            j_fg_order = {
                name = '¿La orden?',
                text = {
                    "Gana {X:mult,C:white}X#1#{} Multi si",
                    "la mano contiene",
                    "una {C:attention}#2#",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#3#{}{C:inactive} Multi)",
               }
            },
            j_fg_tribe = {
                name = "¿La tribu?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi si la mano",
                    "de Póker consiste de 5 {C:attention}reinas",
                    "todas del mismo {C:attention}palo{}"
                }
            },
            j_fg_bull = {
                name = "¿Toro?",
                text = {
                    "Gana {C:mult}+#2#{} Fichas, {C:red}-$#3#{}",
                    "al {C:attention}final de la ronda{}",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)"
                }
            },
            j_fg_trading = {
                name = '¿Carta de colección?',
                text = {
                    "Gana {C:gold}$#1#{} por cada",
                    "carta destruida"
                }
            },
            j_fg_popcorn = {
                name = "¿Palomitas?",
                text = {
                    "{C:mult}+#1#{} Multi",
                    "{C:mult}-#2#{} por cada",
                    "mano jugada"
                }
            },
            j_fg_ramen = {
                name = "¿Ramen?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi",
                    "Pierde {C:white,X:mult}X#2#{} Multi por",
                    "cada carta {C:attention}jugada{}",
                    "{C:inactive}(Aunque no anoten){}"
                }
            },
            j_fg_walkie_talkie = {
                name = "¿Walkie-talkie?",
                text = {
                    "Gana {C:chips}+#3#{} Fichas y {C:mult}+#4#{} Multi por",
                    "cada {C:attention}10{} or {C:attention}4{} anotado",
                    "{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas y {C:mult}+#2#{C:inactive} Multi)"
                }
            },
            j_fg_selzer = {
                name = "¿Agua con gas?",
                text = {
                    "Reactiva las cartas jugadas",
                    "{C:attention}#1#{} vez(es) durante las",
                    "siguientes {C:attention}#2#{} mano(s)"
                }
            },
            j_fg_smiley = {
                name = "¿Cara sonriente?",
                text = {
                    "Gana {C:mult}+#2#{} Multi por",
                    "cada {C:attention}figura{} que anote",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Multi)"
                }
            },
            j_fg_trouses = {},
            j_fg_ancient = {
                name = "¿Comodín antiguo?",
                text = {
                    "Gana {C:white,X:mult}X#2#{} Multi cuando",
                    "todas las cartas jugadas son",
                    "del palo de {V:#1#}#3#{}",
                    "El palo cambia cada ronda",
                    "{C:inactive}(Actualmente{C:white,X:mult}#1#{C:inactive} Multi)",
                }
            },
            j_fg_campfire = {
                name = "¿Fogata?",
                text = {
                    "Gana {C:white,X:mult}X#2#{} Multi por cada carta {C:attention}descartada{}",
                    "Pierde {C:white,X:mult}X#3#{} Multi cuando se derrota a la {C:attention}ciega jefe{}",
                    "{C:inactive}(Actualmente {C:white,X:mult}X#1#{C:inactive} Multi, no puede bajar más de {C:white,X:mult}X0.75{C:inactive} Multi)"
                }
            },
            j_fg_mr_bones = {
                name = '¿Sr. Huesos?',
                text = {
                    "Tras jugar la {C:attention}última mano{} {C:blue}+#4#{} manos y {C:red}+#5#{} descartes si las",
                    "fichas obtenidas son al menos {C:attention}#3#%{} de lo requerido.",
                    "{C:green}#1# en #2#{} probabilidades de que esta carta",
                    "sea {C:red}destruida{} al ser activada"
                }
            },
            j_fg_acrobat = {
                name = "¿Acróbata?",
                text = {
                    "Gana {C:white,X:mult}X#2#{} Multi cuando se derrota",
                    "una ciega en la {C:attention}primera{} mano",
                    "{C:inactive}(Actualmente {C:white,X:mult}X#1#{C:inactive} Multi)"
                }
            },
            j_fg_throwback = {
                name = "¿Retro?",
                text = {
                    "{C:white,X:mult}X#2#{} Multi por cada",
                    "{C:attention}tienda{} omitida en esta partida",
                    "{C:inactive}(Actualmente {C:white,X:mult}X#1#{C:inactive} Multi){}"
                }
            },
            j_fg_hanging_chad = {
                name = "¿Papel perforado?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de añadir una",
                    "{C:attention}mejora{} aleatoria a las cartas jugadas",
                    "Si ya están mejoradas, {C:green}#3# en #4#{}",
                    "probabilidades de añadir un {C:attention}sello{} aleatorio",
                    "Si ya tienen un sello, {C:green}#5# en #6#{}",
                    "probabilidades de añadir una {C:attention}edición{} aleatoria",
                    "{C:inactive,s:0.8}(Se aplica tras jugar las cartas){}"
                }
            },
			 j_fg_rough_gem = {
                name = "¿Gema en bruto?",
                text = {
                    "Si la mano de poker contiene un {C:attention}#1#{}",
                    "con solo cartas del palo de {C:diamonds}diamantes{},",
                    "gana {C:money}$#2#{} al puntuar"
                },
			},
            j_fg_juggler = {
                name = "¿Malabarista?",
                text = {
                    "{C:attention}+#1#{} ranura de consumible"
                }
            },
            j_fg_drunkard = {
                name="¿Borracho?",
                text={
                    "{C:red}#1#{} descartes, {C:blue}+#2#{} manos",
                    "en cada ronda",
                },
            },
            j_fg_swashbuckler = {
                name = "¿Aventurero?",
                text = {
                    "Añade el {C:attention}valor de venta{} de este comodín al",
                    "resto de comodines que poseen al ser {C:attention}vendido{}",
                    "{C:inactive}(Actualmente {C:gold}+#1#{C:inactive} valor de venta)"
                }
            },
            j_fg_troubadour = {
                name = "¿Trovador?",
                text = {
                    "{C:attention}#1#{} tamaño de mano,",
                    "{C:blue}+#2#{} manos cada ronda",
                }
            },
			j_fg_stone={
                name="¿Comodín de Piedra?",
                text={
                    "{C:attention}Dobla{} el aumento de {C:chips}Fichas{}",
                    "de las {C:attention}Cartas de ¿Piedra?{}",
                },
			},
			j_fg_bloodstone ={
                name = "¿Heliotropo?",
                text = {
                    "Si la mano de poker contiene un {C:attention}#1#{}",
                    "con solo cartas del palo de {C:hearts}corazones{},",
                    "gana {X:mult,C:white}X#2#{} Multi",
					"{C:inactive}(Actualmente {X:mult,C:white}X#3#{}{C:inactive} Multi)",
                },
			},
			j_fg_arrowhead = {
                name = "¿Punta de flecha?",
                text = {
                    "Si la mano de poker contiene un {C:attention}#1#{}",
                    "con solo cartas del palo de {C:spades}picas{},",
                    "gana {C:chips}+#2#{} Fichas",
                    "{C:inactive}(Actualmente {C:chips}+#3#{}{C:inactive} Fichas)",
                },
			},
			j_fg_onyx_agate ={
                name = "¿Ágata onix?",
                text = {
                    "Si la mano de poker contiene un {C:attention}#1#{}",
                    "con solo cartas del palo de {C:clubs}tréboles{},",
                    "gana {C:mult}+#2#{} Multi",
                    "{C:inactive}(Actualmente {C:mult}+#3#{}{C:inactive} Multi)",
                },
			},
            j_fg_flower_pot = {
                name = "¿Florero?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi si la {C:attention}mano de póker{} contiene",
                    "{C:spades}Picas{}, {C:hearts}Corazones{}, {C:clubs}Tréboles{},",
                    "{C:diamonds}Diamantes{}, {C:attention}figuras{} y {C:attention}números{}"
                }
            },
            j_fg_seeing_double = {
                name = "¿Visión doble?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi si las cartas que anotan son",
                    "del palo de {C:clubs}tréboles{} y cualquier otro {C:attention}palo{}",
                    "Convierte todas las cartas al palo de",
                    "{C:clubs}tréboles {}tras anotar"
                }
            },
            j_fg_hit_the_road = {
                name = "¿Al camino?",
                text = {
                    "Gana {C:white,X:mult}X#2#{} Multi",
                    "por cada {C:attention}sota{} descartada",
                    "{C:inactive}(Actualmente {C:white,X:mult}X#1#{C:inactive} MultI)"
                }
            },
            j_fg_stuntman = {
                name = '¿Doble de riesgo?',
                text = {
                    "{C:chips}+#1#{} Fichas",
                    "{C:red,E:1}Obligatoriamente{} elimina todos los descartes",
                    "y reduce el tamaño máximo de la mano a {C:attention}#2#{}"
                }
            },
            j_fg_invisible = {
                name = "¿Comodín Invisible?",
                text = {
                    "Al ser vendido, elimina un {C:attention}Comodín{} aleatorio",
                    "Crea una {C:attention}¿Memoria invisible?{}",
                    "con el comodín eliminado",
                    "{C:inactive}(No puede copiar comodines eternos){}",
                }
            },
            j_fg_brainstorm = {
                name = '¿Lluvia de ideas?',
                text = {
                    "Copia la habilidad del {C:attention}#1#º{} comodín de más a la izquierda",
                    "Copia el comodín siguiente al {C:attention}final de la ronda{}",
                    "{C:inactive}(No se puede copiar a sí mismo, vuelve a el 1º{}",
                    "{C:inactive}comodín al iterar por todos los comodines){}"
                }
            },
            j_fg_shoot_the_moon = {
                name = '¿Disparo a la luna?',
                text = {
                    "Gana {C:mult}+#2#{} Multi por cada {C:attention}figura{} en",
                    "la mano al {C:attention}final de la ronda{}",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Multi){}"
                }
            },
            j_fg_drivers_license = {
                name = "¿Permiso de conducir?",
                text = {
                    "{C:white,X:mult}X#1#{} Multi si al menos",
                    "{C:attention}la mitad{C:inactive} ({C:attention}#2#{C:inactive}/#3#){} de tu {C:attention}mazo entero{}",
                    "contiene cartas {C:attention}mejoradas{}",
                }
            },
            j_fg_oops = {
                name = "¿Solo seises?",
                text = {
                    "Cuando ocurra una {C:green,E:1}probabilidad{},",
                    "{X:green,C:white,E:1}X#4#{} el {C:green,E:1}numerador{} y",
                    "{X:green,C:white,E:1}X#3#{} thel {C:green,E:1}denominador",
                    "{C:inactive}(Actualmente probabilidad de {C:green,E:1}X#2#/#1#{C:inactive})"
                }
            },
            j_fg_bootstraps = {
                name = "¿Botas?",
                text = {
                    "Gana {C:mult}+#2#{} Multi, {C:red}-$#3#{}",
                    "al {C:attention}final de la ronda{}",
                    "{C:inactive}(Actualmente {C:mult}+#1#{C:inactive} Multi)"
                }
            },
            j_fg_invisible_memory = {
                name = "{C:dark_edition,E:1}¿Memoria invisible?{}",
                text = {
                    "La memoria de un {C:attention}Comodín Invisible{}",
                    "Después de {C:attention}#1# ronda(s){}, se {C:red,E:2}autodestruye{} y",
                    "crea {C:attention}#2#{} copias {C:dark_edition}negativas{} de {C:attention}#3#{}",
                }
            },
            -- Legendaries
            j_fg_caino = {
                name = "¿Canio?",
                text = {
                    "Gana {X:mult,C:white}X#2#{} Multi por",
                    "cada figura {C:attention}descartada{}",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#1#{C:inactive} Multi)"
                }
            },
            j_fg_triboulet = {
                name = "¿Triboulet?",
                text = {
                    "Gana {X:mult,C:white}X#2#{} Multi por",
                    "cada figura {C:attention}anotada{}",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#1#{C:inactive} Multi)"
                }
            },
            j_fg_yorick = {
                name = "¿Yorick?",
                text = {
                    "Gana {X:mult,C:white}X#2#{} Multi",
                    "cada {C:attention}#3# {C:inactive}(#4#){} manos",
                    "{C:inactive}(Actualmente {X:mult,C:white}X#1#{C:inactive} Multi)"
                }
            },
            j_fg_chicot = {
                name = "¿Chicot?",
                text = {
                    "{C:red}+#2#{} descarte cuando",
                    "se derrota a la {C:attention}ciega jefe{}",
                    "{C:inactive}(Actualmente {C:red}+#1#{C:inactive} descartes)"
                }
            },
            j_fg_perkeo = {
                name = "¿Perkeo?",
                text = {
                    "Crea {C:attention}#1#{} copia {C:inactive}perecedera{} y {C:dark_edition}negativa{}",
                    "de un {C:attention}comodín{} no {C:dark_edition}negativo",
                    "cuando se derrota a la {C:attention}ciega jefe{}"
                }
            },
            -- Collectives
            j_fg_deathmodereal = {
                name = 'deathmodereal',
                text = {
                    "Él {X:black,C:white}mola {}(más o menos)",
                    '{X:mult,C:white}X#1#{} multi.'
                },
            },
            j_fg_deathmoderealalt = {
                name = 'deathmodereal',
                text = {
                    "Él {X:white,C:black}mola{}",
                    'Cada carta jugada da',
                    '{X:mult,C:white}X#1#{} multi'
               }
            },
            j_fg_jogla = {
                name = 'Jogla',
                text = {
                    "Crea {C:attention}#1#{} copias {C:dark_edition}Negativa{} del consumible",
                    "que poseas de más a la {C:attention}izquierda{}",
                    "al salir de la{C:attention} tienda{}",
                    "{C:inactive}(Actualmente copiando {C:attention}#2#{C:inactive})",
                    "{C:inactive,s:0.7}\"NO soy un mago\""
                },
            },
            j_fg_jogla_alt = {
                name = 'Joglalt',
                text = {
                    "Aumenta el tamaño de la mano en {C:attention}#1#{}",
                    "cuando se derrota a la {C:attention}ciega jefe{}",
                    "{C:inactive}(Actualmente {C:attention}+#2#{C:inactive} tamaño de mano)"
                }
            },
            j_fg_jenker = {
                name = 'Jenku',
                text = {
                    "Reactiva cada {C:attention}comodín{}",
                    "por cada dos {C:attention}ciegas jefes{} derrotadas.",
                    "empezando en {C:mult}1{}",
					"{C:inactive}(Actualmente {C:mult}#1#{}{C:inactive} veces)",
                    "{C:inactive,s:0.7}\"Probablemente haya causado la mayor cantidad de crasheos.\""
                }
            },
            j_fg_goldenleaf = {
                name = "HojaDorada",
                text = {
                    "Las cartas {C:inactive}¿{C:gold}Doradas{C:inactive}?{} dan",
                    "{X:mult,C:white}X#1#{} Multi al anotar",
                    "{C:inactive}\"Lo pillas, porque soy \"Hoja\"Dorada\""
                }
            },
            j_fg_goldenleafalt = {
                name = "OtoñoPlateado",
                text = {
                    "Aumenta la cantidad de manos en {C:attention}#1#{}",
                    "cuando se derrota a {C:attention}ciega jefe{}",
                    "{C:inactive}(Actualmente {C:attention}+#2#{C:inactive} manos)"
                }
            },
            j_fg_samuran = {
                name = 'Samuran',
                text = {
                    "{C:green}#1# en #2#{} probabilidades de crear una copia {C:dark_edition}negativa{}",
                    "de un consumible {C:red}no negativo{} cuando se usa un consumible"
                }
            },
            j_fg_samuran_alt = {
                name = '¿Samuran?',
                text = {
                    "Todos los consumibles en la tienda son {C:dark_edition}negativos{}",
                    "{C:attention}Aumenta{} los precios de la tienda por cada",
                    "consumible {C:dark_edition}negativo{} en posesión"
                }
            }
        },
        Other={
            fg_unchangeable = {
                name = "Incambiable",
                label = "Incambiable",
                text = {
                    "No puede ser alternada"
                }
            },
            fg_alternate_mark = {
                name = "Alternativa",
                label = "Alternativa",
                text = {
                    "Esta es una carta",
                    "{C:purple}alternativa{}"
                }
            },
            p_fg_aberration1 = {
                name = 'Paquete melódico',
                text = { 
                    "Elige {C:attention}#1#{} de hasta ",
                    "{C:attention}#2#{} cartas de {C:purple}aberration{} para",
                    "usar de inmediato."
                }
            },
            p_fg_aberration2 = {
                name = 'Paquete melódico',
                text = { 
                    "Elige {C:attention}#1#{} de hasta ",
                    "{C:attention}#2#{} cartas de {C:purple}aberration{} para",
                    "usar de inmediato."
                }
            },
            p_fg_aberration3 = {
                name = 'Paquete melódico jumbo',
                text = {
                    "Elige {C:attention}#1#{} de hasta ",
                    "{C:attention}#2#{} cartas de {C:purple}aberration{} para",
                    "usar de inmediato."
                },
            },
            p_fg_aberration4 = {
                name = 'Mega paquete melódico',
                text = {
                    "Elige {C:attention}#1#{} de hasta ",
                    "{C:attention}#2#{} cartas de {C:purple}aberration{} para",
                    "usar de inmediato."
                },
            },
            -- Seals
            fg_gold_seal = {
                name = 'Sello ¿De oro?',
                text = {
                    "{C:red}-$#2#{} la primera vez que se juega esta carta",
                    "{C:money}+$#1#{} la segunda vez que se juega esta carta",
                    "Repetir este ciclo tras la segunda jugada"
                }
            },
            fg_red_seal = {
                name = 'Sello ¿Rojo?',
                text = {
                    "Reactiva esta carta {C:attention}#1#{} veces",
                    "Disminuye en {C:attention}#2#{} al ser jugada",
                    "Quita el sello al llegar a {C:attention}0{}"
                },
            },
            fg_blue_seal = {
                name = 'Sello ¿Azul?',
                text = {
                "Convierte todas las cartas de planeta",
                "en la carta de {C:planet}Planeta{} de la",
                "última {C:attention}majo de poker{} jugada",
                },
            },
            fg_purple_seal = {
                name = 'Sello ¿Morado?',
                text = {
                "Llena todas las ranuras de consumibles",
                "vacias con cartas de {C:purple}Tarot{} aleatorias",
                "cuando se {C:attention}descartada{}"
                },
            },
            -- GIGA COMPAT
            fg__c_giga_red_plus_seal = {
                name = 'Sello ¿Rojo+?',
                text = {
                    "Reactiva esta carta {C:attention}#1#{} veces",
                    "Esta cantidad disminuye en {C:attention}#2#{} cada {C:attention}#4#{} veces jugada",
                    "{C:inactive}(Empeora el sello cuando llega a {C:attention}0{C:inactive}){}",
                    "{C:inactive}(#3# jugadas restantes){}",
                },
            },
            fg__c_giga_red_plus_plus_seal = {
                name = 'Sello ¿Rojo++?',
                text = {
                    "Reactiva esta carta {C:attention}#1#{} veces",
                    "Esta cantidad disminuye en {C:attention}#2#{} cada {C:attention}#4#{} veces jugada",
                    "{C:inactive}(Empeora el sello cuando llega a {C:attention}0{C:inactive}){}",
                    "{C:inactive}(#3# jugadas restantes){}",
                },
            },
        },
        Planet={},
        Spectral={
            c_fg_soul = {
                name = "¿El alma?",
                text = {
                    "Crea un",
                    "comodín {C:gold,E:1}Colectivo{}",
                    "{C:inactive}(Debe haber espacio){}"
                }
            }
        },
        Stake={},
        Tag={},
        Tarot={
            c_fg_chariot = {
                name = "¿El carro?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas de {C:attention}¿Acero?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_death = {
                name = "¿La muerte?",
                text = {
                    "Selecciona hasta {C:attention}#1#{} cartas",
                    "Convierte todas las cartas en la de {C:attention}más a la derecha{}",
                    "{C:inactive}(Solo copia el {C:attention}palo{C:inactive} y el {C:attention}número{C:inactive}){}",
                    "{C:inactive}(Arrastra para reorganizar){}"
                }
            },
            c_fg_devil = {
                name = "¿El diablo?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas de {C:attention}¿Oro?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_emperor = {
                name = "¿El emperador?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de",
                    "crear un {C:legendary}alma{}"
                }
            },
            c_fg_empress = {
                name = "¿La emperatriz?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas de {C:attention}¿Multi?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_fool = {
                name = "¿El loco?",
                text = {
                    "Aleatoriamente crea {C:attention}#1#{} carta de",
                    "{C:tarot}Tarot{} or de {C:planet}Planet{}",
                    "{C:inactive}({C:tarot}¿El loco?{C:inactive} excluded)"
                }
            },
            c_fg_hanged_man = {
                name = "¿El colgao?",
                text = {
                    "Destruye {C:attention}#1#{} cartas",
                    "aleatorias en la mano"
                }
            },
            c_fg_hermit = {
                name = "¿El ermitaño?",
                text = {
                    "Mejora {C:attention}#1#{} carta seleccionada",
                    "con una mejora {C:attention}aleatoria{}",
                    "{C:attention}Divide a la mitad{} el dinero",
                    "{C:inactive}(Máximo de {C:gold}$#2#{C:inactive})"
                }
            },
            c_fg_hierophant = {
                name = "¿El hierofante?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas {C:attention}¿Bonus?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_high_priestess = {
                name = "¿La sacerdotisa?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de",
                    "crear un {C:legendary}agujero negro{}"
                }
            },
            c_fg_judgement = {
                name = "¿El juicio?",
                text = {
                    "Destruye el comodín seleccionado",
                    "{C:green}#1# en #2#{} probabilidades de crear hasta {C:attention}#3#{}",
                    "comodines con una rareza {C:attention}inferior{}",
                    "Si no, crea hasta {C:attention}#3#{} comodines",
                    "con una rareza {C:attention}superior{}",
                    "{C:inactive}(No puede crear comodines legendarios)"
                }
            },
            c_fg_justice = {
                name = "¿La justicia?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas de {C:attention}¿Vidrio?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_lovers = {
                name = "¿Los enamorados?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas de {C:attention}¿Versátil?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_magician = {
                name = "¿El mago?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas de {C:attention}¿De la suerte?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_moon = {
                name = "¿La luna?",
                text = {
                    "Selecciona {C:attention}#1#{} cartas",
                    "para convertirlas en {C:clubs}tréboles",
                    "Convierte el resto de la {C:attention}mano{}",
                    "en {C:diamonds}Diamantes{}"
                }
            },
            c_fg_strength = {
                name = "¿La fuerza?",
                text = {
                    {
                        "Selecciona {C:attention}2{} cartas",
                        "Aumenta la categoría de",
                        "la carta {C:attention}izquierda{} en {C:attention}#1#{}",
                        "Aumenta la categoría de",
                        "la carta {C:attention}derecha{} en {C:attention}#1#{}",
                    },
                }
            },
            c_fg_star = {
                name = "¿La estrella?",
                text = {
                    "Selecciona {C:attention}#1#{} cartas",
                    "para convertirlas en {C:diamonds}diamantes",
                    "Convierte el resto de la {C:attention}mano{}",
                    "en {C:clubs}tréboles{}"
                }
            },
            c_fg_sun = {
                name = "¿El sol?",
                text = {
                    "Selecciona {C:attention}#1#{} carta",
                    "para convertirlas en {C:hearts}corazones",
                    "Convierte el resto de la {C:attention}mano{}",
                    "en {C:spades}picas{}"
                }
            },
            c_fg_temperance = {
                name = "¿La templanza?",
                text = {
                    "Da el {C:attention}doble{} del valor total de venta",
                    "de {C:attention}todos{} los consumibles en posesión",
                    "{C:inactive}(Máximo de {C:gold}$#2#{C:inactive})",
                    "{C:inactive}(Actualmente {C:gold}$#1#{C:inactive})"
                }
            },
            c_fg_tower = {
                name = "¿La torre?",
                text = {
                    "Mejora {C:attention}#1#{} cartas seleccionadas",
                    "a cartas de {C:attention}¿Piedra?",
                    "Mejora el resto de la {C:attention}mano{}",
                    "a una mejora {C:attention}aleatoria",
                }
            },
            c_fg_wheel_of_fortune = {
                name = "¿La rueda de la fortuna?",
                text = {
                    "{C:green}#1# en #2#{} probabilidades de",
                    "añadir {C:dark_edition}negativo{} a",
                    "un {C:attention}Comodín{} aleatorio"
                }
            },
            c_fg_world = {
                name = "¿El mundo?",
                text = {
                    "Selecciona {C:attention}#1#{} cartas",
                    "para convertirlas en {C:spades}picas",
                    "Convierte el resto de la {C:attention}mano{}",
                    "en {C:hearts}corazones{}"
                }
            },
        },
        Voucher={
            v_fg_violin = {
                name = "Violín",
                text = {
                    "{C:attention}+1{} opción disponible",
                    "en los {C:purple}paquetes melódico{}"
                }
            },
            v_fg_cello = {
                name = "Violonchelo",
                text = {
                    "{C:attention}+1{} opción para elegir",
                    "en los {C:purple}paquetes melódico{}"
                }
            },
            v_fg_change_of_pace = {
                name = "Cámbio de paso",
                text = {
                    "Los comodines {C:purple}alternativos{}",
                    "aparecen {C:attention}X2{} más seguidos",
                }
            },
            v_fg_modulation = {
                name = "Modulación métrica",
                text = {
                    "Los comodines {C:purple}alternativos{}",
                    "aparecen {C:attention}X3{} más seguidos",
                }
            },
            v_fg_music_merchant = {
                name = "Mercader musical",
                text = {
                    "Las cartas de {C:purple}aberración{} pueden",
                    "aparecer en la tienda"
                }
            },
            v_fg_music_tycoon = {
                name = "Magnate musical",
                text = {
                    "Las cartas de {C:purple}aberración{} aparecen",
                    "{C:attention}X3{} veces más seguido en la tienda",
                }
            }
        },
    },
    FG = {
        config = {
            disclaimer = {
                "Este mod esta actualmente en desarollo",
                "Todo el contenido está sugeto a cambiar",
            },
            labels = {
                ['content'] = 'Contenido',
                ['ui'] = 'Interfaz',
                ['misc'] = "Misc"
            },
            extra_jokers = "Comodines adicionales",
            extra_jokers_tooltip = {
                "Hace que los comodines añadidos por Fool's Gambit",
                "que no tienen versión vanilla original no aparezcan",
                " ",
                "No se recomienda cambiar esta opción",
                "en medio de una partida",
                "{C:dark_edition}Esta opción es experimental{}"
            },
            duplicated_jokers = "Comodines duplicados",
            duplicated_jokers_tooltip = {
                "Permite que aparezcan las versiones",
                "alternativas de aquellos comodines",
                "aunque ya tengas una de sus versiones",
                "originales y vice-versa",
                " ",
                "No se recomienda cambiar esta opción",
                "en medio de una partida",
                "{C:dark_edition}Esta opción es experimental{}"
            },
            alt_sfx = "SFX alterno",
            alt_sfx_tooltip = {
                "Reemplaza los efectos de sonido de",
                "balatro con unos personalizados",
                " ",
                "{C:red}Requiere reinicio{}"
            },
            extended_tooltips = "Info adicional",
            extended_tooltips_tooltip = {
                "Muestra los efectos alternativos",
                "en la cola de información"
            },
            special_edition = "Edición especial",
            debug_mode = "Activar modo de desarollo",
            additional_title = "Mostrar título adicional",
            additional_title_tooltip = {
                "Muestra un logo, \"+Fool's Gambit\"",
                "al lado del título principal de Balatro"
            },
            misc = {
                ["?"] = "(?)",
                require_restart = "(Requiere reinicio)"
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
                lavbubl = "Lavbubl",
                poker_the_poker = "Poker The Poker",
                mina_kitsune = "Scientifically Insane",
                itscoldhere = "itscoldhere",
            },
            languages = {
                disclaimer = {
                    "Algunas traducciones pueden",
                    "estar incompletas",
                    --"*Sendién \'se vende\' por separado"
                },
                ["en-us"] = "Ingés",
                ["es_ES"] = "Español",
                ["zh-CN"] = "Chino",
                ["sn_bos"] = "Sendién*",
                ["ja"] = "Japonés",
            },
            misc = {
                page_title = "Créditos",
                title = "Fool's Gambit",
                version = "Versión",
                lead_developer = "Desarollador principal",
                code = "CÓDIGO",
                art = "ARTE",
                music = "MÚSICA",
                special_thanks = "Gracias a",
                special_thanks_misc = "Todo el mundo en mundo en el canál de FG",
                localization = "Localización",
                links = {
                    title = "Enlaces útiles",
                    github = "Repositorio de Github",
                    discord = "Discord",
                    d_thread = "Hílo del mod",
                    wiki = "Wiki del mod",
                    wiki_dev = "Wiki de desarollo",
                },
            }
        },
        language_adaptations = {
            w_joker_singular = "comodín",
            w_joker_plural = "comodines",
            w_consumable_singular = "consumible",
            w_consumeable_plural = "consumibles",
        }
    },
    misc = {
        achievement_descriptions={},
        achievement_names={},
        blind_states={},
        challenge_names={},
        collabs={},
        dictionary={
            k_fg_collective = "Colectivo",
            k_aberration = "Aberración",
            b_aberration_cards = "Cartas de Aberración",
            k_chipMult="¡Multiplicado!",
			k_plus_aberration="+1 aberración",
			k_replaced="Reemplazado!",
			k_replenished="Replenished!",
			k_card_added="+1 carta",
            k_fg_active = "¡Activo!",
            k_fg_none = "Ninguno",
        },
        high_scores={},
        labels={
            fg_common_alt = "¿Común?",
            fg_uncommon_alt = "¿Inusual?",
            fg_rare_alt = "¿Rara?",
            fg_legendary_alt = "¿Legendaria?",
            fg_collective = "Colectiva",
            fg_collective_alt = "¿Colectiva?",
            fg_unchangeable = "Incambiable",
            fg_alternate_mark = "Alternativa",
            -- Seals
            fg_red_seal = 'Sello ¿Rojo?',
            fg_gold_seal = 'Sello ¿De oro?',
            fg_blue_seal = 'Sello ¿Azul?',
            fg_purple_seal = 'Sello ¿Morado?',
            -- GIGA
            fg__c_giga_red_plus_seal = 'Sello ¿Rojo+?',
            fg__c_giga_red_plus_plus_seal = 'Sello ¿Rojo++?'
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