# Washing-Machine-FSM-Verilog
This project implements a Finite State Machine (FSM) for a washing machine using Verilog HDL. The FSM goes through six operational states and ends with a "DONE" signal indicating the end of the cycle.

Functional States

| State | Description            | Duration       |
|-------|------------------------|----------------|
| IDLE  | Waiting for start      | -              |
| FILL  | Filling water          | 2 minutes      |
| WASH  | Washing clothes        | 20 minutes     |
| RINSE | Rinsing clothes        | 10 minutes     |
| DRAIN | Draining water         | 3 minutes      |
| SPIN  | Spinning clothes dry   | 5 minutes      |
| DONE  | Beep for completion    | 30 seconds     |

> Simulation time scale: `1s / 10ms`

Simualtion results
1) This image shows that the FSM moves from IDLE state to Fill stage after start is made active.
   ![image](https://github.com/user-attachments/assets/580754b6-ac0f-46b5-8ee7-ae833dd48620)

2) This image shows that the FSM moves from FILL to WASH state after 120 seconds, i.e 2 minutes.
  ![image](https://github.com/user-attachments/assets/0762b317-e96c-4a7b-ab59-a20f45ac63eb)

3) This image shows that the FSM moves from WASH to RINSE state after 1320 seconds, i.e 22 minutes - 20 minutes after wash.
   ![image](https://github.com/user-attachments/assets/15afe80c-7f8c-4c44-8dac-ed362b3f75c0)

4) This image shows that the FSM moves from RINSE to DRAIN state after 1920 seconds, i.e 32 minutes - 10 minutes after rinse.
  ![image](https://github.com/user-attachments/assets/d3e5d987-7ee7-4d2e-9fff-c63b527ddbbe)

5) This image shows that the FSM moves from DRAIN to SPIN state after 2100 seconds, i.e 35 minutes - 3 minutes after drain.
   ![image](https://github.com/user-attachments/assets/5fbd799f-fa5a-49d9-9329-994de16ff208)

6) This image shows that the FSM moves from SPIN to DONE state after 2400 seconds, i.e 40 minutes - 5 minutes after spin and the done signal will be high for 30 seconds.
   ![image](https://github.com/user-attachments/assets/85d4a596-1224-4136-aaee-25c67aac557b)

7) This image shows that FSM again goes back to IDLE state after one complete wash.
   ![image](https://github.com/user-attachments/assets/a24b5736-abc9-4aa3-990a-02f1ec713924)





   
