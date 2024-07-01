package main

import (
        "fmt"
)

func solution(h []int, matrix [][]int) int {
        memo := make(map[int]int, len(h))
        visit := make(map[int]bool, len(h))
        for i := range visit {
                visit[i] = false
        }
        for i := range matrix {
                visit[matrix[i][0]] = true
                visit[matrix[i][1]] = true
                if h[matrix[i][0]-1] > h[matrix[i][1]-1] {
                        memo[matrix[i][0]]++
                        memo[matrix[i][1]]--
                } else if h[matrix[i][0]-1] < h[matrix[i][1]-1] {
                        memo[matrix[i][0]]--
                        memo[matrix[i][1]]++
                }
        }
        c := 0
        for _, v := range memo {
                if v > 0 {
                        c++
                }
        }

        for i := 1; i <= len(h); i++ {
                if !visit[i] {
                        c++
                }
        }
        return c
}

func main() {
        var n, m int
        fmt.Scan(&n, &m)
        h := make([]int, 0, n)
        for i := 0; i < n; i++ {
                var num int
                fmt.Scan(&num)
                h = append(h, num)
        }
        matrix := make([][]int, 0, m)
        for i := 0; i < m; i++ {
                var a, b int
                fmt.Scan(&a, &b)
                matrix = append(matrix, []int{a, b})
        }
        fmt.Println(solution(h, matrix))
}