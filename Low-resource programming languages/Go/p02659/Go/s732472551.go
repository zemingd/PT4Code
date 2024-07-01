package main

import (
        "fmt"
        "math"
)

func solution(a, b float64) int {
        return int(math.Floor(a * b))
}

func main() {
        var a, b float64
        fmt.Scan(&a, &b)
        fmt.Println(solution(a, b))
}