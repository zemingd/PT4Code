package main

import (
        "fmt"
        "math"
)

func solution(x int) int {
        if x == 1 {
                return 1
        }
        b := int(math.Floor(math.Sqrt(float64(x))))
        out := -1 << 31
        for i := b; i > 1; i-- {
                for j := 2; int(math.Pow(float64(i), float64(j))) <= x; j++ {
                        out = max(out, int(math.Pow(float64(i), float64(j))))
                }
        }
        return out
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
}

func main() {
        var x int
        fmt.Scan(&x)
        fmt.Println(solution(x))
}