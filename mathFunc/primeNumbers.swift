import Foundation

func printPrimeNumbers(_ from: Int = 2, to: Int) {
    // print all numbers from 2 till given 'to' parameter number, or in range given 'from', 'to' parameter numbers
    for item in from...to{
        if (item % 2 != 0 || item == 2) && item > 1 {
            let answer = isPrimeNumber(item)
            if answer.1 == true {
                print(answer.0, terminator: " ")
            }
        }
    }
}

func isPrimeNumber(_ num: Int) -> (Int, Bool) {
    // check for prime numbers >> using square root optimalisation
    var isPrime = true
    var test = 2
    while test < Int(sqrt(Double(num))) && isPrime == true {
        if num % test == 0 {
            isPrime = false
        }
        test += 1
    }
    return (num,isPrime)
}
// take care for the range from < to !
//printPrimeNumbers(to: 100)
//printPrimeNumbers(from: 10000, to: 15320)
