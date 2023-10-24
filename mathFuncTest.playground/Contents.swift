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
var array: [Int] = []
for _ in 0...10{
    array.append(Int.random(in: 1..<1000))
}

func lichSud() {
    var answer = array
    for indexPravy in stride(from: answer.count-1, to: 0, by: -1) {
        for indexLevy in 0...indexPravy {
            if answer[indexLevy] % 2 == 0 && answer[indexPravy] % 2 == 1 {
                let a = exch(answer[indexLevy], answer[indexPravy])
                answer[indexLevy] = a.0
                answer[indexPravy] = a.1
                print(answer)
                break
            }
        }
    }
}

func exch(_ a: Int, _ b: Int) -> (Int,Int){return (b, a)}
//let result = clock.measure(lichSud)
//print(result)
//print(done)

func insertionSort() {
    var answer = array
    print(answer)
    for index in 1...answer.count-1 {
        let x = answer[index]
        answer[index] = 0
        var j = index - 1
        while j >= 0 && x < answer[j] {
            answer[j+1] = answer[j]
            answer[j] = 0
            j = j - 1
        }
        answer[j+1] = x
    }
//    print(answer)
}
    

let result = clock.measure(insertionSort)
print(result)
print("done")
