# Off-by-One Error in Assembly Array Summation

This repository demonstrates a common off-by-one error in assembly language when summing elements of an array. The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides the corrected version.

The error occurs due to an incorrect loop termination condition, leading to an element being either missed or processed an extra time.

The solution involves carefully adjusting the loop counter or index to ensure that the loop iterates through all the elements of the array exactly once.

This example highlights the importance of precise loop control and careful attention to indexing within assembly language programming.