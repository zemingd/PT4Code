package main

import (
        "fmt"
)

func min(x, y int) int {
        if x > y {
                return y
        }
        return x
}

func main() {
        var N, A, B int
        fmt.Scanf("%d %d %d", &N, &A, &B)
        fmt.Println(N/(A+B)*A + min(N%(A+B), A))
}