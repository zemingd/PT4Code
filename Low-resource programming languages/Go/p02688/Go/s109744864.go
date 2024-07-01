package main

import (
        "fmt"
)

func solution(n int, matrix [][]int) int {
        memo := make(map[int]bool, n)

        for i := range matrix {
                for _, u := range matrix[i] {
                        memo[u] = true
                }
        }
        c := 0
        for i := 1; i <= n; i++ {
                if _, ok := memo[i]; !ok {
                        c++
                }
        }
        return c
}

func main() {
        var n, k int
        fmt.Scan(&n, &k)
        matrix := make([][]int, 0, k)
        for i := 0; i < k; i++ {
                var d int
                fmt.Scan(&d)
                nums := make([]int, 0, d)
                for j := 0; j < d; j++ {
                        var n int
                        fmt.Scan(&n)
                        nums = append(nums, n)
                }
                matrix = append(matrix, nums)
        }
        fmt.Println(solution(n, matrix))
}