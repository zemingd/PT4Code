package main

import (
        "fmt"
        "strings"
)

func main() {
        var n int
        var s string
        fmt.Scanf("%d", &n)
        fmt.Scanf("%s", &s)
        fmt.Println(strings.Count(s, "ABC"))
}