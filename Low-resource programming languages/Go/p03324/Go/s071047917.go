package main

import "fmt"

func main() {
    var d, n int
    fmt.Scanln(&d, &n)
    if d == 0 {
        fmt.Printf("%d\n", n * 1)
    } else if d == 1 {
        fmt.Printf("%d\n", n * 100)
    } else if d == 2 {
        fmt.Printf("%d\n", n * 10000)
    } else {
        fmt.Printf(":(\n")
    }
}
