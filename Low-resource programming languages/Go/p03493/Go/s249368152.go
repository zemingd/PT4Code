package main

import (
        "fmt"
        "strings"
)

func main() {
        var a string
        fmt.Scan(&a)
        c := strings.Count(a, "1")
        fmt.Println(c)
}