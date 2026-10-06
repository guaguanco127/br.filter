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
        "devicewidth": 215.0,
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
                        79.0,
                        20.0
                    ],
                    "text": "low shelf",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        210.0,
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
                    "comment": "Q (Float) 0.1 - 20. Corner shape: above about 1 the shelf overshoots at the corner. filtergraph~'s 4th outlet (Q) fits here. Default 0.7071"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-6",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        280.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Gain (Float) -24 - 24 dB. filtergraph~'s 3rd outlet (gain) is linear: put atodb in between. Default 0"
                }
            },
            {
                "box": {
                    "maxclass": "inlet",
                    "id": "obj-7",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        355.0,
                        15.0,
                        30.0,
                        30.0
                    ],
                    "parameter_enable": 0,
                    "comment": "Autogain (Int) 0/1. 1 = remove the corner overshoot: the peak is held at the shelf's own gain (0 dB for a cut). Default 0"
                }
            },
            {
                "box": {
                    "maxclass": "newobj",
                    "id": "obj-8",
                    "numinlets": 6,
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
                                    "text": "in 5 @comment gain dB @default 0 @min -127 @max 24",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "newobj",
                                    "id": "obj-6",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        450.0,
                                        20.0,
                                        30.0,
                                        22.0
                                    ],
                                    "text": "in 6 @comment autogain 0/1 @default 0 @min 0 @max 1",
                                    "fontname": "Arial",
                                    "fontsize": 12.0
                                }
                            },
                            {
                                "box": {
                                    "maxclass": "codebox",
                                    "id": "obj-7",
                                    "numinlets": 6,
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
                                    "code": "// br.filter.lowshelf.1.0 -- low shelf: boost or cut below freq\n// RBJ cookbook biquad, stereo: coefficients computed once and shared by L and R, own memory per channel.\n//   10 ms glides on every control, coefficients only on change, fast path when controls are still,\n//   each channel skipped on its own when its input and filter memory are below -140 dBFS\n// Every stored value is read first and written last, never read after a write.\n// shelf damping is floored so high gain + high Q can never ring forever\n// in1 left, in2 right, in3 freq Hz, in4 Q, in5 gain dB, in6 autogain 0/1\n// out1 left, out2 right\n\n// filter state, left\nHistory xl1(0);\nHistory xl2(0);\nHistory yl1(0);\nHistory yl2(0);\n// filter state, right\nHistory xr1(0);\nHistory xr2(0);\nHistory yr1(0);\nHistory yr2(0);\n// 10 ms smoothed controls\nHistory f_s(1000);\nHistory q_s(0.7071);\nHistory g_s(0);\n// cached math and the values it was computed for\nHistory sr_last(0);\nHistory c10_c(0);\nHistory f_last(-1);\nHistory q_last(-1);\nHistory g_last(-1000);\nHistory a0_c(1);\nHistory a1_c(0);\nHistory a2_c(0);\nHistory b1_c(0);\nHistory b2_c(0);\n// fast path: raw control inputs last seen, and whether every smoother had reached its target\nHistory ag_s(0);\nHistory ag_last(-1);\nHistory settled_s(0);\nHistory r3(-1);\nHistory r4(-1);\nHistory r5(-1);\nHistory r6(-1);\n\n// --- constants: once, and again if the samplerate changes ---\nsr = samplerate;\nsr_new = sr != sr_last;\nc10 = c10_c;\nif (sr_new) {\n    c10 = exp(-1 / mstosamps(10));\n}\n\n// --- fast path test: identical control inputs and nothing still gliding ---\nsame = in3 == r3 && in4 == r4 && in5 == r5 && in6 == r6;\nstill = same && settled_s > 0.5 && !sr_new;\n\n// defaults = stored state, which is exactly what the fast path keeps\nt_f = 0;\nt_q = 0;\nt_g = 0;\ncf = f_s;\nQ = q_s;\ngainDB = g_s;\nt_ag = 0;\nag = ag_s;\ncomp = 1;\nkg = 1;\nsettled = settled_s;\na0 = a0_c;\na1 = a1_c;\na2 = a2_c;\nb1 = b1_c;\nb2 = b2_c;\nomega = 0;\nsn = 0;\niq2 = 0;\nkk = 0;\nbest = 0;\ndisc = 0;\nsd = 0;\nxa = 0;\nxb = 0;\nra = 0;\nrb = 0;\ncs = 0;\nalpha = 0;\nA = 0;\nbeta = 0;\nn = 0;\n\nif (!still) {\n    // keep omega below pi regardless of the real samplerate: cf above Nyquist makes sin negative,\n    // which can drive the normalizing denominator to exactly zero -- a divide by zero -- for some Q values\n    t_f = min(max(in3, 0), sr * 0.49);\n    t_q = max(in4, 0.000001);\n    t_ag = clamp(in6, 0, 1);\n    t_g = in5;\n\n    // 10 ms smoothing that snaps exactly onto the target once within a hair\n    cf = mix(t_f, f_s, c10);\n    cf = abs(cf - t_f) < 0.001 ? t_f : cf;\n    Q = mix(t_q, q_s, c10);\n    Q = abs(Q - t_q) < 0.000001 ? t_q : Q;\n    ag = mix(t_ag, ag_s, c10);\n    ag = abs(ag - t_ag) < 0.000001 ? t_ag : ag;\n    gainDB = mix(t_g, g_s, c10);\n    gainDB = abs(gainDB - t_g) < 0.0001 ? t_g : gainDB;\n\n    // coefficients: only when something changed -- this is the filtercoeff stage\n    if (cf != f_last || Q != q_last || gainDB != g_last || ag != ag_last || sr_new) {\n        omega = cf * twopi / sr;\n        sn = sin(omega);\n        cs = cos(omega);\n        alpha = sn * 0.5 / Q;\n        // low shelf\n        A = pow(10, gainDB / 40);\n        beta = sqrt(max(A * 0.01, (A * A + 1) / Q - (A - 1) * (A - 1)));\n        n = 1 / ((A + 1) + (A - 1) * cs + beta * sn);\n        a0 = (A * ((A + 1) - (A - 1) * cs + beta * sn)) * n;\n        a1 = (2 * A * ((A - 1) - (A + 1) * cs)) * n;\n        a2 = (A * ((A + 1) - (A - 1) * cs - beta * sn)) * n;\n        b1 = (-2 * ((A - 1) + (A + 1) * cs)) * n;\n        b2 = ((A + 1) + (A - 1) * cs - beta * sn) * n;\n        // auto gain: exact peak of the shelf, including the corner overshoot above Q 1;\n        // found in closed form from the analog prototype, which the bilinear transform leaves unchanged\n        // target = the shelf's own level or 0 dB, whichever is higher\n        iq2 = max(0.01, (A + 1 / A) * (1 / Q - 1) + 2);\n        kk = A * iq2 - 2 * A;\n        best = max(A * A * A * A, 1);\n        disc = (1 + A * A) * (1 + A * A) - kk * kk;\n        if (abs(A - 1) > 0.000000001 && kk < 0 && disc >= 0) {\n            sd = sqrt(disc);\n            xa = (-(1 + A * A) + sd) / kk;\n            xb = (-(1 + A * A) - sd) / kk;\n            ra = A * A * xa * xa + kk * xa + 1;\n            rb = A * A * xb * xb + kk * xb + 1;\n            if (xa > 0 && ra > 0) {\n                best = max(best, A * A * (xa * xa + kk * xa + A * A) / ra);\n            }\n            if (xb > 0 && rb > 0) {\n                best = max(best, A * A * (xb * xb + kk * xb + A * A) / rb);\n            }\n        }\n        comp = max(A * A, 1) / sqrt(best);\n        // fold the compensation into the feedforward taps: no extra work per sample\n        kg = mix(1, comp, ag);\n        a0 = a0 * kg;\n        a1 = a1 * kg;\n        a2 = a2 * kg;\n    }\n\n    // every smoother on target: the fast path may be used next sample\n    settled = ag == t_ag && cf == t_f && Q == t_q && gainDB == t_g;\n}\n\n// --- silence skip, per channel: input and filter memory below -140 dBFS ---\n// -140 leaves room for the biggest boost, so skipped ringing stays below -100 dBFS\nidle_l = still && abs(in1) < 0.0000001 && max(max(abs(xl1), abs(xl2)), max(abs(yl1), abs(yl2))) < 0.0000001;\nidle_r = still && abs(in2) < 0.0000001 && max(max(abs(xr1), abs(xr2)), max(abs(yr1), abs(yr2))) < 0.0000001;\n\n// --- the biquads: same coefficients, own memory, each skipped only when idle\nxl0 = 0;\nyl0 = 0;\nif (!idle_l) {\n    xl0 = in1;\n    yl0 = a0 * xl0 + a1 * xl1 + a2 * xl2 - b1 * yl1 - b2 * yl2;\n}\nxr0 = 0;\nyr0 = 0;\nif (!idle_r) {\n    xr0 = in2;\n    yr0 = a0 * xr0 + a1 * xr1 + a2 * xr2 - b1 * yr1 - b2 * yr2;\n}\nout1 = yl0;\nout2 = yr0;\n\n// --- write all state last ---\n// idle: x0 and y0 are 0, and x1/y1 are below -140 dB -- clear them so the filter restarts from rest\nnxl2 = idle_l ? 0 : xl1;\nnyl2 = idle_l ? 0 : yl1;\nnxr2 = idle_r ? 0 : xr1;\nnyr2 = idle_r ? 0 : yr1;\nxl2 = nxl2;\nxl1 = xl0;\nyl2 = nyl2;\nyl1 = yl0;\nxr2 = nxr2;\nxr1 = xr0;\nyr2 = nyr2;\nyr1 = yr0;\nf_s = cf;\nq_s = Q;\ng_s = gainDB;\nsr_last = sr;\nc10_c = c10;\nf_last = cf;\nq_last = Q;\ng_last = gainDB;\na0_c = a0;\na1_c = a1;\na2_c = a2;\nb1_c = b1;\nb2_c = b2;\nag_s = ag;\nag_last = ag;\nsettled_s = settled;\nr3 = in3;\nr4 = in4;\nr5 = in5;\nr6 = in6;\n",
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
                                    "id": "obj-9",
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
                                        "obj-7",
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
                                        "obj-7",
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
                                        "obj-7",
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
                                        "obj-7",
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
                                        "obj-7",
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
                                        5
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
                                        "obj-8",
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
                                        "obj-9",
                                        0
                                    ]
                                }
                            }
                        ],
                        "dependency_cache": [],
                        "autosave": 0
                    },
                    "varname": "br_filter_lowshelf"
                }
            },
            {
                "box": {
                    "maxclass": "live.dial",
                    "id": "obj-9",
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
                    "id": "obj-10",
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
                            "parameter_mmax": 20.0,
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
                    "maxclass": "live.dial",
                    "id": "obj-11",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        280.0,
                        50.0,
                        44.0,
                        48.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        105.0,
                        25.0,
                        44.0,
                        48.0
                    ],
                    "varname": "Gain",
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
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Gain",
                            "parameter_shortname": "Gain",
                            "parameter_mmin": -24.0,
                            "parameter_mmax": 24.0,
                            "parameter_modmode": 0,
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "live.text",
                    "id": "obj-12",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "patching_rect": [
                        355.0,
                        65.0,
                        54.0,
                        18.0
                    ],
                    "parameter_enable": 1,
                    "presentation": 1,
                    "presentation_rect": [
                        158.0,
                        40.0,
                        54.0,
                        18.0
                    ],
                    "varname": "Autogain",
                    "mode": 1,
                    "text": "autogain",
                    "texton": "autogain",
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "off",
                                "on"
                            ],
                            "parameter_initial": [
                                0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Autogain",
                            "parameter_shortname": "Autogain",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_type": 2
                        }
                    }
                }
            },
            {
                "box": {
                    "maxclass": "comment",
                    "id": "obj-13",
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
                    "id": "obj-14",
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
                    "id": "obj-15",
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
                    "id": "obj-16",
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
                        215.0,
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
                        "obj-8",
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
                        "obj-8",
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
                        "obj-9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-8",
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
                        "obj-10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-8",
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
                        "obj-11",
                        0
                    ],
                    "destination": [
                        "obj-8",
                        4
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
                        "obj-12",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-12",
                        0
                    ],
                    "destination": [
                        "obj-8",
                        5
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
                        "obj-14",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        1
                    ],
                    "destination": [
                        "obj-15",
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
            215.0,
            79.0
        ]
    }
}