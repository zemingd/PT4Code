package main

import (
        "fmt"
)

func solution(n, x, t int) int {
        if n%x == 0 {
                return (n / x) * t
        }
        return (n/x + 1) * t
}

func main() {
        var n, x, t int
        fmt.Scan(&n, &x, &t)
        fmt.Println(solution(n, x, t))
}