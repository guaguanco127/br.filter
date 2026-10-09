# Max/MSP Abstractions:   
## br.filter.1.1



By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.filter.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.filter](https://github.com/guaguanco127/br.filter)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9. 

## Table of Contents 

[What's new in 1.1](#New11)  
[About](#About)   
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Example Patch](#Example)  
 
 

## <a name="New11"></a>What's new in 1.1

- **Two files per filter.** br.filter.<type>.1.1 is now the plain object: no dials, and every control inlet goes straight into gen~, so it takes **signals** as well as numbers. Patch an LFO or envelope into Cutoff, Q or Gain and the filter moves on its own, smoothly. br.filter.<type>.ui.1.1 is the version with dials, for a [bpatcher].
- New [State outlet](#State) on the .ui versions (the last outlet): it sends the settings as named messages the moment they change.
- Smaller panels: each .ui version is only as wide as its controls (see [How To Install](#Install)).
- Inlets and the audio outlets are unchanged. If you used 1.0 in a [bpatcher], choose the .ui.1.1 file; if you used it as an object box, type the plain 1.1 name.
- The example patch has new tabs: **lfo** and **lfo 2-4** (LFOs patched straight into all twelve plain objects) and **State outlet**.

## <a name="About"></a>About

A family of stereo filter abstractions for Max/MSP, built in gen~ from the RBJ Audio EQ Cookbook biquad formulas. There is one abstraction per filter type, plus br.filter.biquad, which has every type in one.

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

**Click-free controls:** Cutoff, Q and Gain always glide over 10 ms, so moving them never clicks. (br.filter.biquad's Type switches instantly. To switch filters without a click, crossfade between single-type abstractions, as the example patch does.)

**Stereo:** Each abstraction has a Left and a Right audio inlet and outlet. Both channels share one set of filter settings, so the coefficient math is done once for the pair.

**Light on CPU:** The coefficient math only runs while a control is moving. When a channel's input and the filter's memory are silent, that channel skips its work.

### Controls

**Cutoff:** The filter's frequency in Hz, from 20 to 20000. For bandpass, notch, peak and allpass, it is the center of the band. On the .ui versions the dial is curved, so more of its travel goes to the low and middle frequencies. The default is 1000.

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

br.filter.lowpass.lvl and br.filter.bandpass.lvl keep the loudness the filter has at Q 0.7071 while you change Q, so Q changes the color, not the volume. They run a second copy of the filter at Q 0.7071 alongside the real one and compare their levels. The level correction is shared by both channels, so the stereo image never shifts. At Q 0.7071 the copy is skipped, so the extra work only happens while Q is away from 0.7071. Moving Cutoff still changes the level, as it does on any lowpass or bandpass.

## <a name="Files"></a>Which file?

Every filter comes as two files with the same inlets and audio outlets in the same order, so either swaps in without rewiring:

| File | What it is |
|---|---|
| br.filter.<type>.1.1 | The plain object, no UI. Control inlets take numbers or signals |
| br.filter.<type>.ui.1.1 | The same filter with dials and a State outlet, ready for a [bpatcher]. Control inlets take numbers |
| _br.filter.example.1.1 | Example patch: open this first |

`<type>` is one of: lowpass, highpass, bandpass, resonbp, notch, allpass, peak, lowshelf, highshelf, biquad, lowpass.lvl, bandpass.lvl. Each .ui version contains its plain version, so keep both files together. Open a .ui version in patching mode to see how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.  

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming. This allows you to parlay your Max knowledge into more efficient work in the future, and will help you create programming systems that are modular and easier to maintain.

## <a name="Install"></a>How To Install 

1. Make sure you have Max 9 installed in your computer. And, make sure you are using a Max patch that is inside of a folder.  

2. Copy the files you want into the same folder as your Max patch. Each .ui version needs its plain version next to it (br.filter.lowpass.ui.1.1 uses br.filter.lowpass.1.1).

3. For the version with dials, create a bpatcher object. Then, go inside of its inspector, select "choose" next to "Patcher File" and select the .ui file (for example br.filter.lowpass.ui.1.1.maxpat). Size the bpatcher to show all of the controls:

| .ui version | Size |
|---|---|
| allpass, bandpass, notch | 100 x 77 |
| bandpass.lvl | 98 x 83 |
| lowpass, highpass | 116 x 77 |
| resonbp | 123 x 85 |
| peak | 127 x 79 |
| lowshelf | 141 x 76 |
| highshelf | 152 x 77 |
| biquad | 164 x 79 |
| lowpass.lvl | 170 x 79 |

4. For the plain object, create an object with its name (for example: [br.filter.lowpass.1.1], do not include brackets) and control it through its inlets (see below).

## <a name="Use"></a>How To Use

The first two inlets are your stereo audio. Every control has its own inlet after that, in the same order as the dials. The plain object takes a number or a signal in every control inlet; once a signal is patched in, numbers sent to that inlet are ignored (the signal wins), as with any MSP inlet. Every control glides 10 ms inside, so even a jumping signal never clicks. The .ui version takes numbers only: sending a value moves its on-screen dial too, so the display always matches the sound, and values outside a dial's range are limited to that range. Hover over an inlet in Max to see its range and default.

Every abstraction starts with the same four inlets (Left, Right, Cutoff, Q), so you can swap one filter for another without rewiring them.

**lowpass, highpass, resonbp, lowpass.lvl**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Signal or Float (UI: Float) | 20 - 20000 Hz | 1000 |
| 4 | Q | Signal or Float (UI: Float) | 0.1 - 20 (resonbp: 0.1 - 40) | 0.7071 |
| 5 | Autogain | Signal or Int (UI: Int) | 0 / 1 | 0 |

**bandpass, notch, allpass, bandpass.lvl**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Signal or Float (UI: Float) | 20 - 20000 Hz | 1000 |
| 4 | Q | Signal or Float (UI: Float) | 0.1 - 40 | 0.7071 |

**peak**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Signal or Float (UI: Float) | 20 - 20000 Hz | 1000 |
| 4 | Q | Signal or Float (UI: Float) | 0.1 - 40 | 0.7071 |
| 5 | Gain | Signal or Float (UI: Float) | -24 - 24 dB | 0 |

**lowshelf, highshelf**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Cutoff | Signal or Float (UI: Float) | 20 - 20000 Hz | 1000 |
| 4 | Q | Signal or Float (UI: Float) | 0.1 - 20 | 0.7071 |
| 5 | Gain | Signal or Float (UI: Float) | -24 - 24 dB | 0 |
| 6 | Autogain | Signal or Int (UI: Int) | 0 / 1 | 0 |

**biquad**

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | audio | |
| 2 | Right In | Signal | audio | |
| 3 | Type | Signal or Int (UI: Int) | 0 - 9 | 1 (lowpass) |
| 4 | Cutoff | Signal or Float (UI: Float) | 20 - 20000 Hz | 1000 |
| 5 | Q | Signal or Float (UI: Float) | 0.1 - 40 | 0.7071 |
| 6 | Gain | Signal or Float (UI: Float) | -24 - 24 dB | 0 |
| 7 | Autogain | Signal or Int (UI: Int) | 0 / 1 | 0 |

**Outlets (all filters)**

| Outlet | Name | Type |
|---|---|---|
| 1 | Left Out | Signal |
| 2 | Right Out | Signal |
| 3 | State (.ui versions only) | Message, see [State outlet](#State) |

For a mono sound, connect it to both Left In and Right In.

**With filtergraph~:** filtergraph~'s outlets, left to right, are coefficients, cutoff, gain and Q. Connect its 2nd outlet (cutoff) to Cutoff and its 4th outlet (Q) to Q. Its gain is linear, so put [atodb] between its 3rd outlet (gain) and the Gain inlet. Set filtergraph~ to the same filter shape as the abstraction. filtergraph~ names a few types differently: flat = bypass, bandstop = notch, peaknotch = peak, resonant = resonbp.

## <a name="State"></a>State outlet

The last outlet of the .ui versions (State) sends the current settings as named messages the moment they change, from a dial move or a number into an inlet: for example `cutoff 1000.`, `q 0.7071`, `autogain 0`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range | Filters |
|---|---|---|---|
| type | Int | menu index 0 - 9, the same number the Type inlet takes | biquad |
| cutoff | Float | 20 - 20000 Hz | all |
| q | Float | 0.1 - 20 or 0.1 - 40 (as the Q dial) | all |
| gain | Float | -24 - 24 dB | peak, shelves, biquad |
| autogain | Int | 0 / 1 | lowpass, highpass, resonbp, shelves, lowpass.lvl, biquad |

Each message uses the same units as its inlet, so a State message can go straight back into an inlet. The plain versions have no State outlet: whatever drives them already knows the values.

## <a name="Example"></a>Example Patch

Open _br.filter.example.1.1.maxpat (keep it in the same folder as the abstractions). The first page introduces the family; the tabs at the top hold the examples. Each tab has its own source menu (saw, noise or microphone) and its own output. Turn on the audio with the toggle, then raise the gain slider, which starts muted.

- **biquad:** Pick a type from the menu, then drag the curve in filtergraph~. The menu sets the biquad's Type and filtergraph~'s shape together.
- **lowpass-highpass, bandpass, notch-allpass, eq:** All of the tab's filters run at once. The listen menu chooses which one you hear, with a 20 ms crossfade, and "dry" plays the unfiltered source to compare.
- **notch-allpass:** Pick "allpass + dry" and sweep Cutoff to hear the allpass cut a notch when it is mixed with the dry signal: the basis of a phaser.
- **lfo:** LFOs patched straight into the plain objects, no dials: a sine sweeping a lowpass's Cutoff (in MIDI notes through [mtof~], so the sweep sounds even), a sine pumping a peak filter's Gain, and a [phasor~] ramp rising through a bandpass.lvl's Cutoff. The controls no LFO drives are set with plain numbers.
- **lfo 2, lfo 3, lfo 4:** the same idea for the other nine plain objects: highpass, lowpass.lvl (an LFO on Q) and biquad (with a Type menu); bandpass, resonbp (Autogain on, so its Q 12 peak stays at 0 dB) and notch; allpass (mixed half and half with dry, a phaser), lowshelf and highshelf (an LFO on Gain).
- **State outlet:** reads the biquad tab's settings by name with [route]. The biquad tab also sends them back to filtergraph~, so the curve follows the dials.

## <a name="Credits"></a>Credits

Filter formulas from the Audio EQ Cookbook by Robert Bristow-Johnson.
