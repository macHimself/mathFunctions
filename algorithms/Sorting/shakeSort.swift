import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10{//10000{
    array.append(Int.random(in: 1..<1000))
}

func shakeSort () {
    var answer = array
    print(answer)
    var k = 0
    var l = array.count-1
    var vym = false
    if k < l && l > 3 {
        
        repeat {
            for jindex in k...l-1 {
                if k < l {
                    if answer[jindex] > answer[jindex+1] {
                        let x = answer[jindex]
                        answer[jindex] = answer[jindex+1]
                        answer[jindex+1] = x
                        vym = true
                    }
                    l = l - 1
                }
                if vym != true {
                    break
                }
            }
            vym = false
            for jindex in stride(from: l,to:k+1,by: 1) {
                if k < l {
                    if answer[jindex-1] > answer[jindex] {
                        let x = answer[jindex]
                        answer[jindex] = answer[jindex+1]
                        answer[jindex+1] = x
                        vym = true
                    }
                    k = k + 1
                }
                if vym != true {
                    break
                }
            }
        } while k < l
    }
    print(answer)
}

let result = clock.measure(shakeSort)
print(result, array.count)
print("done")
