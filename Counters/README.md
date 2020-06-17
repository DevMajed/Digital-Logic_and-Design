# Ripple Counter, Synchronous Counter, and BCD

Counters are type of registers that goes through prescribed sequence. Counters come in two categories, ripple counter and synchronous. In ripple counters, flips flops are triggered by a flipflop output. In synchronous counter, the input of all C input of all flip flop have is synchronized, so they all connected to a common clock. In this lab, ripple counters, synchronies and decimal counters will all be studied and investigated. \
In the first part of the lab, three types of counters will be studied theoretically, and then they will be built and tested physically. For the first part will be a rabble counter that counts down from 16 to 0 using JK flip flops, the second part will be a synchronous counter that counts up 0 to 15 using JK flip flops as well, and lastly a decimal counter that counts from 0 to 9 and repeat.  \

# Methods
The ripple \
counter counts down from 16 to 0 and then repeats itself based off of a clock input. When the clock input is 0 nothing changes, when the input is 1 the counter counts down. For a ripple counter, only the first input is dependent on a clock input. Each subsequent state is dependent on the output (Q) of the last state. Since the counter counts down, it relies on Q’ instead. \

<img width="635" alt="Screen Shot 2020-06-17 at 12 50 30 AM" src="https://user-images.githubusercontent.com/66625688/84856424-a9b1a100-b034-11ea-8800-285546f775e5.png">


Synchronous Counter \
F or the synchronous counter, it counts up from 0 to 15 then repeats itself. When the clock counter is 0 nothing changes, when it is 1 the counter advances. A JK State table was made based off the relationships described in table 1, k-maps where made to construct output logic, and the final circuit was made. 

<img width="590" alt="Screen Shot 2020-06-17 at 12 51 58 AM" src="https://user-images.githubusercontent.com/66625688/84856491-d960a900-b034-11ea-92a7-11948ed02847.png">

<img width="583" alt="Screen Shot 2020-06-17 at 12 52 26 AM" src="https://user-images.githubusercontent.com/66625688/84856493-da91d600-b034-11ea-804d-e590e7ff7749.png">


