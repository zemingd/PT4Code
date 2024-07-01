package main

import (
        "fmt"
)

func solution(x, n int, p []int) int {
        if len(p) == 0 {
                return x
        }

        var memo [103]int
        for i := range p {
                memo[p[i]]--
        }

        lo := 1 << 31
        for i := 0; i <= 102; i++ {
                if memo[i] == 0 {
                        memo[i] = abs(x - i)
                        lo = min(lo, memo[i])
                }
        }

        out := 0
        for i := 0; i <= 102; i++ {
                if memo[i] != -1 && lo == memo[i] {
                        out = i
                        break
                }
        }
        return out
}

func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func abs(x int) int {
        if x < 0 {
                return -x
        }
        return x
}

func main() {
        var x, n int
        fmt.Scan(&x, &n)
        p := make([]int, n)
        for i := range p {
                fmt.Scan(&p[i])
        }
        fmt.Println(solution(x, n, p))
}