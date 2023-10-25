import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10000{
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
    print(answer)
}
    
let result = clock.measure(insertionSort)
//print(result)
//print("done")
