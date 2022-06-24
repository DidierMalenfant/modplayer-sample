stds.didiermalenfant_pdutility = {
    read_globals = {
        enum = {},
        math = {
            -- This will be overidden for the math.lua file but here we don't want
            -- to make the entire 'math' global read-write in other pdutility files.
            read_only = true,
            fields = {
                clamp = {},
                ring = {},
                ring_int = {},
                approach = {},
                infinite_approach = {},
                round = {},
                sign = {},
            }
        },
        pdutility = {
            fields = {
                animation = {
                    fields = {
                        sequence = {
                            fields = {
                                __index = {},
                                super = { 
                                    fields = {
                                        init = {},
                                    }
                                },
                                new = {},
                                init = {},
                                update = {},
                                print = {},
                                clear = {},
                                from = {},
                                to = {},
                                set = {},
                                again = {},
                                sleep = {},
                                loop = {},
                                mirror = {},
                                newEasing = {},
                                getEasingByIndex = {},
                                getEasingByTime = {},
                                get = {},
                                getClampedTime = {},
                                start = {},
                                stop = {},
                                pause = {},
                                restart = {},
                                isDone = {},
                                isEmpty = {},
                            }
                        }
                    }
                },
                debug = {
                    read_only = false,
                    fields = {
                        betamax = {
                            read_only = false,
                            fields = {
                                eof = {},
                                printFrame = {},
                            }
                        },                        
                        showToast = {},
                        sampler = {
                            read_only = false,
                            fields = {
                                super = { 
                                    fields = {
                                        init = {},
                                    }
                                },
                                new = {},
                                init = {},
                                reset = {},                                
                                print = {},                                
                                draw = {},
                            }
                        }
                    }
                },
                graphics = {
                    read_only = false,
                    fields = {
                        animatedImage = {
                            read_only = false,
                            fields = {
                                super = { 
                                    read_only = false,
                                    fields = {
                                        init = {},
                                    }
                                },
                                new = {},
                                init = {},
                                reset = {},                                
                                setDelay = {},
                                getDelay = {},
                                setShouldLoop = {},
                                getShouldLoop = {},
                                setPaused = {},
                                getPaused = {},
                                setFrame = {},
                                getFrame = {},
                                setFirstFrame = {},
                                setLastFrame = {},
                                __index = {},
                            }                
                        },
                        drawTiledImage = {},
                        drawQuadraticBezier = {},
                        drawCubicBezier = {},
                        getSvgPaths = {},
                        parallax = {
                            fields = {
                                super = { 
                                    fields = {
                                        init = {},
                                    }
                                },
                                new = {},
                                init = {},
                                draw = {},
                                addLayer = {},
                                scroll = {},
                            }
                        },
                    }
                },
                utils = {
                    fields = {
                        signal = {
                            fields = {
                                super = { 
                                    fields = {
                                        init = {},
                                    }
                                },
                                new = {},
                                init = {},
                                subscribe = {},
                                unsubscribe = {},
                                notify = {},
                            }
                        },
                        state = {
                            fields = {
                                super = { 
                                    fields = {
                                        init = {},
                                    }
                                },
                                new = {},
                                init = {},
                                __newindex = {},
                                __index = {},
                                subscribe = {},
                                unsubscribe = {},
                            }
                        }
                    }
                }
            }
        },
        table = {
            -- This will be overidden for the table.lua file but here we don't want
            -- to make the entire 'table' global read-write in other pdutility files.
            read_only = true,
            fields = {
                random = {},
                each = {},
                newAutotable = {},
            }
        }
    }
}

stds.didiermalenfant_modplayer = {
    read_globals = {
        modplayer = {
            fields = {
                module = {
                    fields = {
                        new = {},
                    }
                },
                player = {
                    fields = {
                        new = {},
                        load = {},
                        play = {},
                        stop = {},
                        update = {},
                    }
                },
            }
        },
    }
}

std = "lua54+playdate+didiermalenfant_pdutility+didiermalenfant_modplayer"

operators = {"+=", "-=", "*=", "/="}
