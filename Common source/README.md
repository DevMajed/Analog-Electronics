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



