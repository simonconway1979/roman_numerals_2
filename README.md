# Roman Numerals Kata

The Romans wrote their numbers using letters; specifically the letters 'I' meaning '1', 'V' meaning '5', 'X' meaning '10', 'L' meaning '50', 'C' meaning '100', 'D' meaning '500', and 'M' meaning '1000'. There were certain rules that the numerals followed which should be observed.

The symbols 'I', 'X', 'C', and 'M' can be repeated at most 3 times in a row. The symbols 'V', 'L', and 'D' can never be repeated. The '1' symbols ('I', 'X', and 'C') can only be subtracted from the 2 next highest values ('IV' and 'IX', 'XL' and 'XC', 'CD' and 'CM'). Only one subtraction can be made per numeral ('XC' is allowed, 'XXC' is not). The '5' symbols ('V', 'L', and 'D') can never be subtracted.


### As a game developer

I want to be able to convert a number to a numeral
So that I can label my game releases using Roman numerals
Given I have started the converter
When I enter $number
Then $numeral is returned


### Approach

We discussed a model for calculating the roman numerals.

Steps we identified:

1
Take the original number

2
Split into an array of separate digits

3
Evaluate each digit in the array separately. These will be separate steps in the process

4
Evaluate each digit in the array, starting from the right most digit (0-9)
The output of each method will be a numeral. This will be stored in an array of arrays. 

4a
Evaluate this against a modulus of 5 and divisor of 5 to determine I and V roman numerals.

4b
Take the second right digit. Again check the modulus of 5 and divisor of 5 to determine X and L roman numerals.

4c
Repeat this for the third right digit (To determine C and D roman numerals)

4d
Repeat again for the forth right digit (To determine M roman numeral)

5
At the end of each method we will return the numerals. We will store numerals into an array of arrays.

6
We will flatten the array so that the output is a string of numerals in the right order.
