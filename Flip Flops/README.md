# Flip Flops

SR latches are asynchronous devices that work without the need of a control signal, as the output depend only on S and R inputs or set and reset. They can be made of two coursed NAND gates as shown in figure 1. In this circuit, when S goes high, the output Q goes high, however, the output Q does not switch to low state until rest input turn to high. SR latch has a problem when both inputs are high, as the output become unstable. D latch is an SR latch without that problem since it uses gated input that come from complementary driver. The D latch output the D value for Q as long as the enable is high, otherwise its outputs Q’=1. Master slave flip flop is a two of D flip flips that work together. When the clock is high, the D inputs is stored in the first D latch, and when the clock is low, the first latch output is moved to the second latch without changing the state of the first latch because of that, the output can change only in transitions from high to low. The advantage of this circuit is that it is edge triggered, what makes it easier to use in a larger circuit, as the input of flip flop usually depend on the state of the output. Edge triggered is the same idea, in in this lab it will be made using six NAND gates. \

<img width="451" alt="Screen Shot 2020-06-17 at 12 59 58 AM" src="https://user-images.githubusercontent.com/66625688/84856992-0bbed600-b036-11ea-9922-8bd4cece51fe.png">


<img width="451" alt="Screen Shot 2020-06-17 at 1 00 06 AM" src="https://user-images.githubusercontent.com/66625688/84857001-111c2080-b036-11ea-9817-86274a0fe8aa.png">




<img width="451" alt="Screen Shot 2020-06-17 at 1 00 12 AM" src="https://user-images.githubusercontent.com/66625688/84857023-1c6f4c00-b036-11ea-9c26-a756fc81621f.png">

<img width="289" alt="Screen Shot 2020-06-17 at 1 00 31 AM" src="https://user-images.githubusercontent.com/66625688/84857026-1da07900-b036-11ea-88bd-07a2418a2ec2.png">
