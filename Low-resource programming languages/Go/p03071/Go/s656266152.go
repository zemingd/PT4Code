package main

import (
        "fmt"
)

func solution(a, b int) int {
        out := 0
        for i := 0; i < 2; i++ {
                if a > b {
                        out += a
                        a--
                } else {
                        out += b
                        b--
                }
        }
        return out
}

func main() {
        var a, b int
        fmt.Scan(&a, &b)
        fmt.Println(solution(a, b))
}