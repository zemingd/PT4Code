package main

import (
        "fmt"
)

func solution(n int, a []int) int {
        memo := make(map[int]bool, n)
        i, c := 0, 0
        for i != 1 {
                if memo[i] {
                        return -1
                }
                memo[i] = true
                i = a[i] - 1
                c++
        }
        return c
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
        fmt.Println(solution(n, a))
}