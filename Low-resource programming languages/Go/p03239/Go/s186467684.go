package main

import (
    "fmt"
    "math"
)

func main() {
    var N, T int
    fmt.Scan(&N, &T)

    var ansC = math.MaxInt32
    var ansT = math.MaxInt32

    for i := 0; i < N; i++ {
        var c, t int
        fmt.Scan(&c, &t)
        if t <= T && c < ansC {
            ansC = c
            ansT = t
        }
    }
    if ansT > T {
        fmt.Println("TLE")
    } else {
        fmt.Println(ansC)
    }
}
