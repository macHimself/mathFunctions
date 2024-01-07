import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10{
    array.append(Int.random(in: 1..<1000))
}

func insertionSort() {
    var answer = array
    // print(answer)
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
    // print(answer)
}
    
//let result = clock.measure(insertionSort)
//print(result)
//print("done")
