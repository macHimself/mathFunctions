import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10{//10000{
    array.append(Int.random(in: 1..<1000))
}

func shellSort() {
   // var array = array
    let n = array.count
    var h = 1
    while (3*h)+1 <= n/2 {
        h = (3*h)+1
    }
   // print(h, n)
    while h>0 {
        for k in 0...h-1 {
            var i = k+h
            while i < n {
                let x = array[i]
                var j = i-h
                while j>=0 && array[j] > x {
                    array[j+h] = array[j]
                    j = j-h
                }
                array[j+h] = x
                i = i+h
            }
        }
        h = h/3
    }
    //print(h)
    //print(array)
}

shellSort()

let result = clock.measure(shellSort)
print(array,"\n",result,"\n", array.count)
print("done")


