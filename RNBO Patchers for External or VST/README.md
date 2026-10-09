# Max/MSP RNBO Patches for External Creation: br.filter.<type>.rnbo.1.1  
   
By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/) 
  
Repository for br.filter.1.1, with all related files, can be found here: [https://github.com/guaguanco127/br.filter](https://github.com/guaguanco127/br.filter)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents 

[About](#About)   
[Params](#Params)  
[What is an External for Max/MSP?](#External)  
[How To Export as a Max/MSP External](#Export)  
[A Note on VST and AU Plugins](#VST)  
[Credits](#Credits) 

## <a name="About"></a>About

One RNBO patch per filter in the family: allpass, bandpass, bandpass.lvl, biquad, highpass, highshelf, lowpass, lowpass.lvl, lowshelf, notch, peak and resonbp. Each is a stereo filter built from the RBJ Audio EQ Cookbook biquad formulas, with click-free controls.

Inside each [rnbo~], the controls are params, and inlets 3 and up set the same params, so each external has the same inlets and outlets as its plain abstraction br.filter.<type>.1.1: L, R, then the controls / L, R. The gen~ code inside is the same as the plain abstraction, so you can also copy it into your own RNBO patches. To try one, drop a sample into the [playlist~] and use the attrui controls.

There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="Params"></a>Params

| Param | Range | Default | In |
|---|---|---|---|
| Type | bypass, lowpass, highpass, bandpass, notch, peak, lowshelf, highshelf, resonbp, allpass | lowpass | biquad |
| Cutoff | 20 - 20000 Hz | 1000 | all |
| Q | 0.1 - 40 (0.1 - 20 on lowpass, highpass, the shelves and lowpass.lvl) | 0.7071 | all |
| Gain | -24 - 24 dB | 0 | biquad, peak, lowshelf, highshelf |
| Autogain | Off / On | Off | biquad, lowpass, highpass, lowpass.lvl, resonbp, lowshelf, highshelf |

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way. 

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open the patch for the filter you want, for example br.filter.lowpass.rnbo.1.1.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object after the filter with a ~ at the end, for example br.filter.lowpass.1.1~, and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object with that name in any patch. It has the same inlets and outlets as the plain abstraction, except that the controls take numbers only.

## <a name="VST"></a>A Note on VST and AU Plugins

RNBO can also export these patches as VST3 or AU plugins (Export Sidebar > Audio Plugin Export). The params become the plugin's parameters, so Cutoff, Q and Gain can be automated in your DAW.

## <a name="Credits"></a>Credits

Filter formulas from the Audio EQ Cookbook by Robert Bristow-Johnson.
