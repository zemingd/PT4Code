package main

import (
    "fmt"
)

func main() {
    var a, b, c int
    fmt.Scan(&a)
    fmt.Scan(&b)
    fmt.Scan(&c)
    m := a
    if m < b {
        m = b
    }
    if m < c {
        m = c
    }
    fmt.Println(a + b + c + m * 9)
}
