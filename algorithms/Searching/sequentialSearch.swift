import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10000{//10000{
    array.append(Int.random(in: 1..<10000))
}

func sequentialSearch() {
    let x = 6138
    for i in 0...array.count-1 {
        if array[i] == x {
            print(i)
        }
    }
    print(-1)
}

let result = clock.measure(sequentialSearch)
print(array,"\n",result,"\n", array.count)
print("done")
