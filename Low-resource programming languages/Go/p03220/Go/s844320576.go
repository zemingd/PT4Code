package main

import (
    "fmt"
    "math"
)


func main() {
    var n int
    var t, a float64
    var h float64
    fmt.Scan(&n)
    fmt.Scan(&t)
    fmt.Scan(&a)
    minScore := float64(10000)
    index := -1
    for i := 0; i < n; i++ {
        fmt.Scan(&h)
        if math.Abs(a - t + h * 0.006) < minScore {
            minScore = math.Abs(a - t + h * 0.006)
            index = i
        }
    }
    fmt.Println(index + 1)
}