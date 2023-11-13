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

## Bubble Sort
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| compare and exchange | | easy | 10 | 0.01712775 |
| compare and exchange | | easy | 100 | 0.161592375 |
| compare and exchange | | easy | 500 | 3.798230167 |
| compare and exchange | | easy | 1000 | 14.844790167000001 |
| compare and exchange  | | easy | 10000 | 1630.451792458 |

## Shake Sort
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| compare and exchange | | easy | 10 |  |
| compare and exchange | | easy | 100 |  |
| compare and exchange  | | easy | 500 |  |
| compare and exchange | | easy | 1000 |  |
| compare and exchange | | easy | 10000 |  |

## Selection Sort
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| compare and exchange | | easy | 10 | 0.00209275 |
| compare and exchange | | easy | 100 | 0.018028792 |
| compare and exchange  | | easy | 500 | 0.142954167 |
| compare and exchange | | easy | 1000 | 0.281173375 |
| compare and exchange | | easy | 10000 | 15.19937975 |


#### Time compared in different sorting algorithms
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| insertion sort | | easy | 1000 | 597.091251791 |
| bubble sort | | easy | 1000 | 14.844790167000001 |
| shake sort| | easy | 1000 | | 
| selection sort | | easy | 1000 | 0.281173375 |

---
note: the time effectivity is counted in swift like playground.