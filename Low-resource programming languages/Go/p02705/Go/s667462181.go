package main

import (
        "fmt"
        "math"
)

func solution(x int) float64 {
        return 2 * math.Pi * float64(x)
}

func main() {
        var x int
        fmt.Scan(&x)
        fmt.Println(solution(x))
}