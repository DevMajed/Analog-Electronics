# Op-amp Frequency Compensation
" Mostly coppied from my lab report as an undergrad student"

Feedback is a method that is used to make the circuit less dependent on the parameters of the transistors, however there are always trade-offs. Due to capacitances in the circuit, sometimes a lag of 90 degree from each pole of the capacitances will cause the output to lag behind the input by 90 degree, which could in total become 360 degree and make the negative feedback circuit to become positive feed back circuit. there are other problems also can be cause in unstable amplifiers, however these problems can be solved by Op-amp Frequency Compensation \

In his lab an uncompensated amplifier and a compensated will be built and in both cases the gain of a voltage follower will be found and compared. A negative feedback amplifier will also be implemented in an uncompensated to so weather it get affected by the poles of the circuit or no.


# The curcuits 


<img width="409" alt="image" src="https://user-images.githubusercontent.com/66625688/84606884-7d045a80-ae77-11ea-95db-b20b40bde4b5.png">



# Theory and Analysis 

So far, we have seen that in transistor amplifiers, the gain, input and output characteristics, input and output resistances, are all dependent parameters such as beta, which itself depend on temperature as well manufacturing. Feedback is one of the methods that is used to make circuits less dependent on these parameters, at it can been done by taking part of the output and feeding it back to the input. this can be done using general feedback “negative” where portion of the output signal is subtracted from the input signal, and it can be done using a positive feedback where portion of the output signal is added to the input signal. Negative feedback is used to stabilize the circuit while the positive feedback is used to destabilize it like in the design of oscillators.  \
When having an unstable system, it can be converted to a stable system by frequency compensation. For an op-amp, there will be three stages, differential input stage, gain stage, and the output stage. The frequency response of an op-amp will be determent by two main poles which determent by resistance and capacitances between stages. These capacitances can cause the output to lag behind the input by 90 degrees for each pole they create, which means if the some of these lags reach 360, the output and input will be in phase, and feeding back any portion of that output to the input will cause the circuit to become a positive feedback circuit rather than a negative feedback as it was originally, hence, frequency compensation is used to avoid this problem. In Op-amps, having poles and zeros in the frequency response, there will be always a frequency where the phase of output is -180 what makes the amplifier oscillate if it has a gain of one or more, which means this will occur even if the amplifier is as simple as a voltage follower. That means, the amplifier will always oscillate at the frequency where the open loop gain qual the closed loop gain.  \
For this lab, this concept will be tested by first building voltage follower in uncompensated amplifier. The voltage follower should have an unstable ringing output with a gain larger than unity as indicated in the theory above, then, the circuit will be compensated by adding a capacitor and resistor to the circuit, and by reducing the frequency bellow the pole of the circuit which is the point of the frequency  where the amplitude get reduced bellow 3dB. 

# Method
The circuit shown in figure 1 was built and a signal Vin was feed into the gate of the transistor U2 while the inverting terminal from the gate of U1 was sent to the output by a wire, where the output is the emitter of U3. this was done in order to create a voltage follower circuit. The output was generated and compared to what was expected in the theory part of the lab.  \
For the second part, a non-inverting amplifier was built by sending the input signal to the gate of U2 and by connecting a resistor R1 between the output, the emitter of U3, and then connecting it to one node with the inverting terminal at the gate of U1 where a transistor R2 is also connected to the node and sent to ground. In order to make the gain of the circuit 101, R1 was choose to be R1= 100K ohms, R2=1000.  \
For the compensating part of the lab, a resistor of 100 ohms and a capacitor of 0.01 micro farad were added to the amplifier shown in figure 1. The modified circuit is shown in figure 2. Doing the same steps as before, the voltage follower configuration was tested and the frequency of the input was reduced to 500 hertz, and the results were depicted.  

<img width="410" alt="image" src="https://user-images.githubusercontent.com/66625688/84606918-bdfc6f00-ae77-11ea-9c80-31c0951b2e7e.png">




