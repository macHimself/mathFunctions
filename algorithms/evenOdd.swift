var array: [Int] = []
for _ in 0...10000 {
    array.append(Int.random(in: 1..<10001))
}

func lichSud(_ arr: [Int]) -> [Int] {
    var answer = arr
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
    return answer
}

func exch(_ a: Int, _ b: Int) -> (Int,Int){return (b, a)}

//lichSud(array)
