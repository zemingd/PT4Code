package main

import (
        "fmt"
)

func solution(n int) int {
        out := 0
        p := make([]int, n)
        for i := 1; i <= n; i++ {
                p[i-1] = i
        }
        p = append(p[1:], p[0])

        for i := 0; i < n; i++ {
                out += (i + 1) % p[i]
        }
        return out
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}