import Foundation
func printPrimeNumbers() {
    for item in 0...30000{
        if (item % 2 != 0 || item == 2) && item > 1 {
            let answer = isPrimeNumber(item)
            if answer.1 == true {
                print(answer.0, terminator: " ")
            }
        }
    }
}
func isPrimeNumber(_ num: Int) -> (Int, Bool) {
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
let clock = ContinuousClock()
//let result = clock.measure(printPrimeNumbers)
//print(result)
//print("done")

func fibonacci(_ limit: Int) {
    var arr = [1,1]
    for _ in 0...limit {
        arr.append(arr[arr.count-1] + arr[arr.count-2])
    }
    print(arr)
}

func fact(_ num: Int) -> Int{
    if num == 0 {
        return 1
    } else {
        return num * fact(num-1)
    }
}


