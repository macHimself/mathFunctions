import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10000{//10000{
    array.append(Int.random(in: 1..<100))
}

func bubbleSort() {
    var answer = array
    //print(answer)
    for index in stride(from: answer.count-2, through: 0, by: -1) {
        for jindex in 0...index {
            if answer[jindex] > answer[jindex+1] {
                let x = answer[jindex]
                answer[jindex] = answer[jindex+1]
                answer[jindex+1] = x
            }
        }
    }
    //print(answer)
}

//let result = clock.measure(bubbleSort)
//print(result)
//print("done")
