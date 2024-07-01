package main

import (
        "fmt"
        "math"
)

func main() {
        var (
                n, t, a int
                nearest int
        )
        minDiff := math.MaxFloat64
        fmt.Scan(&n, &t, &a)
        base := float64(a - t)
        for i := 0; i < n; i++ {
                var tmp int
                fmt.Scan(&tmp)
                diff := math.Abs(base + float64(tmp)*0.006)
                if diff < minDiff {
                        minDiff = diff
                        nearest = i + 1
                }
        }
        fmt.Printf("%d\n", nearest)
}