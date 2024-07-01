package main

import (
    "fmt"
    "strings"
)

func main() {
    a := ""
    fmt.Scan(&a)
    fmt.Println(strings.Count(a, "1"))
}