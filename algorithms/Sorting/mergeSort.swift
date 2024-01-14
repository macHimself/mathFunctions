import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10{//10000{
    array.append(Int.random(in: 1..<1000))
}

func mergeSort () {
    func merge(_ p: Int, _ q: Int, _ r: Int) {
        var i = p
        var j = q+1
        var k = 0
        var B: [Int] = []
        while i <= q && j <= r {
            if array[i] <= array[j] {
                B.append(array[i])
                i += 1
                k += 1
            } else {
                B.append(array[j])
                j += 1
                k += 1
            }
        }
        while i <= q {
            B.append(array[i])
            i += 1
            k += 1
        }

        while j <= r {
            B.append(array[j])
            j += 1
            k += 1
        }
        for ind in 0...k-1 {
            array[p+ind] = B[ind]
        }
    }
    
    func mergeSortIntern(_ p: Int, _ r: Int) {

        if p < r {
            let q = (p+r)/2
            mergeSortIntern(p, q)
            mergeSortIntern(q+1, r)
            merge(p, q, r)
        }
    }

    mergeSortIntern(0,array.count-1)
    
}



let result = clock.measure(mergeSort)
print(array,"\n",result,"\n", array.count)
print("done")

