package main

import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)
    js := make([][]int, n)
    for i := range js {
        var v int
        fmt.Scan(&v)
        js[i] = []int{v}
    }
    for i := range js {
        var c int
        fmt.Scan(&c)
        js[i] = append(js[i], c)
    }
    var sum int
    for i := range js {
        if js[i][0] > js[i][1] {
            sum += js[i][0] - js[i][1]
        }
    }
    fmt.Println(sum)
}
