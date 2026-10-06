# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.filter.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.filter.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.filter](https://github.com/guaguanco127/br.filter)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Links

[About](#About)   
[Max/MSP Abstractions](https://github.com/guaguanco127/br.filter/tree/main/MaxMSP%20Abstraction) To use as abstractions within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="About"></a>About

A family of stereo filter abstractions for Max/MSP, built in gen~ from the RBJ Audio EQ Cookbook biquad formulas. There is one abstraction per filter type, plus br.filter.biquad, which has every type in one:

| Abstraction | What it does |
|---|---|
| br.filter.lowpass.1.0 | Keeps the lows, 12 dB per octave |
| br.filter.highpass.1.0 | Keeps the highs, 12 dB per octave |
| br.filter.bandpass.1.0 | Keeps a band around the cutoff; the peak stays at 0 dB |
| br.filter.resonbp.1.0 | Resonant bandpass; the peak gain rises with Q |
| br.filter.notch.1.0 | Removes a band around the cutoff |
| br.filter.allpass.1.0 | Shifts phase around the cutoff, level unchanged (mix with the dry signal for a notch) |
| br.filter.peak.1.0 | Boosts or cuts a band around the cutoff |
| br.filter.lowshelf.1.0 | Boosts or cuts everything below the cutoff |
| br.filter.highshelf.1.0 | Boosts or cuts everything above the cutoff |
| br.filter.biquad.1.0 | Every type above in one, chosen with a Type menu |
| br.filter.lowpass.lvl.1.0 | Level-matched lowpass: Q changes the color, not the loudness |
| br.filter.bandpass.lvl.1.0 | Level-matched bandpass: Q changes the color, not the loudness |

**Click-free controls:** Cutoff, Q and Gain always glide over 10 ms, so moving them never clicks.

**Stereo:** Each abstraction has a Left and a Right audio inlet and outlet. Both channels share one set of filter settings, so the coefficient math is done once for the pair.

**Light on CPU:** The coefficient math only runs while a control is moving. When a channel's input and the filter's memory are silent, that channel skips its work.

**Autogain:** On lowpass, highpass, resonbp and the shelves, Autogain holds the peak level as Q rises, so turning up Q doesn't make the sound louder.

**Level-matched (.lvl):** These go a step further: they compare themselves with a copy of the filter at Q 0.7071 and correct the level, so changing Q changes only the color.

**filtergraph~ ready:** filtergraph~'s cutoff and Q outlets plug straight into the Cutoff and Q inlets.

The example patch (_br.filter.example.1.0.maxpat) has a tab for the biquad with filtergraph~, and tabs for the other filters grouped by family, each with a menu to switch between them.
