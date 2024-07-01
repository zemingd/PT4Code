package main

import (
        "fmt"
)

func main() {
        var N int
        fmt.Scan(&N)
        x := N / 60
        h := x / 60
        m := x % 60
        s := N % 60
        fmt.Printf("%d:%d:%d\n", h, m, s)
}
