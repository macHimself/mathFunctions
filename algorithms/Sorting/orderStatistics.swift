import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10{
    array.append(Int.random(in: 1..<1000))
}

func exch(_ a: Int, _ b: Int) -> (Int,Int){return (b, a)}

func orderStatistics(_ array: [Int], _ l: Int, _ r: Int, _ k: Int) -> Int{
    var A = array
    var x = A[(l+r)/2]
    var i = l
    var j = r
    repeat {
        while A[i] < x {
            i += 1
        }
        while x < A[j] {
            j -= 1
        }
        if i > j {
            break
        }
        let a = exch(A[i], A[j])
        A[i] = a.0
        A[j] = a.1
        i += 1
        j -= 1
    } while i <= j
    if k-1 <= j{
        if l < j {
            return orderStatistics(A, l, j, k)
        }
        return A[j]
    }
    if i <= k-1 {
        if i<r {
            return orderStatistics(A,i, r, k)
        }
        return A[i]
    }
    return A[k-1]
    
}

let result = orderStatistics(array,0,array.count-1,3)
print(array,"\n",result,"\n", array.count)
print("done")

//let result = clock.measure(bubbleSort)
//print(result)
//print("done")
