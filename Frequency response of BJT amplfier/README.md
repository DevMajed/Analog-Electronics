# Frequency response of BJT amplfier
" This is mostly coppied from my lab report as a student when i took this lab "

# Basic Intro
input resistance and output resistance have a relationship with frequency that was neglected in the previous labs since we were using DC and AC analyses that is true only in the mid-band region. The low and high frequencies are the frequency that create the bandwidth where amplifiers work correctly, however, outside of these bands, frequency can make the output reduced to zero. The reason for that comes from the intrinsic and coupling capacitors in transistor amplifier. 

In this lab, the relationship between frequency and gain will be studied both theoretically and experimentally. This will be done by creating an amplifier and then reduce the input frequency until we reach the low cut off frequency, and then the input frequency will be increased until we reach the high cut off frequency.  

# The curcuit

<img width="661" alt="image" src="https://user-images.githubusercontent.com/66625688/84606679-0c107300-ae76-11ea-80e6-aefcc8ec6e1e.png">


# More info and Theory behind the circuits
The previous labs, we had made an assumption that the small signal gain, input resistance and output resistance were independent of frequency, because of the DC analyses we have assumed all the capacitors at open while in AC analyses we saw them as a short circuit. In the previous amplifiers we have assumed that the gain is constant over all the frequency, however that is only true over the mid-band frequencies as shown in figure 1.

figure 1:
<img width="373" alt="image" src="https://user-images.githubusercontent.com/66625688/84606573-3f063700-ae75-11ea-8db0-f110bf3800f6.png">

The low and high cutoff frequencies are the frequencies where the mid-band gain falls 3-dB bellow mid-band region or the maximum value, or -3dB, and we can see that the bandwidth is FH-FL. the reason why the gain fall in the low frequencies is the coupling and bypass capacitors, while the reason for the fall at the high frequencies is due to the wire capacitances, internal BJT capacitances, and the load capacitances. The coupling and by bass capacitor producing a response that is a high pass response. Figure 2 shows the resistances and the capacitances associated with an amplifier.


figure 2:
<img width="355" alt="image" src="https://user-images.githubusercontent.com/66625688/84606588-4f1e1680-ae75-11ea-9855-09948e0b2fa4.png">


Taking the Thevenin resistance in the left hind side by shorting the voltage source we find that the two left resistors are in series as they both connected to ground, hence, the cutoff frequency interduce by the left capacitor is 1/(2pi(Rs+Rin)) CC1. And similarly the cutoff frequency interduce by the left capacitor is 1/(2pi(rout+Rl)) CC2. These cutoff frequencies are found by the basic analyses of fist order RC circuits. The next step to find the dominant cutoff frequency which will be done by calculating each cut-off frequency indecently with shorting all other capacitors and then choosing the largest cut-off frequency since it will be the closest to the full gain of the amplifier. \

For the high frequency response, the gain get reduced due to the internal, story, and load capacitances. These capacitances will form low pass filters and similer to the previous analyses. Each cut-off frequency will be found, however this time the lowest cut-off recusancy will be the domenant since it will  be the closist to the full gain of the amplifier. In bjt, the most important capacitors are the capacitance from base to collector Covo, and another capacitor from base to emitter Cibo¬.figure 3 shows the capacitors in small signal model as well as in the BJT symbol.


figure 3:
<img width="321" alt="image" src="https://user-images.githubusercontent.com/66625688/84606598-63621380-ae75-11ea-9809-3324fe36232b.png">


There are other things that will affect the high frequency response, these things are the resistive load, the capacitance due to the load, and Mellor effect. There load resistance and capacitance does not have a large effect, however Mellor effect does. Mellor effect states that when a capacitance is connected between the input and the output such as in CE amplifier, the result is smiler if there were two capacitors in the circuit one for input and one for output and their values are shown in figure 4. 

<img width="177" alt="image" src="https://user-images.githubusercontent.com/66625688/84606607-7a086a80-ae75-11ea-8357-7a8584b60e70.png">

# Methods

The circuit in figure 1 was built with an input voltage of 400 mV peak to peak, and the input and output voltage were generated in order to find the gain and compare it to the pre lab results. Then, the input frequency was reduced until the output was .7 times the previous output in order to find FL. Lastly, the frequency was increased until the output again reach 0.7 times the old value in order to find FH. The results shown in the next section of the report. \

The output before reducing or increasing the frequency:

<img width="308" alt="image" src="https://user-images.githubusercontent.com/66625688/84606629-a623eb80-ae75-11ea-8d84-0a8780c7f1ca.png">

The output after reducing the frequency:

<img width="314" alt="image" src="https://user-images.githubusercontent.com/66625688/84606638-b8058e80-ae75-11ea-8356-43efd477e81e.png">

The output after increasing the frequency:

<img width="308" alt="image" src="https://user-images.githubusercontent.com/66625688/84606640-bf2c9c80-ae75-11ea-9b1c-c99d60ce0b1d.png">







