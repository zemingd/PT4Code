package main

import (
        "fmt"
)

func solution(n, m int, k []int, a [][]int) int {
        memo := make([]int, m+1)
        for i := 0; i < n; i++ {
                for j := 0; j < k[i]; j++ {
                        memo[a[i][j]]++
                }
        }
        c := 0
        for _, v := range memo {
                if v == n {
                        c++
                }
        }
        return c
}

func main() {
        var n, m int
        fmt.Scan(&n, &m)
        k := make([]int, 0, n)
        a := make([][]int, n)
        for i := 0; i < n; i++ {
                kt := 0
                fmt.Scan(&kt)
                k = append(k, kt)
                a[i] = make([]int, 0, kt)
                for j := 0; j < kt; j++ {
                        t := 0
                        fmt.Scan(&t)
                        a[i] = append(a[i], t)
                }
        }
        fmt.Println(solution(n, m, k, a))
}