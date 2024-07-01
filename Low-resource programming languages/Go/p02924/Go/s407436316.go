package main

import (
        "fmt"
)

func solution(n int) int {
        return n*(n+1)/2 - n
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}