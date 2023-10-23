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
