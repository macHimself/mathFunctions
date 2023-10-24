func fact(_ num: Int) -> Int{
    if num == 0 {
        return 1
    } else {
        return num * fact(num-1)
    }
}
