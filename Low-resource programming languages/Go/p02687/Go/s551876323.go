package main

import (
        "fmt"
)

func solution(s string) string {
        ans := "ABC"
        if s == "ABC" {
                ans = "ARC"
        }
        return ans
}

func main() {
        var s string
        fmt.Scan(&s)
        fmt.Println(solution(s))
}