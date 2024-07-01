package main

import (
        "fmt"
)

func solution(n int) int {
        out := 0
        for i := 0; i <= n; i++ {
                if i == n {
                        out += i % 1
                } else {
                        out += i % (i + 1)
                }
        }
        return out
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}