import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10000{//10000{
    array.append(Int.random(in: 1..<100))
}

func heapSort() {
    
    buildHeap(array.count-1)
    var k = array.count - 1
    while k > 0 {
        let a = exch(array[0], array[k])
        array[0] = a.0
        array[k] = a.1
        k -= 1
        maxHeap(0, k)
    }
    
    func buildHeap(_ k: Int) {
        
        for i in stride(from: k/2, to: -1, by: -1) {
          //  print(array, i)
            maxHeap(i, k)
        }
        
    }
    
    func maxHeap(_ parent: Int, _ konecStromu: Int) {
        var l = leftChild(parent)
        var r = rightChild(parent)
        var highest = 0
        if l <= konecStromu && array[l] > array[parent] {
            highest = l
        } else {
            highest = parent
        }
        
        if r <= konecStromu && array[r] > array[highest] {
            highest = r
        }
        if highest != parent {
            let a = exch(array[parent], array[highest])
            array[parent] = a.0
            array[highest] = a.1
       //     print(array)
            maxHeap(highest, konecStromu)
        }
    }
    
    func leftChild(_ index: Int) -> Int {
        return (index*2) + 1
    }
    
    func rightChild(_ index: Int) -> Int {
        return (index*2) + 2
    }
    
}

let result = clock.measure(heapSort)
print(array,"\n",result,"\n", array.count)
print("done")
