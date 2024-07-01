package main

import (
        "fmt"
)

func solution(s, w int) string {
        if w >= s {
                return "unsafe"
        }
        return "safe"
}

func main() {
        var s, w int
        fmt.Scan(&s, &w)
        fmt.Println(solution(s, w))
}