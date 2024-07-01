package main

import (
        "fmt"
)

func solution(n, m int, matrix [][]int) int {
        var ans int = 1000
        for i := 0; i < 1000; i++ {
                s := fmt.Sprint(i)
                if n != len(s) {
                        continue
                }
                if m == 0 {
                        ans = min(ans, i)
                        continue
                }
                if isCond(s, matrix) {
                        ans = min(ans, i)
                }
        }
        if ans == 1000 {
                return -1
        }
        return ans
}
func isCond(str string, matrix [][]int) bool {
        for i := range matrix {
                s := matrix[i][0]
                c := matrix[i][1]
                if int(str[s-1])-48 != c {
                        return false
                }
        }
        return true
}

func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func main() {
        var n, m int
        fmt.Scan(&n, &m)
        matrix := make([][]int, m)

        for i := 0; i < m; i++ {
                var s, c int
                fmt.Scan(&s, &c)
                matrix[i] = []int{s, c}
        }
        fmt.Println(solution(n, m, matrix))
}