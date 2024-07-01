package main

import (
        "fmt"
)

func solution(n int, a []int) int {
        out := 0
        d := 0
        for i := 1; i < n; i++ {
                d = a[i] - a[i-1]
                if d <= 0 {
                        out += d * -1
                        a[i] += d * -1
                }
        }
        return out
}

func main() {
        var n int
        fmt.Scan(&n)
        a := make([]int, n)
        for i := range a {
                fmt.Scan(&a[i])
        }
        fmt.Println(solution(n, a))
}