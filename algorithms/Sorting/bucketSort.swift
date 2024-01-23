import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...50{//10000{
    array.append(Int.random(in: 1..<50))
}

func bucketSort() {
    array
    let n = array.count-1
    let c = 25
    let cc = 50
    var C: [Int] = []
    var B: [Int] = [Int](repeating: 0, count: cc+1)
    
    for _ in 0...(cc/c)-1 {
        C.append(0)
    }
    for i in 0...n {
        let j = array[i]/c
        C[j] += 1
    }
    for i in 1...(cc/c)-1 {
        C[i] = C[i] + C[i-1]
    }
    for i in stride(from: n, to: 0, by: -1) {
        let j = array[i] / c
        C[j] = C[j] - 1
        B[C[j]] = array[i]
    }
    array = B
}

let result = clock.measure(bucketSort)
print(array,"\n",result,"\n", array.count)
print("done")

