package main

import (
        "fmt"
)

func solution(n int) int {
        out := 0
        for i := 1; i < n+1; i = i + 2 {
                c := 0
                for j := 1; j < n+1; j++ {
                        if i%j == 0 {
                                c++
                        }
                }
                if c == 8 {
                        out++
                }
        }
        return out
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}