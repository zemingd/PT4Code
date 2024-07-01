package main

import "fmt"

func main() {
    var (
        a int
        b int
        c int
        d int
        max int
    )
    fmt.Scan(&a)
    fmt.Scan(&b)
    fmt.Scan(&c)
    fmt.Scan(&d)

    max = a * c

    if a * d > max {
        max = a * d
    }
    if b * c > max {
        max = b * c
    }
    if b * d > max {
        max = b * d
    }
    fmt.Print(max)
}