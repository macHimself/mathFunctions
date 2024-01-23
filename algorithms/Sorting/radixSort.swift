import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...50{//10000{
    array.append(Int.random(in: 1..<10000))
}

func radixSort() {
    var B = array
    let n = array.count-1
    for i in 0...B.count-1 {
        B[i] = 0
    }
    var C: [Int] = []
    
    func countingSort(_ d: Int) {
        for _ in 0...255 {
            C.append(0)
        }
        for i in 0...n {
            let j = digit(Int32(array[i]), d)
            C[j] += 1
        }
        for i in 1...255 {
            C[i] = C[i] + C[i-1]
        }
        for i in stride(from: n, to: -1, by: -1) {
            let j = digit(Int32(array[i]), d)
            C[j] = C[j] - 1
            B[C[j]] = array[i]
        }
        array = B
        for i in 0...B.count-1 {
            B[i] = 0
        }
        C = []
    }
    
    func digit(_ a: Int32, _ d: Int) -> Int{
        return Int(a>>(8*d) & 255)
        
    }
    for d in stride(from: 0, to: 2, by: 2) {
        countingSort(d)
        countingSort(d+1)
    }
}

let result = clock.measure(radixSort)
print(array,"\n",result,"\n", array.count)
print("done")
