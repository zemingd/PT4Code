package main

import (
        "fmt"
)

func solution(n int, b []int) int {
        a := make([]int, n)
        a[0], a[n-1] = b[0], b[n-2]

        for i := 1; i < n-1; i++ {
                a[i] = min(b[i], b[i-1])
        }

        out := 0
        for i := range a {
                out += a[i]
        }
        return out
}

func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func main() {
        var n int
        fmt.Scan(&n)
        b := make([]int, n-1)
        for i := range b {
                fmt.Scan(&b[i])
        }
        fmt.Println(solution(n, b))
}