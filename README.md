# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Names
Alessandro Riviera & Andrew Honcharenko

## Summary
In this lab we programmed an up-counter using a modulo-6 system utilizing the full-adder and the d-flipflops. This counted up to 101 (decimal 5) and then reset on going from 5 to 6 to show 0 back on the led's. We also programmed a down-counter using a ripple adder to count down from 7 (111) to 0 (000), as shown on the led's which after outputting 0, reset back to 7.

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
Because the data is only stored on a rising positive edge or falling edge (positive edge in our case), it takes double the Hz to change the value on the next counter, thus dividing it by 2^n. 

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
All of them read the first positive edge of the first clock signal we input. Further signals 

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
If we are using the built in clock of 100mhz and dividing the signal down to 1Khz, then we would use log2(100,000,000/1,000), which would fall between a 16 or 17 bit width (but it would not be an exact output of 1Khz at either value)

