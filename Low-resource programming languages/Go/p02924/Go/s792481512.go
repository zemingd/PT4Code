package main

import (
        "fmt"
)

func solution(n int) int {
        return n * (n - 1) / 2
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}