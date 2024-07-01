package main

import (
        "fmt"
)

func solution(a string) string {
        if "a" <= a && a <= "z" {
                return "a"
        }
        return "A"
}

func main() {
        var a string
        fmt.Scan(&a)
        fmt.Println(solution(a))
}