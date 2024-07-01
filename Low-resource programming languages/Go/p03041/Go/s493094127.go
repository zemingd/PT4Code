package main

import (
        "fmt"
        "math"
)

func solution(n, k int) float64 {

        out := 0.0
        for i := 1; i < n+1; i++ {
                if i < k {
                        x := helper(i, k)
                        out += 1 / (float64(n) * math.Pow(2, x))
                } else {
                        out += 1 / float64(n)
                }
        }
        return out
}

func helper(i, k int) float64 {
        x, out := i, 0.0
        for k > x {
                x *= 2
                out++
        }
        return out
}

func main() {
        var n, k int
        fmt.Scan(&n, &k)
        fmt.Printf("%.12f\n", solution(n, k))
}