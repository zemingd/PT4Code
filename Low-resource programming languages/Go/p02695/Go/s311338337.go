package main

import (
        "fmt"
)

var ans int

func solution(n, m, q int, matrix [][]int) int {
        ans = 0
        dfs(n, m, q, matrix, []int{1, 1})
        return ans
}

func dfs(n, m, q int, matrix [][]int, A []int) {
        if len(A) == n+1 {
                now := 0
                for i := 0; i < q; i++ {
                        if A[matrix[i][1]]-A[matrix[i][0]] == matrix[i][2] {
                                now += matrix[i][3]
                        }
                }
                ans = max(ans, now)
                return
        }
        A = append(A, A[len(A)-1])
        for A[len(A)-1] <= m {
                dfs(n, m, q, matrix, A)
                A[len(A)-1]++
        }
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
}

func main() {
        var n, m, q int
        fmt.Scan(&n, &m, &q)
        matrix := make([][]int, q)
        for i := range matrix {
                var a, b, c, d int
                fmt.Scan(&a, &b, &c, &d)
                matrix[i] = []int{a, b, c, d}
        }
        fmt.Println(solution(n, m, q, matrix))
}