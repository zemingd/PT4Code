package main

import (
        "fmt"
        "sort"
)

func solution(n int, v []int) float64 {
        sort.Ints(v)
        out := float64(v[0])
        for i := 1; i < n; i++ {
                out = (out + float64(v[i])) / 2
        }
        return out
}

func main() {
        var n int
        fmt.Scan(&n)

        v := make([]int, 0, n)
        for i := 0; i < n; i++ {
                t := 0
                fmt.Scan(&t)
                v = append(v, t)
        }
        fmt.Println(solution(n, v))
}