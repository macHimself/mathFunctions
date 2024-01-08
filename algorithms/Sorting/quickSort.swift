
import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10{
    array.append(Int.random(in: 1..<1000))
}

func exch(_ a: Int, _ b: Int) -> (Int,Int){return (b, a)}

partition(_ array, _ l: Int, _ r: Int) {
    var A = array
    var x = A[r]
    var i = l-1
    var j = r
    while 
}



let result = orderStatistics(array,0,array.count-1,3)
print(array,"\n",result,"\n", array.count)
print("done")

//let result = clock.measure(bubbleSort)
//print(result)
//print("done")
