package main

import (
        "fmt"
)

func solution(d, t, s int) string {
        if s*t >= d {
                return "Yes"
        }
        return "No"
}

func main() {
        var d, t, s int
        fmt.Scan(&d, &t, &s)
        fmt.Println(solution(d, t, s))
}