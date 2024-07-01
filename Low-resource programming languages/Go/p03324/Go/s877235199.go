package main

import "fmt"

func main() {
    var d, n int
    fmt.Scanln(&d, &n)
    if d == 0 {
        if n == 100 {
            fmt.Printf("%d\n", n * 1 + 1)
        } else {
            fmt.Printf("%d\n", n * 1)
        }
    } else if d == 1 {
        if n == 100 {
            fmt.Printf("%d\n", n * 100 + 100)
        } else {
            fmt.Printf("%d\n", n * 100)
        }
    } else if d == 2 {
        if n == 100 {
            fmt.Printf("%d\n", n * 10000 + 10000)
        } else {
            fmt.Printf("%d\n", n * 10000)
        }
    } else {
        fmt.Printf("0\n")
    }
}
