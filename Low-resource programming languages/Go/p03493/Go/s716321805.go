package main

import (
    "fmt"
    "strings"
)

func main() {
    var s string
    fmt.Scan(&s)

    fmt.Printf(strings.Count(s, "1"))
}