package main

import (
    "fmt"
    "math"
)

func main() {
    var n int
    fmt.Scan(&n)
    v := make([]int, n)
    c := make([]int, n)
    for i := 0; i < n; i++ {
      fmt.Scan(&v[i])
    }
    for i := 0; i < n; i++ {
      fmt.Scan(&c[i])
    }

    var X, Y int
    var max int = 0
    for i := 0 ; i < int(math.Pow(2.0, float64(n))); i++ {
        X, Y = 0, 0
        for j := uint(0); j < uint(n); j++ {
            if (i & (1 << j)) != 0 {
                X += v[j]
                Y += c[j]
            }
        }
        if max < X - Y {
            max = X - Y
        }
    }
    fmt.Println(max)
}
