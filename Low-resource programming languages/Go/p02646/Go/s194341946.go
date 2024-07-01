package main

import (
        "fmt"
)

func solution(a, v, b, w, t int) string {
        if (v-w)*t >= abs(b-a) {
                return "YES"
        }
        return "NO"
}

func abs(x int) int {
        if x < 0 {
                return -x
        }
        return x
}

func main() {
        var a, v, b, w, t int
        fmt.Scan(&a, &v, &b, &w, &t)
        fmt.Println(solution(a, v, b, w, t))
}