package main

import (
    "fmt"
)

func main() {
    var s string
    fmt.Scan(&s)
    i := 0
    for _, c := range s {
        if c == '1' {
            i++
        }
    }
    fmt.Print(i)
}
