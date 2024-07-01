package main

import (
        "fmt"
)

func solution(n int, a []int) int {
        memo := make(map[int]int)
        for i := range a {
                if n, ok := memo[a[i]]; ok {
                        if n > 1 {
                                memo[a[i]]--
                        } else {
                                delete(memo, a[i])
                        }
                } else {
                        memo[a[i]]++
                }
        }
        return len(memo)
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