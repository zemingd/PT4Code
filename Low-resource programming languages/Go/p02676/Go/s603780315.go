package main

import (
        "fmt"
)

func solution(k int, s string) string {
        l := len(s)
        if l <= k {
                return s
        }

        return s[:k] + "..."
}

func main() {
        var k int
        var s string
        fmt.Scan(&k, &s)
        fmt.Println(solution(k, s))
}