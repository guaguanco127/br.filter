{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            134.0,
            159.0,
            780.0,
            680.0
        ],
        "description": "br.filter.allpass.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/",
        "autosave": 0,
        "boxes": [
            {
                "box": {
                    "id": "obj-signature",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        218.0,
                        40.0,
                        520.0,
                        33.0
                    ],
                    "text": "br.filter.allpass.rnbo.1.1 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/"
                }
            },
            {
                "box": {
                    "bubble": 1,
                    "bubbleside": 2,
                    "id": "obj-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        38.0,
                        40.0,
                        150.0,
                        39.0
                    ],
                    "text": "Drop sample into here"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "playlist~",
                    "mode": "basic",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "signal",
                        "",
                        "dictionary"
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        38.0,
                        98.0,
                        150.0,
                        30.0
                    ],
                    "quality": "basic",
                    "saved_attribute_attributes": {
                        "candicane2": {
                            "expression": ""
                        },
                        "candicane3": {
                            "expression": ""
                        },
                        "candicane4": {
                            "expression": ""
                        },
                        "candicane5": {
                            "expression": ""
                        },
                        "candicane6": {
                            "expression": ""
                        },
                        "candicane7": {
                            "expression": ""
                        },
                        "candicane8": {
                            "expression": ""
                        }
                    }
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [
                        61.0,
                        600.0,
                        45.0,
                        45.0
                    ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [
                        "signal",
                        "signal",
                        "",
                        "float",
                        "list"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        61.0,
                        450.0,
                        48.0,
                        136.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                -70.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Out",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "id": "obj-7",
                    "inletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "in1",
                                "comment": "Left In (Signal) audio to filter"
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "in2",
                                "comment": "Right In (Signal) audio to filter"
                            },
                            {
                                "type": "event",
                                "index": 3,
                                "tag": "in3",
                                "comment": "Cutoff (Signal/Float) 20 - 20000 Hz. filtergraph~'s 2nd outlet (cutoff) fits here. Default 1000"
                            },
                            {
                                "type": "event",
                                "index": 4,
                                "tag": "in4",
                                "comment": "Q (Signal/Float) 0.1 - 40. Higher = the phase turns over a narrower band (a narrower notch when mixed with dry). filtergraph~'s 4th outlet (Q) fits here. Default 0.7071"
                            }
                        ]
                    },
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 3,
                    "outletInfo": {
                        "IOInfo": [
                            {
                                "type": "signal",
                                "index": 1,
                                "tag": "out1",
                                "comment": ""
                            },
                            {
                                "type": "signal",
                                "index": 2,
                                "tag": "out2",
                                "comment": ""
                            }
                        ]
                    },
                    "outlettype": [
                        "signal",
                        "signal",
                        "list"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "rnbo",
                        "rect": [
                            100.0,
                            100.0,
                            1300.0,
                            480.0
                        ],
                        "default_fontname": "Lato",
                        "title": "untitled",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-sin1",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        20.0,
                                        190.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in~_obj-sin1",
                                    "text": "in~ 1 @comment \"Left In (Signal) audio to filter\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sin2",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        230.0,
                                        20.0,
                                        190.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "in~",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in~_obj-sin2",
                                    "text": "in~ 2 @comment \"Right In (Signal) audio to filter\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-gen",
                                    "maxclass": "newobj",
                                    "text": "gen~ @title br.filter.allpass.1.1",
                                    "numinlets": 4,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "signal",
                                        "signal"
                                    ],
                                    "patching_rect": [
                                        30.0,
                                        260.0,
                                        1100.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "gen~",
                                    "rnbo_extra_attributes": {
                                        "exposeparams": 0
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "br.filter.allpass.1.1",
                                    "varname": "br.filter.allpass.1.1",
                                    "genpatcher": {
                                        "patcher": {
                                            "fileversion": 1,
                                            "appversion": {
                                                "major": 9,
                                                "minor": 0,
                                                "revision": 0,
                                                "architecture": "x64",
                                                "modernui": 1
                                            },
                                            "classnamespace": "dsp.gen",
                                            "rect": [
                                                100.0,
                                                100.0,
                                                600.0,
                                                450.0
                                            ],
                                            "bglocked": 0,
                                            "openinpresentation": 0,
                                            "default_fontsize": 12.0,
                                            "default_fontface": 0,
                                            "default_fontname": "Arial",
                                            "gridonopen": 1,
                                            "gridsize": [
                                                15.0,
                                                15.0
                                            ],
                                            "gridsnaponopen": 1,
                                            "objectsnaponopen": 1,
                                            "statusbarvisible": 2,
                                            "toolbarvisible": 1,
                                            "lefttoolbarpinned": 0,
                                            "toptoolbarpinned": 0,
                                            "righttoolbarpinned": 0,
                                            "bottomtoolbarpinned": 0,
                                            "toolbars_unpinned_last_save": 0,
                                            "tallnewobj": 0,
                                            "boxanimatetime": 200,
                                            "enablehscroll": 1,
                                            "enablevscroll": 1,
                                            "devicewidth": 0.0,
                                            "description": "",
                                            "digest": "",
                                            "tags": "",
                                            "style": "",
                                            "subpatcher_template": "",
                                            "assistshowspatchername": 0,
                                            "boxes": [
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-1",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            50.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 1 @comment left in",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-2",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            130.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 2 @comment right in",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-3",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            210.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 3 @comment freq Hz @default 1000 @min 0 @max 20000",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-4",
                                                        "numinlets": 0,
                                                        "numoutlets": 1,
                                                        "outlettype": [
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            290.0,
                                                            20.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "in 4 @comment Q @default 0.7071 @min 0.000001 @max 100",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "codebox",
                                                        "id": "obj-5",
                                                        "numinlets": 4,
                                                        "numoutlets": 2,
                                                        "outlettype": [
                                                            "",
                                                            ""
                                                        ],
                                                        "patching_rect": [
                                                            50.0,
                                                            80.0,
                                                            400.0,
                                                            200.0
                                                        ],
                                                        "parameter_enable": 0,
                                                        "code": "// br.filter.allpass.1.1 -- allpass: flat level, phase shift around freq\n// RBJ cookbook biquad, stereo: coefficients computed once and shared by L and R, own memory per channel.\n//   10 ms glides on every control, coefficients only on change, fast path when controls are still,\n//   each channel skipped on its own when its input and filter memory are below -140 dBFS\n// Every stored value is read first and written last, never read after a write.\n// in1 left, in2 right, in3 freq Hz, in4 Q\n// out1 left, out2 right\n\n// filter state, left\nHistory xl1(0);\nHistory xl2(0);\nHistory yl1(0);\nHistory yl2(0);\n// filter state, right\nHistory xr1(0);\nHistory xr2(0);\nHistory yr1(0);\nHistory yr2(0);\n// 10 ms smoothed controls\nHistory f_s(1000);\nHistory q_s(0.7071);\n// cached math and the values it was computed for\nHistory sr_last(0);\nHistory c10_c(0);\nHistory f_last(-1);\nHistory q_last(-1);\nHistory a0_c(1);\nHistory a1_c(0);\nHistory a2_c(0);\nHistory b1_c(0);\nHistory b2_c(0);\n// fast path: raw control inputs last seen, and whether every smoother had reached its target\nHistory settled_s(0);\nHistory r3(-1);\nHistory r4(-1);\n\n// --- constants: once, and again if the samplerate changes ---\nsr = samplerate;\nsr_new = sr != sr_last;\nc10 = c10_c;\nif (sr_new) {\n    c10 = exp(-1 / mstosamps(10));\n}\n\n// --- fast path test: identical control inputs and nothing still gliding ---\nsame = in3 == r3 && in4 == r4;\nstill = same && settled_s > 0.5 && !sr_new;\n\n// defaults = stored state, which is exactly what the fast path keeps\nt_f = 0;\nt_q = 0;\ncf = f_s;\nQ = q_s;\nsettled = settled_s;\na0 = a0_c;\na1 = a1_c;\na2 = a2_c;\nb1 = b1_c;\nb2 = b2_c;\nomega = 0;\nsn = 0;\ncs = 0;\nalpha = 0;\nn1 = 0;\n\nif (!still) {\n    // keep omega below pi regardless of the real samplerate: cf above Nyquist makes sin negative,\n    // which can drive the normalizing denominator to exactly zero -- a divide by zero -- for some Q values\n    t_f = min(max(in3, 0), sr * 0.49);\n    t_q = max(in4, 0.000001);\n\n    // 10 ms smoothing that snaps exactly onto the target once within a hair\n    cf = mix(t_f, f_s, c10);\n    cf = abs(cf - t_f) < 0.001 ? t_f : cf;\n    Q = mix(t_q, q_s, c10);\n    Q = abs(Q - t_q) < 0.000001 ? t_q : Q;\n\n    // coefficients: only when something changed -- this is the filtercoeff stage\n    if (cf != f_last || Q != q_last || sr_new) {\n        omega = cf * twopi / sr;\n        sn = sin(omega);\n        cs = cos(omega);\n        alpha = sn * 0.5 / Q;\n        n1 = 1 / (1 + alpha);\n        // allpass\n        a0 = (1 - alpha) * n1;\n        a1 = (-2 * cs) * n1;\n        a2 = 1;\n        b1 = (-2 * cs) * n1;\n        b2 = (1 - alpha) * n1;\n    }\n\n    // every smoother on target: the fast path may be used next sample\n    settled = cf == t_f && Q == t_q;\n}\n\n// --- silence skip, per channel: input and filter memory below -140 dBFS ---\n// -140 leaves room for the biggest boost, so skipped ringing stays below -100 dBFS\nidle_l = still && abs(in1) < 0.0000001 && max(max(abs(xl1), abs(xl2)), max(abs(yl1), abs(yl2))) < 0.0000001;\nidle_r = still && abs(in2) < 0.0000001 && max(max(abs(xr1), abs(xr2)), max(abs(yr1), abs(yr2))) < 0.0000001;\n\n// --- the biquads: same coefficients, own memory, each skipped only when idle\nxl0 = 0;\nyl0 = 0;\nif (!idle_l) {\n    xl0 = in1;\n    yl0 = a0 * xl0 + a1 * xl1 + a2 * xl2 - b1 * yl1 - b2 * yl2;\n}\nxr0 = 0;\nyr0 = 0;\nif (!idle_r) {\n    xr0 = in2;\n    yr0 = a0 * xr0 + a1 * xr1 + a2 * xr2 - b1 * yr1 - b2 * yr2;\n}\nout1 = yl0;\nout2 = yr0;\n\n// --- write all state last ---\n// idle: x0 and y0 are 0, and x1/y1 are below -140 dB -- clear them so the filter restarts from rest\nnxl2 = idle_l ? 0 : xl1;\nnyl2 = idle_l ? 0 : yl1;\nnxr2 = idle_r ? 0 : xr1;\nnyr2 = idle_r ? 0 : yr1;\nxl2 = nxl2;\nxl1 = xl0;\nyl2 = nyl2;\nyl1 = yl0;\nxr2 = nxr2;\nxr1 = xr0;\nyr2 = nyr2;\nyr1 = yr0;\nf_s = cf;\nq_s = Q;\nsr_last = sr;\nc10_c = c10;\nf_last = cf;\nq_last = Q;\na0_c = a0;\na1_c = a1;\na2_c = a2;\nb1_c = b1;\nb2_c = b2;\nsettled_s = settled;\nr3 = in3;\nr4 = in4;\n",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-6",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "outlettype": [],
                                                        "patching_rect": [
                                                            50.0,
                                                            320.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "out 1 @comment left out",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                },
                                                {
                                                    "box": {
                                                        "maxclass": "newobj",
                                                        "id": "obj-7",
                                                        "numinlets": 1,
                                                        "numoutlets": 0,
                                                        "outlettype": [],
                                                        "patching_rect": [
                                                            130.0,
                                                            320.0,
                                                            30.0,
                                                            22.0
                                                        ],
                                                        "text": "out 2 @comment right out",
                                                        "fontname": "Arial",
                                                        "fontsize": 12.0
                                                    }
                                                }
                                            ],
                                            "lines": [
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-1",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-5",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-2",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-5",
                                                            1
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-3",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-5",
                                                            2
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-4",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-5",
                                                            3
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-5",
                                                            0
                                                        ],
                                                        "destination": [
                                                            "obj-6",
                                                            0
                                                        ]
                                                    }
                                                },
                                                {
                                                    "patchline": {
                                                        "source": [
                                                            "obj-5",
                                                            1
                                                        ],
                                                        "destination": [
                                                            "obj-7",
                                                            0
                                                        ]
                                                    }
                                                }
                                            ],
                                            "dependency_cache": [],
                                            "autosave": 0
                                        }
                                    }
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein3",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "in_obj-ein3",
                                    "text": "in 3 @comment \"Cutoff (Signal/Float) 20 - 20000 Hz. filtergraph~'s 2nd outlet (cutoff) fits here. Default 1000\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pCutoff",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        430.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "Cutoff",
                                    "text": "param Cutoff 1000 @min 20.0 @max 20000.0 @exponent 3.0 @order 1",
                                    "varname": "Cutoff"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-ein4",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        70.0,
                                        190.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "in",
                                    "rnbo_extra_attributes": {
                                        "meta": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "in_obj-ein4",
                                    "text": "in 4 @comment \"Q (Signal/Float) 0.1 - 40. Higher = the phase turns over a narrower band (a narrower notch when mixed with dry). filtergraph~'s 4th outlet (Q) fits here. Default 0.7071\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "pQ",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        630.0,
                                        140.0,
                                        180.0,
                                        52.0
                                    ],
                                    "rnbo_classname": "param",
                                    "rnbo_extra_attributes": {
                                        "enum": "",
                                        "fromnormalized": "",
                                        "exponent": 3.0,
                                        "displayname": "",
                                        "ctlin": -1.0,
                                        "tonormalized": "",
                                        "steps": 0.0,
                                        "unit": "",
                                        "sendinit": 1,
                                        "meta": "",
                                        "displayorder": "-",
                                        "preset": 1
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "Q",
                                    "text": "param Q 0.7071 @min 0.1 @max 40.0 @exponent 3.0 @order 2",
                                    "varname": "Q"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sout1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        30.0,
                                        320.0,
                                        200.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 1,
                                    "rnbo_uniqueid": "out~_obj-sout1",
                                    "text": "out~ 1 @comment \"Left Out (Signal) filtered audio\""
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-sout2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        430.0,
                                        320.0,
                                        200.0,
                                        23.0
                                    ],
                                    "rnbo_classname": "out~",
                                    "rnbo_extra_attributes": {
                                        "meta": "",
                                        "comment": ""
                                    },
                                    "rnbo_serial": 2,
                                    "rnbo_uniqueid": "out~_obj-sout2",
                                    "text": "out~ 2 @comment \"Right Out (Signal) filtered audio\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Lato",
                                    "fontsize": 12.0,
                                    "id": "obj-note",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "linecount": 3,
                                    "patching_rect": [
                                        30.0,
                                        380.0,
                                        700.0,
                                        50.0
                                    ],
                                    "text": "gen~ code MUST MATCH br.filter.allpass.1.1 (open both: same gen~ patcher and codebox). Cutoff, Q are the plugin parameters (VST/AU, web, external); each inlet sets its param, attrui in the parent shows them all."
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein3",
                                        0
                                    ],
                                    "destination": [
                                        "pCutoff",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pCutoff",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-ein4",
                                        0
                                    ],
                                    "destination": [
                                        "pQ",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "pQ",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-sin1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-sin2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-gen",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gen",
                                        0
                                    ],
                                    "destination": [
                                        "obj-sout1",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-gen",
                                        1
                                    ],
                                    "destination": [
                                        "obj-sout2",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        54.0,
                        400.0,
                        340.0,
                        22.0
                    ],
                    "rnboversion": "1.4.3",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "rnbo~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "rnbo~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "optimization": "O1",
                        "parameter_enable": 1,
                        "uuid": "68babff7-7545-4670-8e2d-d3e6bb2fc464"
                    },
                    "text": "rnbo~",
                    "varname": "rnbo~"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-export",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "linecount": 4,
                    "patching_rect": [
                        420.0,
                        400.0,
                        340.0,
                        60.0
                    ],
                    "text": "EXPORT NAME: br.filter.allpass.1.1~\nMax External Export asks for a name: keep the ~ at the end."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr0",
                    "maxclass": "attrui",
                    "attr": "Cutoff",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        90.0,
                        180.0,
                        22.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-attr1",
                    "maxclass": "attrui",
                    "attr": "Q",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "parameter_enable": 0,
                    "patching_rect": [
                        232.0,
                        114.0,
                        180.0,
                        22.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        1
                    ],
                    "destination": [
                        "obj-7",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        1
                    ],
                    "destination": [
                        "obj-5",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        1
                    ],
                    "destination": [
                        "obj-6",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr0",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-attr1",
                        0
                    ],
                    "destination": [
                        "obj-7",
                        0
                    ]
                }
            }
        ]
    }
}