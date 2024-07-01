package main

import (
        "fmt"
)

func solution(a, v, b, w, t int) string {
        for i := 0; i <= t; i++ {
                A := a + v*i
                B := b + w*i
                if A >= B {
                        return "YES"
                }
        }
        return "NO"
}

func main() {
        var a, v, b, w, t int
        fmt.Scan(&a, &v, &b, &w, &t)
        fmt.Println(solution(a, v, b, w, t))
}