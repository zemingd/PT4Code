package main

import (
        "fmt"
)

func solution(n, m int, lr [][]int) int {
        lo, hi := -1<<31, 1<<31
        for i := 0; i < m; i++ {
                lo = max(lo, lr[i][0])
                hi = min(hi, lr[i][1])
        }
        out := hi - lo + 1
        if out < 0 {
                return 0
        }
        return out
}

func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
}

func main() {
        var n, m int
        fmt.Scan(&n, &m)
        lr := make([][]int, m)
        for i := 0; i < m; i++ {
                l, r := 0, 0
                lr[i] = make([]int, 2)
                fmt.Scan(&l, &r)
                lr[i][0], lr[i][1] = l, r
        }
        fmt.Println(solution(n, m, lr))
}