import Foundation

let clock = ContinuousClock()
var array: [Int] = []
for _ in 0...10000{//10000{
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

//let result = orderStatistics(array,0,array.count-1,3)

//let result = clock.measure()
//print(array,"\n",result,"\n", array.count)
//print("done")

/*
func quickSort() {
    
    func partition(_ l: Int, _ r: Int) -> Int {
        var x = array[r]
        var i = l
        var j = r
        repeat {
            while array[i] < x {
                i += 1
            }
            while x < array[j] {
                j -= 1
                if i >= j {
                    break
                }
            }
            if i >= j {
                break
            }
            let a = exch(array[i], array[j])
            array[i] = a.0
            array[j] = a.1
        } while true
        let a  = exch(array[i], array[r])
        array[i] = a.0
        array[r] = a.1
        return i
    }
    
    func quickSortIntern(_ l: Int, _ r: Int) {
        if l < r {
            let i = partition(l, r)
            quickSortIntern(l, i-1)
            quickSortIntern(i+1, r)
        }
    }
    
    print(quickSortIntern(0,array.count-1))
    
}
*/

//let result = clock.measure(quickSort)
//print(array,"\n",result,"\n", array.count)
//print("done")

func shellSort() {
 //   var array = array
    let n = array.count
    var h = 1
    while (3*h)+1 <= n/2 {
        h = (3*h)+1
    }
  //  print(h, n)
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
 //   print(h)
   // print(array)
}

//let result = clock.measure(shellSort)
//print(array,"\n",result,"\n", array.count)
//print("done")

/*
func middleQuickSort(){
    
}
*/

//let result = clock.measure(quickSort)
//print(array,"\n",result,"\n", array.count)
//print("done")
print(array)
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

//let result = clock.measure(heapSort)
//print(array,"\n",result,"\n", array.count)
//print("done")

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
