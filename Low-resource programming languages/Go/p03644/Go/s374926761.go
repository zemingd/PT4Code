package main

import (
        "fmt"
)

func solution(n int) int {
        l := uint(len(fmt.Sprintf("%b", n)) - 1)

        return 0 | (1 << l)
}

func main() {
        var n int
        fmt.Scan(&n)
        fmt.Println(solution(n))
}