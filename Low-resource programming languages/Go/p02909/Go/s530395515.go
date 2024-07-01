package main

import (
        "fmt"
)

func solution(s string) string {
        switch s {
        case "Sunny":
                return "Cloudy"
        case "Cloudy":
                return "Rainy"
        default:
                return "Sunny"
        }
}

func main() {
        var s string
        fmt.Scan(&s)
        fmt.Println(solution(s))
}