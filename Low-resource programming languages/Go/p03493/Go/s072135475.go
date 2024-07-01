package main

import (
    "fmt"
)

func main() {
    var s string
    fmt.Scanf("%s", &s)
    num := 0
    for _, c := range s {
        if c == '1' {
            num++
        }
    }
    fmt.Printf("%v\n", num)
}