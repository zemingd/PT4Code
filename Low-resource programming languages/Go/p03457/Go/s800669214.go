package main

import (
        "fmt"
)

func solution(n int, matrix [][3]int) string {
        matrix = append([][3]int{{0, 0, 0}}, matrix...)

        for i := 0; i < n; i++ {
                t := matrix[i+1][0] - matrix[i][0]
                d := abs(matrix[i+1][1]-matrix[i][1]) + abs(matrix[i+1][2]-matrix[i][2])
                if d > t || t%2 != d%2 {
                        return "No"
                }
        }
        return "Yes"
}

func abs(x int) int {
        if x < 0 {
                return -x
        }
        return x
}

func main() {
        var n int
        fmt.Scan(&n)
        matrix := make([][3]int, n)
        for i := range matrix {
                fmt.Scan(&matrix[i][0])
                fmt.Scan(&matrix[i][1])
                fmt.Scan(&matrix[i][2])
        }
        fmt.Println(solution(n, matrix))
}