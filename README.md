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
| compare and exchange | | easy | 10 | 0.006992458 |
| compare and exchange | | easy | 50 |  |
| compare and exchange | | easy | 100 | 0.011912959 |
| compare and exchange  | | easy | 500 |  |
| compare and exchange | | easy | 1000 | 0.128450167 |
| compare and exchange | | easy | 10000 | 0.4379705 |

## Selection Sort
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| compare and exchange | | easy | 10 | 0.00209275 |
| compare and exchange | | easy | 100 | 0.018028792 |
| compare and exchange  | | easy | 500 | 0.142954167 |
| compare and exchange | | easy | 1000 | 0.281173375 |
| compare and exchange | | easy | 10000 | 15.19937975 |


## Shell sort
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| compare every n. position | | medium | 10 | 0.012747625 |
| compare every n. position | | medium | 50 | 0.018819 |
| compare every n. position | | medium | 100 | 0.048813416 |
| compare every n. position | | medium | 500 | 0.361823417 |
| compare every n. position | | medium | 1000 | 0.779618459 |
| compare every n. position | | medium | 10000 | 12.028018375 |

## Heap sort
### Time Effectivity check
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| build Heap & repeated maxHeapify | | easy | 10 | 0.026930583 |
| compare every n. position | | medium | 50 | 0.07636775 |
| compare every n. position | | medium | 100 | 0.178366292 |
| compare every n. position | | medium | 500 | 1.201746834 |
| compare every n. position | | medium | 1000 | 2.680482917 |
| compare every n. position | | medium | 10000 | 35.958297916 |


#### Time compared in different sorting algorithms
| Function | change      | Realisation | sorting in range | time (sec)|
|----------|------------:|------------:|----------------:|----------:|
| insertion sort | | easy | 1000 | 597.091251791 |
| bubble sort | | easy | 1000 | 14.844790167000001 |
| shake sort| | easy | 1000 | 0.128450167 | 
| selection sort | | easy | 1000 | 0.281173375 |
| shell sort | | medium | 1000 | 0.779618459 |
| heap sort | | medium | 1000 | 2.680482917 |
---
note: the time effectivity is counted in swift like playground.
- if is not said different: 
- - hardware: macBookPro 2023 Apple M2 Pro 32GB ram   
