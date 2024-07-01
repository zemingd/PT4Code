package main

import (
    "fmt"
)

func sumSlice(x []int) int {
    var sum int
    for _, i := range x {
        sum += i
    }
    return sum
}

func main() {
    var n int
    fmt.Scanf("%d", &n)
    var w []int = make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scanf("%d", &w[i])
    }

    var abs int = 9999999
    for t := 0; t < n - 1; t++ {
        diff := sumSlice(w[:t+1]) - sumSlice(w[t+1:])

        if diff < 0 {
            diff *= -1
        }
        if abs > diff {
            abs = diff
        }
    }
    fmt.Printf("%d\n", abs)
}