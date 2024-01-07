import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10000{//10000{
    array.append(Int.random(in: 1..<1000))
}

func selectionSort () {
    var answer = array
    print(answer)
    for index in 0...answer.count-2 {
        var first = index
        for jindex in index+1...answer.count-1 {
            if answer[jindex] < answer [first] {
                first = jindex
            }
        }
        let x = answer[first]
        answer[first] = answer[index]
        answer[index] = x
    }
    print(answer)
}


let result = clock.measure(selectionSort)
print(result, array.count)
print("done")
