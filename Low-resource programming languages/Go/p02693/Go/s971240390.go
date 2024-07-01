package main

import (
        "fmt"
)

func solution(k, a, b int) string {
        n := 0
        for i := 0; n < b; i++ {
                n = k * i
                if n >= a && n <= b {
                        return "OK"
                }
        }
        return "NG"
}

func main() {
        var k, a, b int
        fmt.Scan(&k, &a, &b)
        fmt.Println(solution(k, a, b))
}