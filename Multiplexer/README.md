# Mux

# Fast Intro
In this lab, multiplexer will be studied by applying it to real life problem. The chip that will be used is the 8 bit 74151. Some logic gates will also be needed to perform the experiment.
Multiplexers are devices used for analog and digital signals. They control the input signals and choose which signal will be passed to the output and which one will be blocked, and that is done by the switching property of MOSFET transistors and other method. In this lab, the objective is to use multiplexer in order to count the number of shares each person has in a company. When someone vote yes, or 1, the output should display his or their shares.\


<img width="407" alt="Screen Shot 2020-06-17 at 1 04 25 AM" src="https://user-images.githubusercontent.com/66625688/84857215-8a1b7800-b036-11ea-8fd2-e4c825ec5cfd.png">


From the truth table, a diagram of the circuit can be constructed. For the 4 multiplexers, where the 3 inputs are set to z, y, and x, and the enable is set to w. From here the 8 inputs of the 4 multiplexers are chosen. 
Inputs were chosen by grouping boxes in the truth table. For instance, decimals 0 and 1 for output 1 where group, decimals 2 and 3, and so on. Once the 16 outputs for each binary bit where grouped to become 8, the circuit inputs where chosen from the pattern shown in table 2

<img width="407" alt="image" src="https://user-images.githubusercontent.com/66625688/84857268-a3242900-b036-11ea-894c-e77b045ba214.png">


# Result
<img width="768" alt="image" src="https://user-images.githubusercontent.com/66625688/84857310-bc2cda00-b036-11ea-8d55-24b6317d9cda.png">

Attached above a basic form of Mux
