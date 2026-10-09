# Max/MSP Patches, Abstractions, Externals, RNBO, VSTs, and Ableton Max for Live 

## br.filter.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.filter.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.filter](https://github.com/guaguanco127/br.filter)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Links

[What's new in 1.1](#New11)  
[About](#About)   
[Max/MSP Abstractions](https://github.com/guaguanco127/br.filter/tree/main/MaxMSP%20Abstraction) To use as abstractions within Max/MSP   

This is a Max/MSP-only release (no Max for Live device).

## <a name="New11"></a>What's new in 1.1

- **Two files per filter:** br.filter.<type>.1.1 is the plain object, whose control inlets take signals as well as numbers (patch an LFO into Cutoff, Q or Gain), and br.filter.<type>.ui.1.1 is the version with dials, for a [bpatcher].
- A State outlet on the .ui versions sends the settings as named messages the moment they change.
- Smaller panels, and two new example tabs: lfo and State outlet.
- Inlets and audio outlets are unchanged.

## <a name="About"></a>About

A family of stereo filter abstractions for Max/MSP, built in gen~ from the RBJ Audio EQ Cookbook biquad formulas. There is one filter per type, plus br.filter.biquad, which has every type in one. Each comes as a plain object (br.filter.<type>.1.1, no UI, takes signals) and a version with dials (br.filter.<type>.ui.1.1):

| Filter | What it does |
|---|---|
| br.filter.lowpass | Keeps the lows, 12 dB per octave |
| br.filter.highpass | Keeps the highs, 12 dB per octave |
| br.filter.bandpass | Keeps a band around the cutoff; the peak stays at 0 dB |
| br.filter.resonbp | Resonant bandpass; the peak gain rises with Q |
| br.filter.notch | Removes a band around the cutoff |
| br.filter.allpass | Shifts phase around the cutoff, level unchanged (mix with the dry signal for a notch) |
| br.filter.peak | Boosts or cuts a band around the cutoff |
| br.filter.lowshelf | Boosts or cuts everything below the cutoff |
| br.filter.highshelf | Boosts or cuts everything above the cutoff |
| br.filter.biquad | Every type above in one, chosen with a Type menu |
| br.filter.lowpass.lvl | Level-matched lowpass: Q changes the color, not the loudness |
| br.filter.bandpass.lvl | Level-matched bandpass: Q changes the color, not the loudness |

**Click-free controls:** Cutoff, Q and Gain always glide over 10 ms, so moving them never clicks.

**Stereo:** Each abstraction has a Left and a Right audio inlet and outlet. Both channels share one set of filter settings, so the coefficient math is done once for the pair.

**Light on CPU:** The coefficient math only runs while a control is moving. When a channel's input and the filter's memory are silent, that channel skips its work.

**Autogain:** On lowpass, highpass, resonbp and the shelves, Autogain holds the peak level as Q rises, so turning up Q doesn't make the sound louder.

**Level-matched (.lvl):** These go a step further: they compare themselves with a copy of the filter at Q 0.7071 and correct the level, so changing Q changes only the color.

**Signal control:** The plain objects take signals in every control inlet, so an LFO or envelope can sweep the filter smoothly.

**State outlet:** The .ui versions report their settings by name from their last outlet.

**filtergraph~ ready:** filtergraph~'s cutoff and Q outlets plug straight into the Cutoff and Q inlets.

The example patch (_br.filter.example.1.1.maxpat) has a tab for the biquad with filtergraph~, tabs for the other filters grouped by family, each with a menu to switch between them, an lfo tab with LFOs driving the plain objects, and a State outlet tab.

## <a name="Credits"></a>Credits

Filter formulas from the Audio EQ Cookbook by Robert Bristow-Johnson.
