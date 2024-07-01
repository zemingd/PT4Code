package main

import (
        "fmt"
)

func solution(n int) int {
        memo := make([]int, n+1)

        for i := 1; i < n+1; i++ {
                for j := 0; j < n+1; j++ {
                        if j%i == 0 {
                                memo[j]++
                        }
                }
        }
        out := 0
        for i := 1; i < n+1; i = i + 2 {
                if memo[i] == 8 {
                        out++
                }
        }
        return out
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}