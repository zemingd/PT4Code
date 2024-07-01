package main

import (
    "fmt"
)

func main() {
    var S string
    fmt.Scanf("%s", &S)
    af := false
    bf := false

    for _, s := range S {
        if s == 'A' {
            af = true
        }

        if s == 'B' {
            bf = true
        }
    }
    if af && bf {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }
}