package main

import (
        "fmt"
)

func solution(n int) int {
        out := 0
        for i := 1; i < n; i++ {
                out += i % (i + 1)
        }
        out += n % 1
        return out
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}