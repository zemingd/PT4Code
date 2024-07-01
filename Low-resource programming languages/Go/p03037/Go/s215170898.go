package main

import (
        "fmt"
)

func solution(n, m int, lr [][]int) int {
        l, r := -1<<31, 1<<31
        for i := 0; i < m; i++ {
                l = max(l, lr[i][0])
                r = min(r, lr[i][1])
        }
        if l <= r {
                return r - l + 1
        }
        return 0
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