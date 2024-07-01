package main

import (
    "fmt"
)

func main() {
    M := make(map[int]bool)
    var n int
    fmt.Scanf("%d", &n)

    res := 0
    for i := 0; i < n; i++ {
        var a int
        fmt.Scanf("%d", &a)
        if M[a] {
            M[a] = false
            res--
        } else {
            M[a] = true
            res++
        }
    }

    fmt.Printf("%d\n", res)

}
