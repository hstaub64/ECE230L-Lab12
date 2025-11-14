# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
  * The modulo counter divides by 2 * count because the output is toggled each time the desired output is reached, from high to low back to high, resulting in a count of 2 per one Hz.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
  * On the first clock cycle, the output it all 1s because it divides by 2^N each cycle. When the first cycle is 2^0, it will always be 1.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
  * The formula for the width is given by the frequency of the clock = N / frequency of the output. Rearranged, we can get N = clock / 1 KHz to find the width, given we know the frequency of the clock used.

