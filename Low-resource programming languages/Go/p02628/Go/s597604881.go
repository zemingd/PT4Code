package main

import (
        "fmt"
        "sort"
)

func solution(n, k int, p []int) int {
        sort.Ints(p)

        sum := 0
        for i := 0; i < k; i++ {
                sum += p[i]
        }
        return sum
}

func main() {
        var n, k int
        fmt.Scan(&n, &k)
        p := make([]int, n)
        for i := range p {
                fmt.Scan(&p[i])
        }
        fmt.Println(solution(n, k, p))
}