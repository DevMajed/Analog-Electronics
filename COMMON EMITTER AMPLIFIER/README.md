# Common Emmiter Amplfier Circuits



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


In the attached project i tested two circuits, CE Amplfier with a pasive load where ro is not importent, and CE Amplfier with active load where ro has a big role to play. \
In this circuit the AC and DC voltages add up two create the base voltag. The current IB and IE  as well as the voltage VCE will be  affected by both sources.\ 
This means if the current Ibac ( the base current due AC source ) has an amplitude of 1.47uA, and the current IBac ( the base current due to DC) has value of 5.9uA, then with the addition of the sinusoidal source IB will be ranging from 4.43uA to 7.73uA. This should not take the BJT out of the Q-point unless the AC source become too high.  \
Here are some screenhots of my superposition AC and DC analyses. 

<img width="491" alt="image" src="https://user-images.githubusercontent.com/66625688/84605214-9900ff80-ae69-11ea-8d79-804381570d75.png">


In the second circuit, the load is active current mirror  brcause it is always preferred to replace resistors with current sources when designing an IC.\

Analysing the circuit 

<img width="502" alt="image" src="https://user-images.githubusercontent.com/66625688/84605272-26445400-ae6a-11ea-8731-ceae512c125b.png">




