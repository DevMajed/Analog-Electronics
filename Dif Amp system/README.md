# Analog-Electronics

This is a complete setup or a system that was made in order to test the Differential pair amplifier. \
This experiment uses five sub-circuits to demonstrate the capability of differential amplifiers to reject common-mode noise while amplifying differential-mode signals. \
The circuit is comprised of one oscillator, one inverting amplifier, two weighted summers and one differential amplifier.
This is a screen capture of the noise disconnected. \

# The Five Circuits

Inverting Amplifier :
An inverting op amp amplifier with a gain of −1 is used to generate fully-differential 1 kHz 20 mV-peak input signals, Vp and Vm
<img width="788" alt="Screen Shot 2020-06-14 at 6 37 21 PM" src="https://user-images.githubusercontent.com/66625688/84606210-eaad8800-ae71-11ea-8c92-424e7fd0ba6f.png">


Oscillator :
An op amp relaxation oscillator is used to generate a 20 kHz 120 mV-peak common-mode “noise” signal, Vnoise.
<img width="788" alt="Screen Shot 2020-06-14 at 6 37 41 PM" src="https://user-images.githubusercontent.com/66625688/84606214-f13bff80-ae71-11ea-9f28-975ed1c1c4ee.png">

Two Weighted Summers:
Two op amp weighted summer circuits are used to add common-mode “noise” to the fully-differential input signals and generate the two inputs to the differential amplifier, Vi1 and Vi2.
<img width="788" alt="Screen Shot 2020-06-14 at 6 38 29 PM" src="https://user-images.githubusercontent.com/66625688/84606220-f7ca7700-ae71-11ea-8025-3776f8c04d2a.png">


Differential Amplifier:
The differential amplifier attenuates common-mode signals while amplifying differential-mode signals, thereby extracting the differential-mode signal from the common-mode “noise”.
<img width="788" alt="Screen Shot 2020-06-14 at 6 38 48 PM" src="https://user-images.githubusercontent.com/66625688/84606221-fe58ee80-ae71-11ea-8d75-bb08cc5bc300.png">



# System Schematic
<img width="544" alt="Screen Shot 2020-06-14 at 6 39 47 PM" src="https://user-images.githubusercontent.com/66625688/84606205-db2e3f00-ae71-11ea-83f9-4d18e8e27bd8.png">

# Studying the two modes 
" This is from my notes as a sophomore when i took thus lab"

# Common-Mode Gain
Because a common mode voltage was applied to the two inputs vi1 and vi2, and beceause  Q1 and Q2 are matched and the constant current source have infinite output resistance, the current was  divided equally between Q1 and Q2. This was due to symmetry, whcih means IE1=IE2 = I/2. \
The voltage at the emitters is VCM-VBE, where VBE is 0.7V. this means both collectors will have voltages Vc1=Vc2 = (I/2)*Rc, and this gives an output voltages Vc1-Vc2=0 and a gain ACM=0. 

# Differential mode Gain
The case 1 if a large differential signal was applied, so if VB1 is larger than VB2 that the current will be shifted to another direction, and for this to happen the differential signal has to be larger than half of the thermal voltage. if VB1=1 and VB2=0 with a negative supply in the current, all the current going to flow through Q1 where IC1 = I and IC2 =0, so Q2 will be in cut off. In this case both emitters have the same voltages so if VB1 =1 both emitter voltages will be 1-0.7 since they are connected together, however since Q2 in cut of, 0.3v will not be enough to run it, so all the current is going to Q1. In that case, the collector voltage of Q1 will be VCC-IRC where the collector voltage at Q2 will be only VCC as no voltage drop at its resistor. The opposite will occur when we inverse polarity by making VB1=0 and VVB2=1. 
In case 2, if we have small differential signal that is half the thermal voltage, if small increase happen in VB1 with respect to VB2 will cause a small increase in base voltage of Q1, which will cause a small increase in VBE, and that will cause a small increase in the collector current in Q1 since Ic = IS (e^VBE/VT). The increase will be by IC = I/2 “due to biasing” +the change in Ic  “the small signal collector current”.  Due to symmetry, the increase of IC in Q1 will cause a decrease in the current in Q2 so the total is equal to I from the current mirror. this case helps us to use the circuit is an amplifier because the output current and the output voltage proportional to the differential input signal, and this can be seen by: \
 VC1 = Vcc-(1/2 I+ΔIc)*RC \
VC2 = Vcc-(1/2 I-ΔIc)*RC \
V0 = V¬C1-VC2 = VC1 = (2Δ (Ic)*RC \
Hence, we can see that this amplifier fully amplifies the defiantly signals and fully reject the common mode signals.
To analyses the circuit, the first observation is that 
Vicm = (v1+v2)/2, Vid = v1 – v2, which means v1=Vicm+Vid/2 and v2=Vicm-Vid/2.
For the common mode, both terminals will have the Vnoise voltage, which means the collector currents are equal Ic1 = Ic2 = ½ Iref. which means Vc1 = Vc2 = VCC – ½ Iref (6800), therefore, the common mode gain is input/output Acm=  (Vc1-vc2)/(vnoise-vnoise)= 0.
If we were to analyses the circuit using the half model, the circuit will look like a common emitter amplifier, and the resistance at the emitter will be nothing but ro from the current mirror, hence, the output will be vo =vcm  Rc/2ro. \

The second part is analyzing for the differential input. Since the input for Q1 is the signal Vm which is a the inverted signal of vp, and since Q2 has a higher input voltage vp, IC2 =  I/2+ΔIc where ΔIc=gm(Vd/2) where Vd/2 is the input. \
IC1 will go down by the same amount so IC1=I/2-gm(Vd/2). \
Due to these changes in collector current, a change in VCE¬ ¬will be induced. \
VC2= Vcc-(I/2+gm(Vd/2))*Rc and Vc1 = =Vcc- (I/2-gm(Vd/2))*RC. \
The differential gain will be =(vo1-vo2)/(vi1-bi1)=(Vc1-vc2)/vid=-gm(Rc) or Rc/re.
Lastly, to find CMRR, which is the common mode rejection ration, we divide the common mode gain by the differential gain to get -gmRc/0, which is for the ideal case infinity, however that won’t be the cause in the lab due to the mismatches in gm, Rc and other parameters. To take the error into account, CMRR is approximately equal to 2gmR/((change in RC values)/RC). Where R is the Thevenin resistance at the current source, or ro, and this shows how important the output resistance of the current sources is, which is in our cause from the current mirror. 


Here is a screen capture of the noise disconnected and the system in Differential-Mode Gain.
![differentialamplifieroutput](https://user-images.githubusercontent.com/66625688/84606255-68719380-ae72-11ea-9f05-98478ff3b30d.png)


