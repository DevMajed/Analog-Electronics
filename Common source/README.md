# Common Source Amplfier Ciruits 
" The info here are mostly coppied from my report as a sophomore student "

# Basic Intro
Common source amplifiers are well known voltage amplifiers that has many applications in real world. There are many configurations for CS amplifier, some of these configurations make the gain more dependent on the value if gm which is proportional to the value of  VT while other configurations are less dependent on these manufacturing parameters. To make the amplifier less dependent on these parameters, all it takes as adding a resistor to the source as will be shown and explained in the theory part of the lab. amplifiers also need to be biased to a certain Q-Point to make them operate without having clapped output, and there are many types of biasing, some of them will be explained in the theory part as well. \
In this lab, the gm values of transistor will be studied and computed in two different MOSFETS. These two vales of gm will then be used to generate the gain of each transistor and compare the theoretical results with the results obtained from the oscilloscope. Lastly, a circuit with a resistor in the source tegmental will be built in order to reduce the gm effect on the gain. \

# The three circuits in this project

Basic Common Source Amplifier

<img width="332" alt="Screen Shot 2020-06-14 at 7 18 30 PM" src="https://user-images.githubusercontent.com/66625688/84606431-247f8e00-ae74-11ea-9dfe-457ec9c40afd.png">

CS Amplifier with Source Grounded

<img width="452" alt="Screen Shot 2020-06-14 at 7 18 37 PM" src="https://user-images.githubusercontent.com/66625688/84606427-1af62600-ae74-11ea-85fb-4e5732810617.png">


CS Amplifier with Source Resistor

<img width="451" alt="Screen Shot 2020-06-14 at 7 18 45 PM" src="https://user-images.githubusercontent.com/66625688/84606419-09148300-ae74-11ea-9129-215f283b63b8.png">



# Methods

The first task of the lab was to measure the gm value for two MOSFETs with different VT values. the two MOSFETS were measured using a testing machine and found to be 1.3V and 2.8V. the resistor RD  was also measured, which as a series of four resistors of 56 Ohms. The output was found in order to compute the value of gm¬¬. the same steps were repeated again using the other MOSFET and the wave form was as follows

Vout for Small Value VT

<img width="362" alt="image" src="https://user-images.githubusercontent.com/66625688/84606306-18470100-ae73-11ea-92e8-38ddc18d363f.png">

Vout for Large Value VT

<img width="365" alt="image" src="https://user-images.githubusercontent.com/66625688/84606315-2137d280-ae73-11ea-987a-09e6dde03b37.png">

Next, the circuit in figure 2 was built in order to fin the output voltage and then find the gain. \
This was done for both transistors with high and low gm values. the output wave form was as shown in the next two figures. 

The output for a small gm

<img width="306" alt="image" src="https://user-images.githubusercontent.com/66625688/84606341-504e4400-ae73-11ea-8e6a-3adc0c023d41.png">

The output for large gm

<img width="300" alt="image" src="https://user-images.githubusercontent.com/66625688/84606332-4298be80-ae73-11ea-9267-fb485d722f20.png">


In the last part of this lab, the circuit in figure 5 was built by replacing the DC biasing supply with a voltage divider. The output waveform was generated in order to compute the gain as shown in the next two figures.

Output of large valued gm

<img width="220" alt="image" src="https://user-images.githubusercontent.com/66625688/84606352-678d3180-ae73-11ea-808c-10228834ea6c.png">


Output of small valued gm

<img width="220" alt="image" src="https://user-images.githubusercontent.com/66625688/84606355-783da780-ae73-11ea-8982-6f78f0683894.png">


# Results

<img width="469" alt="image" src="https://user-images.githubusercontent.com/66625688/84606359-8a1f4a80-ae73-11ea-87dd-036135910ef6.png">

# Theory and Analysis of the circuits

Since MOSFET input impedance is very high, they make a very good amplifier that is easy to bias. To bias a MOSFET, it must operate in the saturation region, and specifically in Q point that makes them linear without giving a clipped output. When a positive voltage applied to the gate of n-type MOSFET, a channel will be created allowing the electrons to move freely between drain and source, but this voltage have to overcome the threshold voltage. In order to use MOSFET as an amplifier, the gate must be biased at a point above the threshold voltage. There are many ways to bias the gate, one of the most famous methods is the voltage divider biasing, which was used in common emitter lab as well. One important parameter in MOSFETs is the transconductance. Transconductance or gm relate the output current Id to the input voltage Vgs, and for a constant value of VDS, the transconductance is change in the output current divided by the change in VGS, or simply gm = 2Id/(Vgs-Vt) . seeing this equation, it easy to notice that the transconductance vary between one MOSFET and another, which will be seen in the first part of this lab. The importance of transconductance is that the voltage gain of MOSFET amplifier is proportional to it and to the drain resistor. 


In the second part of this lab, two voltage sources, AC and DC, will be used before the gate terminal. This is done for biasing porpoises. The DC voltage will overcome the threshold voltage creating a channel, and then the over all voltage at the gate will be VGS from the DC voltage and the small signal voltage added together, which will insure that the sinusoidal voltage will swing freely. Doing this, VGS will increase and decrease responding to the Vi swing, which will result in a current Id  swinging between large current and small current. In order to get a distortion less output, a Q-point must be set positioned halfway between VDD and V¬T. in the first part of the lab, of the threshold is 3V and VDD is 15, the DC bias point will be 15-3 = 12V, Divided by 2 or 6V.  


In the last part of the lab, a source resistor was used in constructing the common source amplifier. In this part, the voltage divider biasing method was used which eliminate the need of a DC voltage supply at VGS. \
As we can see in figure 2, the voltage VDD¬ is (ID*RD)+VDS+(ID*RS) or simply RD=(VDD-VD)/ID and RS=VS/ID. And the VGS=VG-IsRs. And since IS is equal to ID, VGS=VG-IdRs or VG=VGS+ VS. And to make the MOSFET operate, VG must be above the threshold voltage, which will be achieved using the right voltage divider. \
It is worth noting that the coupling capacitor is used to avoid any DC noise and to make the circuit stable. The most important thing in this circuit is that the source has a resistor instead of ground. This is done to stabilize the circuit gain, which means to make it less dependent on gm. the way this circuit is stabilized is by the fact that VGS =VG – VS, or  VGS =VG – ID¬RS. if VG is constant, and ID increases, VGS will absolutely decreases, But when VGS decreases, ID should decreases correspondingly, thus, the circuit will be stabling itself. \
This effect shows also that a negative feedback as with high current ID a high voltage drop in RS will occur decreasing the output voltage. \
The output voltage in this circuit is Vo=I*RD ¬where the current in the source is \
I = = Vi/(1/gm+Rs) which means the gain AO = -RD/(1/gm+Rs). \
it can be clearly seen that there is a trade-off between performance and gain as in this circuit the gain will be decreased by a factor of 1/gm+Rs, which is the amount of negative feedback. In the gain equation it is obvious that the gain is always the gain is less dependent on gm¬ since we introduced Rs for the gain equation. \
One last thing to mention is that the gain of the common source amplifier will always be -(total resestoins in drain)/(total resestance in source), so when we drop the Rs from the equation we will get the previous obtained gain of the ground source CS amplifier.



