# Common Emmiter Amplifier Circuits


## General info
The common emitter amplifier accepts AC signal inputs and amplifies the entire AC input signal. \
For this circuit to work however, the common emitter amplifier requires biasing to operate between the minimum and maximum peak values on the input signal. \
It is also necessary to keep the transistor operating in active mode. \
In amplifier design, minimizing distortion is a major issue. The Q-point or quiescent operating point of an amplifier is the DC operating current or voltage at the transistor with no input signal supplied. \
The Q-point for a transistor is typically half of the supply. \
 
Voltage Divider Biasing
To achieve correct biasing, R1 and R2 must be chosen to maintain the base voltage at the transistor at a constant level. The base voltage VB is a function of the supply voltage and the two resistors at the base of the transistor.

<img width="592" alt="cea2" src="https://user-images.githubusercontent.com/66625688/84604966-9ac9c380-ae67-11ea-9625-785410b9aea2.png">


Once the amplifier is properly biased, the voltage gain calculation is shown below. \
An important note is that the gain of the circuit is different for low frequencies than it is for high frequencies and the gain is then a function of the load resistance and the internal resistance of the transistor. \
Coupling capacitors C1 and C2 are used to separate the AC input signal from the DC biasing voltage.

<img width="672" alt="cea3" src="https://user-images.githubusercontent.com/66625688/84604968-a6b58580-ae67-11ea-8202-7d0b20b444b9.png">


# About the project 
In this project i tested two circuits, \
CE Amplifier with a pasive load where ro is not importent, and CE Amplifier with active load where ro has a big role to play. \
The goals of the projects are :
* Determining npn BJT gm value \
* Determining npn BJT ro value for the passive circuit and for the active circuit \

The Passive load CE Amplifier 
<img width="461" alt="Screen Shot 2020-06-14 at 5 54 37 PM" src="https://user-images.githubusercontent.com/66625688/84605546-1cbbeb80-ae6c-11ea-97d6-d5652f07c4de.png">


The Active Load CE Amplifier
<img width="461" alt="Screen Shot 2020-06-14 at 5 54 29 PM" src="https://user-images.githubusercontent.com/66625688/84605569-73292a00-ae6c-11ea-8f53-75a5cef49b53.png">


In these circuits the AC and DC voltages add up two create the base voltag. The current IB and IE  as well as the voltage VCE will be  affected by both sources.\ 
This means if the current Ibac ( the base current due AC source ) has an amplitude of 1.47uA, and the current IBac ( the base current due to DC) has value of 5.9uA, then with the addition of the sinusoidal source IB will be ranging from 4.43uA to 7.73uA. This should not take the BJT out of the Q-point unless the AC source become too high.  \
Here are some screenhots of my superposition AC and DC analyses that i did when i took the lab as an undegrad

<img width="491" alt="image" src="https://user-images.githubusercontent.com/66625688/84605214-9900ff80-ae69-11ea-8d79-804381570d75.png">


In the second circuit, the load is active current mirror  brcause it is always preferred to replace resistors with current sources when designing an IC.

Analysing the circuit 

<img width="502" alt="image" src="https://user-images.githubusercontent.com/66625688/84605272-26445400-ae6a-11ea-8731-ceae512c125b.png">

# Method 
"This is copied from my report when i did the lab as a sophomore"


In the first part of the lab, the circuit in figure 1 was built. \
The DC voltage was adjusted while the AC input is off, until the output is 8V. \
The collector current was then measured to be (15-8)/560 =0.125 and then to find the gm value IC/VT=0.0125/25mV=0.5. \
To find the ro value, RC was replaced with a 330 Ω resistor and Vout was remeasured, and having new Vout, a new IC was also found by (15-11.9)/330=9.3 mA. Having two voltages and two current values, ro was determined since it is equal to the change in VCE divided by the change in IC, ro = (11.9-8)/(0.125-0)=14 ohms. \
Then, RC was restored to 560Ω. Lastly, the output voltage and the input voltage were measured using the oscilloscope and the gain was found by 1.652/10.20mV=161, as well as by -gm(RC||ro)=

For the second circuit, the current mirror was built and ro value was found the same way using two resistors for RC 560Ω  and 330Ω. \
After finding ro, the circuit in part 1 was used, however the load resistor of 560Ω was replaced with the pnp current mirror. \
V2 was not changed scientifically in order to make a good comparison, however it was altered a little bit to make the transistor in the active region. \
The output and input voltages were measured, and the gain was found by Vout/Vin, as well as by -gm(ro,n||ro,p).



# Results 

Output of the first circuit 

<img width="488" alt="image" src="https://user-images.githubusercontent.com/66625688/84605593-9eac1480-ae6c-11ea-9d0b-69ea9d1a4952.png">


Output of the second circuit

<img width="430" alt="image" src="https://user-images.githubusercontent.com/66625688/84605604-b2f01180-ae6c-11ea-954f-e9cb280a92fa.png">

# Conclusion 
In conclusion, it can be seen that the active load gives a larger gain with more stability in terms of biasing. Since ro is always very high valued, it caused the circuit to have a larger gain. This lab shows how important ro can be and how sometimes it should not be neglected in calculations. 


