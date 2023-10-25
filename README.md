# mathFunctions
Small mathematical functions, algorithms to test ideas and efficiency of some. 

## Search for prime numbers
This function looks for prime numbers. Where every potential prime number N is checked for divisors in range 2 to N-1 in general, and in last and commited version is used the limitation by square root of N.

### Time Effectivity check 
| Function | change      | Realisation | search in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
|printPrimeNumbers + isPrimeNumber | test < num | all divisors check | 0 - 30.000| 938.9955297079999|
|printPrimeNumbers + isPrimeNumber | test < num / 2 | half of divisors check | 0 - 30.000| 504.600202125|
|printPrimeNumbers + isPrimeNumber | test < Int(sqrt(Double(num))) | square root check for divisors| 0 - 30.000 | 12.833887625|
|printPrimeNumbers + isPrimeNumber | test < Int(sqrt(Double(num))) | square root check for divisors | 0 - 300.000 | 274.450768542|

# Algorithms

## Sorting even & odd numbers
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| Even on left Odd on right | | easy | 10 000 | 187.37560754100002 |

## Insertion Sort
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| compare on left and move | | easy | 100 | 0.642950208 |
| compare on left and move | | easy | 500 | 33.781183 |
| compare on left and move | | easy | 1000 | 597.091251791 |
| compare on left and move | | easy | 10000 | 1532.485308041 |

#### Time compared in different sorting algorithms
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| insertion sort | | easy | 1000 | 597.091251791 |

