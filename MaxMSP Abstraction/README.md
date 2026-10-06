# Max/MSP Abstractions:   
## br.filter.1.0



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.filter.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.filter](https://github.com/guaguanco127/br.filter)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[About](#About)   
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[Example Patch](#Example)  
 
 

## <a name="About"></a>About

A family of stereo filter abstractions for Max/MSP, built in gen~ from the RBJ Audio EQ Cookbook biquad formulas. There is one abstraction per filter type, plus br.filter.biquad, which has every type in one.

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

**Click-free controls:** Cutoff, Q and Gain always glide over 10 ms, so moving them never clicks. (br.filter.biquad's Type switches instantly. To switch filters without a click, crossfade between single-type abstractions, as the example patch does.)

**Stereo:** Each abstraction has a Left and a Right audio inlet and outlet. Both channels share one set of filter settings, so the coefficient math is done once for the pair.

**Light on CPU:** The coefficient math only runs while a control is moving. When a channel's input and the filter's memory are silent, that channel skips its work.

### Controls

**Cutoff:** The filter's frequency in Hz, from 20 to 20000. For bandpass, notch, peak and allpass, it is the center of the band. The dial is curved, so more of its travel goes to the low and middle frequencies. The default is 1000.

**Q:** How sharp the filter is. The default is 0.7071.
- Lowpass and highpass: 0.7071 is flat, with no peak. Higher Q adds a resonant peak at the cutoff.
- Bandpass, resonbp, notch and peak: higher Q makes the band narrower.
- Allpass: higher Q makes the phase turn over a narrower band (a narrower notch when mixed with the dry signal).
- Shelves: Q shapes the corner. Above about 1, the shelf overshoots at the corner.

**Gain** (peak, shelves, biquad): The boost or cut in dB, from -24 to 24. The default is 0.

**Autogain** (lowpass, highpass, resonbp, shelves, biquad): On/off. The default is off.
- Lowpass and highpass: holds the resonant peak level as Q rises, so high Q doesn't get louder.
- Resonbp: the peak never goes above 0 dB. Without it, the peak gain equals Q.
- Shelves: removes the corner overshoot. The peak is held at the shelf's own gain (0 dB for a cut).
- Lowpass.lvl: also holds the resonant peak, which limits the burst before the level match catches up.
- It has no effect on bandpass, notch, allpass and peak, whose level doesn't rise with Q, so they don't have it (the biquad has it for every type, but it only acts on the types above).

**Type** (biquad only): 0 bypass, 1 lowpass, 2 highpass, 3 bandpass, 4 notch, 5 peak, 6 lowshelf, 7 highshelf, 8 resonbp, 9 allpass. The default is 1 (lowpass). It switches instantly.

### Level-matched filters (.lvl)

br.filter.lowpass.lvl.1.0 and br.filter.bandpass.lvl.1.0 keep the loudness the filter has at Q 0.7071 while you change Q, so Q changes the color, not the volume. They run a second copy of the filter at Q 0.7071 alongside the real one and compare their levels. The level correction is shared by both channels, so the stereo image never shifts. At Q 0.7071 the copy is skipped, so the extra work only happens while Q is away from 0.7071. Moving Cutoff still changes the level, as it does on any lowpass or bandpass.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy and paste the abstractions you want (for example br.filter.lowpass.1.0.maxpat) inside of the same folder as the Max patch you are using.

3. To use the built-in dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the abstraction located within the same folder as your project. Size the bpatcher to 170 x 79 to show all of the controls (215 x 79 for lowshelf, highshelf and biquad).

4. Alternatively, create an object with the abstraction's name (for example: [br.filter.lowpass.1.0], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

The first two inlets are your stereo audio. Every control has its own inlet after that, in the same order as the dials. Sending a value to an inlet moves its on-screen dial too, so the display always matches the sound. Values outside a dial's range are limited to that range. Hover over an inlet in Max to see its range and default.

Every abstraction starts with the same four inlets (Left, Right, Cutoff, Q), so you can swap one filter for another without rewiring them.

**lowpass, highpass, resonbp, lowpass.lvl**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Float | 20 - 20000 Hz | 1000 |
| 4 | Q | Float | 0.1 - 20 (resonbp: 0.1 - 40) | 0.7071 |
| 5 | Autogain | Int | 0 / 1 | 0 |

**bandpass, notch, allpass, bandpass.lvl**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Float | 20 - 20000 Hz | 1000 |
| 4 | Q | Float | 0.1 - 40 | 0.7071 |

**peak**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Float | 20 - 20000 Hz | 1000 |
| 4 | Q | Float | 0.1 - 40 | 0.7071 |
| 5 | Gain | Float | -24 - 24 dB | 0 |

**lowshelf, highshelf**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Float | 20 - 20000 Hz | 1000 |
| 4 | Q | Float | 0.1 - 20 | 0.7071 |
| 5 | Gain | Float | -24 - 24 dB | 0 |
| 6 | Autogain | Int | 0 / 1 | 0 |

**biquad**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Type | Int | 0 - 9 | 1 (lowpass) |
| 4 | Cutoff | Float | 20 - 20000 Hz | 1000 |
| 5 | Q | Float | 0.1 - 40 | 0.7071 |
| 6 | Gain | Float | -24 - 24 dB | 0 |
| 7 | Autogain | Int | 0 / 1 | 0 |

**Outlets (all abstractions)**

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |

For a mono sound, connect it to both Left In and Right In.

**With filtergraph~:** filtergraph~'s outlets, left to right, are coefficients, cutoff, gain and Q. Connect its 2nd outlet (cutoff) to Cutoff and its 4th outlet (Q) to Q. Its gain is linear, so put [atodb] between its 3rd outlet (gain) and the Gain inlet. Set filtergraph~ to the same filter shape as the abstraction. filtergraph~ names a few types differently: flat = bypass, bandstop = notch, peaknotch = peak, resonant = resonbp.

## <a name="Example"></a>Example Patch

Open _br.filter.example.1.0.maxpat (keep it in the same folder as the abstractions). The first page introduces the family; the tabs at the top hold the examples. Each tab has its own source menu (saw, noise or microphone) and its own output. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **biquad:** Pick a type from the menu, then drag the curve in filtergraph~. The menu sets the biquad's Type and filtergraph~'s shape together.
- **lowpass-highpass, bandpass, notch-allpass, eq:** All of the tab's filters run at once. The listen menu chooses which one you hear, with a 20 ms crossfade, and "dry" plays the unfiltered source to compare.
- **notch-allpass:** Pick "allpass + dry" and sweep Cutoff to hear the allpass cut a notch when it is mixed with the dry signal: the basis of a phaser.

## <a name="Credits"></a>Credits

Filter formulas from the Audio EQ Cookbook by Robert Bristow-Johnson.
