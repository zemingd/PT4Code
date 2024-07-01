package main

import (
    "fmt"
)

func main() {
    var n, x int
    fmt.Scan(&n, &x)
    l := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&l[i])
    }
    sum := 0
    for i, v := range l {
        sum += v
        if sum > x {
            fmt.Println(i + 1)
            return
        }
    }
    fmt.Println(len(l))
}