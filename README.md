# Self-Service Laundry Machine
To make a washing machine using Verilog

  
## Introduction 
The project aims to design a behavioural model for a working Washing Machine prototype in Verilog using a Mealy 
Finite State Machine  model which charges Rs.2 per wash. 


## Design Overview

The primary objective is to make a controller for the machine which washes the clothes efficiently. This control system generates the signals to control the overall operation of the machine.
This design has 6 states: check_door, fill_water, add_detergent, cycle, drain_water and spin. Each state has different time duration allocated. The timer values are determined by the clock frequency being used in the system. The FSM block receives the input from the user, sensors and from 
the timer.
State transitions take place according to the timing control signals and inputs given to the particular state.The processing in the next state depends on the outputs produced in the previous state.




## State Transition Diagram


![image](https://github.com/user-attachments/assets/160106ce-2bc2-4d0c-be3b-9b6e498811c0)




## Working 

1. The laundry machine washes the clothes at the cost of Rs.2 per wash. It starts working, if the input coin value is greater than or equal to 2. If the coin value is greater than 2, then it returns the change.
2. It contains an active high reset, which resets the machine for reset =1.
3. This machine has 6 states for performing different functions. They are check_door, fill_water, add_detergent, cycle, drain_water and spin.
4.  When the coin value is greater than 2, the machine starts working. At first, being in the check_door state, it remains in the same state if the machine has not started yet or door is not closed.
5. When door_close and start both are 1, it moves to the next state fill_water where it remains in the current state until water is not filled. Once the water is filled, if clothes are not soaked, then it moves to add_detergent state( where the soap_wash becomes 1) or if the clothes are soaked(soap_wash=1) then it moves to cycle state.
6. In the add_detergent state, after the detergent_added becomes 1, it moves to cycle state where it runs until cycle_timeout becomes 1. Next it moves to drain state, where all the water is drained. If water_wash is 0 after drain it moves to fill_water state followed by cycle and drain states.
7. In the drain state, it will be in the current state until water is not drained, when draining action is completed, then it moves to spin state with drain_value_on =1.
8. It will be performing spinning operation to dry clothes, after spin_timeout becomes 1, the washing process is completed which is indicated by done=1 and it moves to check_door state.

## Implementation

![image](https://github.com/user-attachments/assets/d676ca1f-f776-4ac5-bc05-fc274b008dce)



## Future Work
- [ ] Implement a Moore FSM for accepting coins to prevent glitches in the system
- [ ] Modify the design to make the control signals user independent





