{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 0,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            640.0,
            480.0
        ],
        "bglocked": 0,
        "openinpresentation": 1,
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
        "devicewidth": 170.0,
        "description": "",
        "digest": "",
        "tags": "",
        "style": "",
        "subpatcher_template": "",
        "assistshowspatchername": 0,
        "boxes": [
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-1",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        560.0,
                        15.0,
                        177.0,
                        20.0
                    ],
                    "text": "bandpass, level-matched",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        165.0,
                        20.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ]
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-2",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Left In (Signal) audio to filter"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-3",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        60.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Right In (Signal) audio to filter"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-4",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        130.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Cutoff (Float) 20 - 20000 Hz. Exponential dial. filtergraph~'s 2nd outlet (cutoff) fits here. Default 1000"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-5",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        205.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Q (Float) 0.1 - 40. Higher = narrower band. filtergraph~'s 4th outlet (Q) fits here. Default 0.7071"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-6",
                    "numinlets": 5,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        160.0,
                        44.0,
                        22.0
                    ],
                    "text": "gen~",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 0,
                            "revision": 0,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
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
                                    "maxclass": "newobj",
                                    "id": "obj-5",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        370.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 5 @comment unused @default 0",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "codebox",
                                    "id": "obj-6",
                                    "numinlets": 5,
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
                                    "code": "// br.filter.bandpass.lvl.1.0 -- bandpass, width set by Q, LEVEL-MATCHED: changing Q changes the color, not the loudness\n// Stereo build of br.bandpass.lvl.1.0, RBJ cookbook biquad,: coefficients computed once, shared by L and R.\n//   10 ms glides, coefficients only on change, fast path when controls are still\n//   each channel skipped on its own when its input and filter memory are below -140 dBFS\n// Level match: a reference copy of this filter at Q 0.7071, same cutoff, runs alongside. Two 150 ms\n//   power followers compare it with the real output; the gain, capped +15.6 / -12 dB, updated every 64 samples,\n//   glided 50 ms, holds the loudness the filter had at Q 0.7071. Cutoff sweeps and LP/BP still change level.\n// At Q 0.7071 the real filter IS the reference: the reference biquad is skipped and copies the real state\n//   so the level match costs almost nothing until Q moves.\n// Every stored value is read first and written last, never read after a write.\n// Stereo: each channel has its own filter + reference memory; ONE level-match gain from the summed L+R power.\n// in1 left, in2 right, in3 freq Hz, in4 Q, in5 unused, no peak to hold on a bandpass\n// out1 left, out2 right\n\n// filter state per channel, input history is shared with that channel's reference\nHistory xl1(0);\nHistory xl2(0);\nHistory yl1(0);\nHistory yl2(0);\nHistory ryl1(0);\nHistory ryl2(0);\nHistory xr1(0);\nHistory xr2(0);\nHistory yr1(0);\nHistory yr2(0);\nHistory ryr1(0);\nHistory ryr2(0);\n// 10 ms smoothed controls\nHistory f_s(1000);\nHistory q_s(0.7071);\n// cached math and the values it was computed for\nHistory sr_last(0);\nHistory c10_c(0);\nHistory cp_c(0);\nHistory cg_c(0);\nHistory f_last(-1);\nHistory q_last(-1);\nHistory a0_c(1);\nHistory a1_c(0);\nHistory a2_c(0);\nHistory b1_c(0);\nHistory b2_c(0);\nHistory ra0_c(1);\nHistory ra1_c(0);\nHistory ra2_c(0);\nHistory rb1_c(0);\nHistory rb2_c(0);\nHistory ag_s(0);\nHistory ag_last(-1);\n// fast path: raw control inputs last seen, and whether every smoother had reached its target\nHistory settled_s(0);\nHistory r3(-1);\nHistory r4(-1);\nHistory r5(-1);\n// level match: output power, reference power, gain target, glided gain, update counter\nHistory po_s(0);\nHistory pr_s(0);\nHistory g_tgt_s(1);\nHistory g_s(1);\nHistory cnt_s(0);\n\n// --- constants: once, and again if the samplerate changes ---\nsr = samplerate;\nsr_new = sr != sr_last;\nc10 = c10_c;\ncp = cp_c;\ncg = cg_c;\nif (sr_new) {\n    c10 = exp(-1 / mstosamps(10));\n    cp = exp(-1 / mstosamps(150));\n    cg = exp(-1 / mstosamps(50));\n}\n\n// --- fast path test: identical control inputs and nothing still gliding ---\nsame = in3 == r3 && in4 == r4 && in5 == r5;\nstill = same && settled_s > 0.5 && !sr_new;\n\n// defaults = stored state, which is exactly what the fast path keeps\nt_f = 0;\nt_q = 0;\ncf = f_s;\nQ = q_s;\nt_ag = 0;\nag = ag_s;\ncomp = 1;\nkg = 1;\nsettled = settled_s;\na0 = a0_c;\na1 = a1_c;\na2 = a2_c;\nb1 = b1_c;\nb2 = b2_c;\nra0 = ra0_c;\nra1 = ra1_c;\nra2 = ra2_c;\nrb1 = rb1_c;\nrb2 = rb2_c;\nomega = 0;\nsn = 0;\ncs = 0;\nalpha = 0;\nn1 = 0;\nalr = 0;\nnr = 0;\n\nif (!still) {\n    // keep omega below pi regardless of the real samplerate\n    t_f = min(max(in3, 0), sr * 0.49);\n    t_q = max(in4, 0.000001);\n    t_ag = clamp(in5, 0, 1);\n\n    // 10 ms smoothing that snaps exactly onto the target once within a hair\n    cf = mix(t_f, f_s, c10);\n    cf = abs(cf - t_f) < 0.001 ? t_f : cf;\n    Q = mix(t_q, q_s, c10);\n    Q = abs(Q - t_q) < 0.000001 ? t_q : Q;\n    ag = mix(t_ag, ag_s, c10);\n    ag = abs(ag - t_ag) < 0.000001 ? t_ag : ag;\n\n    // coefficients: only when something changed -- this is the filtercoeff stage\n    if (cf != f_last || Q != q_last || ag != ag_last || sr_new) {\n        omega = cf * twopi / sr;\n        sn = sin(omega);\n        cs = cos(omega);\n        alpha = sn * 0.5 / Q;\n        n1 = 1 / (1 + alpha);\n        alr = sn * 0.5 / 0.7071;\n        nr = 1 / (1 + alr);\n        // bandpass, 0 dB peak gain, autogain has nothing to hold here: peak never rises\n        a0 = alpha * n1;\n        a1 = 0;\n        a2 = -alpha * n1;\n        b1 = -2 * cs * n1;\n        b2 = (1 - alpha) * n1;\n        // reference: the same bandpass at Q 0.7071\n        ra0 = alr * nr;\n        ra1 = 0;\n        ra2 = -alr * nr;\n        rb1 = -2 * cs * nr;\n        rb2 = (1 - alr) * nr;\n    }\n\n    // every smoother on target: the fast path may be used next sample\n    settled = ag == t_ag && cf == t_f && Q == t_q;\n}\n\n// level match runs only while Q is away from the reference Q\nmatch = abs(Q - 0.7071) > 0.0001;\n\n// --- silence skip, per channel: input and filter memory, real and reference, below -140 dBFS ---\nidle_l = still && abs(in1) < 0.0000001 && max(max(abs(xl1), abs(xl2)), max(max(abs(yl1), abs(yl2)), max(abs(ryl1), abs(ryl2)))) < 0.0000001;\nidle_r = still && abs(in2) < 0.0000001 && max(max(abs(xr1), abs(xr2)), max(max(abs(yr1), abs(yr2)), max(abs(ryr1), abs(ryr2)))) < 0.0000001;\nidle = idle_l && idle_r;\n\n// --- the biquads: same coefficients, own memory, each channel skipped only when idle\nxl0 = 0;\nyl0 = 0;\nyrl = 0;\nif (!idle_l) {\n    xl0 = in1;\n    yl0 = a0 * xl0 + a1 * xl1 + a2 * xl2 - b1 * yl1 - b2 * yl2;\n    yrl = yl0;\n    if (match) {\n        yrl = ra0 * xl0 + ra1 * xl1 + ra2 * xl2 - rb1 * ryl1 - rb2 * ryl2;\n    }\n}\nxr0 = 0;\nyr0 = 0;\nyrr = 0;\nif (!idle_r) {\n    xr0 = in2;\n    yr0 = a0 * xr0 + a1 * xr1 + a2 * xr2 - b1 * yr1 - b2 * yr2;\n    yrr = yr0;\n    if (match) {\n        yrr = ra0 * xr0 + ra1 * xr1 + ra2 * xr2 - rb1 * ryr1 - rb2 * ryr2;\n    }\n}\n\n// --- level match: ONE gain for both channels, summed L+R power, so the stereo image never shifts\npo = po_s;\npr = pr_s;\ng_tgt = g_tgt_s;\ng = g_s;\ncnt = cnt_s;\nif (!idle) {\n    po = mix(yl0 * yl0 + yr0 * yr0, po_s, cp);\n    pr = mix(yrl * yrl + yrr * yrr, pr_s, cp);\n    cnt = cnt_s + 1;\n    if (cnt >= 64) {\n        cnt = 0;\n        if (!match) {\n            g_tgt = 1;\n        } else if (po > 0.000000000001 && pr > 0.000000000001) {\n            g_tgt = clamp(sqrt(pr / po), 0.25, 6);\n        }\n    }\n    g = mix(g_tgt, g_s, cg);\n}\nout1 = yl0 * g;\nout2 = yr0 * g;\n\n// --- write all state last ---\n// idle: x0, y0 and yr are 0 and the memories are below -140 dB -- clear them so the filters restart from rest\nnxl2 = idle_l ? 0 : xl1;\nnyl2 = idle_l ? 0 : yl1;\nnryl2 = idle_l ? 0 : ryl1;\nnxr2 = idle_r ? 0 : xr1;\nnyr2 = idle_r ? 0 : yr1;\nnryr2 = idle_r ? 0 : ryr1;\nxl2 = nxl2;\nxl1 = xl0;\nyl2 = nyl2;\nyl1 = yl0;\nryl2 = nryl2;\nryl1 = yrl;\nxr2 = nxr2;\nxr1 = xr0;\nyr2 = nyr2;\nyr1 = yr0;\nryr2 = nryr2;\nryr1 = yrr;\nf_s = cf;\nq_s = Q;\nsr_last = sr;\nc10_c = c10;\ncp_c = cp;\ncg_c = cg;\nf_last = cf;\nq_last = Q;\na0_c = a0;\na1_c = a1;\na2_c = a2;\nb1_c = b1;\nb2_c = b2;\nra0_c = ra0;\nra1_c = ra1;\nra2_c = ra2;\nrb1_c = rb1;\nrb2_c = rb2;\nag_s = ag;\nag_last = ag;\nsettled_s = settled;\nr3 = in3;\nr4 = in4;\nr5 = in5;\npo_s = po;\npr_s = pr;\ng_tgt_s = g_tgt;\ng_s = g;\ncnt_s = cnt;\n",
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
                                    "id": "obj-8",
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
                                        "obj-6",
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
                                        "obj-6",
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
                                        "obj-6",
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
                                        "obj-6",
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
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
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
                                        "obj-6",
                                        1
                                    ],
                                    "destination": [
                                        "obj-8",
                                        0
                                    ]
                                }
                            }
                        ],
                        "dependency_cache": [],
                        "autosave": 0
                    },
                    "varname": "br_filter_bandpass_lvl"
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-7",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        130.0,
                        50.0,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        5.0,
                        25.0,
                        44.0,
                        48.0
                    ],
                    "varname": "Cutoff",
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                1000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Cutoff",
                            "parameter_shortname": "Cutoff",
                            "parameter_mmin": 20.0,
                            "parameter_mmax": 20000.0,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 3,
                            "parameter_exponent": 3.0
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-8",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        205.0,
                        50.0,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        55.0,
                        25.0,
                        44.0,
                        48.0
                    ],
                    "varname": "Q",
                    "activeneedlecolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "textcolor": [
                        1.0,
                        1.0,
                        1.0,
                        1.0
                    ],
                    "saved_attribute_attributes": {
                        "activeneedlecolor": {
                            "expression": ""
                        },
                        "textcolor": {
                            "expression": ""
                        },
                        "valueof": {
                            "parameter_initial": [
                                0.7071
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Q",
                            "parameter_shortname": "Q",
                            "parameter_mmin": 0.1,
                            "parameter_mmax": 40.0,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 1,
                            "parameter_exponent": 3.0
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-9",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        330.0,
                        165.0,
                        380.0,
                        20.0
                    ],
                    "text": "gen~ inlet 5 unused (shared layout with lowpass.lvl)",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-10",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        130.0,
                        125.0,
                        541.0,
                        20.0
                    ],
                    "text": "one gen~: coefficients once, shared by L and R; controls glide 10 ms inside",
                    "fontname": "Arial",
                    "fontsize": 12.0
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-11",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        15.0,
                        205.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Left Out (Signal) filtered audio"
                }
            },
            {
                "box": {
                    "maxclass": "outlet",
                    "id": "obj-12",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        105.0,
                        205.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Right Out (Signal) filtered audio"
                }
            },
            {
                "box": {
                    "maxclass": "panel",
                    "id": "obj-13",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "outlettype": [],
                    "patching_rect": [
                        560.0,
                        250.0,
                        128.0,
                        128.0
                    ],
                    "parameter_enable": 0,
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        170.0,
                        79.0
                    ],
                    "background": 1,
                    "ignoreclick": 1,
                    "border": 0,
                    "rounded": 7,
                    "mode": 0,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "bordercolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ]
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-2",
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
                        "obj-3",
                        0
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
                        "obj-4",
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
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        2
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
                        "obj-8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        0
                    ],
                    "destination": [
                        "obj-6",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-11",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        1
                    ],
                    "destination": [
                        "obj-12",
                        0
                    ]
                }
            }
        ],
        "dependency_cache": [],
        "autosave": 0,
        "openrect": [
            85.0,
            104.0,
            170.0,
            79.0
        ]
    }
}