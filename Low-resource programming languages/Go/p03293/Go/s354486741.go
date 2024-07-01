package main

import (
        "fmt"
)

func solution(s, t string) string {
        l := len(s)
        for i := 0; i < l; i++ {
                s = string(s[l-1]) + s[:l-1]
                if s == t {
                        return "Yes"
                }
        }
        return "No"
}

func main() {
        var s, t string
        fmt.Scan(&s, &t)
        fmt.Println(solution(s, t))
}