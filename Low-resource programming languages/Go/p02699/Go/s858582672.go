package main

import (
    "fmt"
)

func main() {
    var s, w int
    fmt.Scanf("%d %d", &s, &w)
    if s <= w {
        fmt.Print("unsafe\n")
    } else {
        fmt.Print("safe\n")
    }
}
