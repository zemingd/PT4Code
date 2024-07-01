package main

import (
        "fmt"
)

func solution(n int, a []int) []int {
        var memo [200000]int
        first, second := 0, 0
        for i := 0; i < n; i++ {
                memo[a[i]]++
                first = max(first, a[i])
        }

        for i := first - 1; i >= 0; i-- {
                if memo[i] > 0 {
                        second = i
                        break
                }
        }

        out := make([]int, 0, n)
        for i := 0; i < n; i++ {
                switch {
                case a[i] == first && memo[first] > 1:
                        out = append(out, first)
                case a[i] == first && memo[first] == 1:
                        out = append(out, second)
                default:
                        out = append(out, first)
                }
        }
        return out
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
}

func main() {
        var n int
        fmt.Scan(&n)
        a := make([]int, 0, n)
        for i := 0; i < n; i++ {
                t := 0
                fmt.Scan(&t)
                a = append(a, t)
        }
        for _, v := range solution(n, a) {
                fmt.Println(v)
        }
