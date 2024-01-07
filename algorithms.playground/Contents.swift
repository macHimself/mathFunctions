import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10{//10000{
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

func bubbleSort() {
    var answer = array
    //print(answer)
    for index in stride(from: answer.count-2, through: 0, by: -1) {
        for jindex in 0...index {
            if answer[jindex] > answer[jindex+1] {
                let x = answer[jindex]
                answer[jindex] = answer[jindex+1]
                answer[jindex+1] = x
            }
        }
        //print(answer)
    }
}
    
//let result = clock.measure(insertionSort)
//let result = clock.measure(bubbleSort)
//print(result, array.count)
//print("done")

//bubbleSort()

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

//let result = clock.measure(shakeSort)
//print(result, array.count)
//print("done")

func selectionSort () {
    var answer = array
    for index in 0...answer.count-2 {
        var first = index
        for jindex in index+1...answer.count-1 {
            if answer[jindex] < answer [first] {
                first = jindex
            }
        }
        let x = answer[first]
        answer[first] = answer[index]
        answer[index] = x
    }
}


//let result = clock.measure(selectionSort)
//print(result, array.count)
//print("done")
/*
func quickSort() {
    var answer = array
    print(answer)
    
    func partition() {
        repeat {
            
        } while 
    }
    
    
    
    
    print(answer)
}
*/

func excha(_ a: Int, _ b: Int) -> (Int,Int){return (b, a)}

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
        let a = excha(A[i], A[j])
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


 
//let result = clock.measure()


let result = orderStatistics(array,0,array.count-1,3)
print(array,"\n",result,"\n", array.count)
print("done")
