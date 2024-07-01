package main

import "fmt"

func max(a, b int) int {
    if a > b {
        return a
    }
    return b
}

func main() {
    var a, b int
    fmt.Scan(&a, &b)
    if a == b {
        fmt.Println(a + b)
    } else {
        fmt.Println(max(a, b) * 2 - 1)
    }
}
