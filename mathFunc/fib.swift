func fibonacci(_ limit: Int) {
    var arr = [1,1]
    for _ in 0...limit {
        arr.append(arr[arr.count-1] + arr[arr.count-2])
    }
    print(arr)
}

//fibonacci(100)
