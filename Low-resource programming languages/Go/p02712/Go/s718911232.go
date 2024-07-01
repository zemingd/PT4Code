package main

import (
        "fmt"
)

func sum(n int) int {
        return n * (n + 1) / 2
}

func solution(n int) int {
        return sum(n) - sum(n/3)*3 - sum(n/5)*5 + sum(n/15)*15
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}