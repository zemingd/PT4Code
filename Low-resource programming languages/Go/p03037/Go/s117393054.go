package main

import (
        "fmt"
)

func solution(n, m int, lr [][]int) int {
        lo, hi := 1<<31, -1<<31
        for i := 0; i < m; i++ {
                lo = min(lo, lr[i][0])
                hi = max(hi, lr[i][1])
        }
        id := make([]int, hi+1)
        for i := 0; i < m; i++ {
                for j := lr[i][0]; j <= lr[i][1]; j++ {
                        id[j]++
                }
        }
        c := 0
        for i := range id {
                if id[i] == m {
                        c++
                }
        }
        return c
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