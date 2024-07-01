package main

import "fmt"

func main() {
    var a, b int
    fmt.Scan(&a, &b)
    switch {
    case a>12:
    case a>5:
        b/=2
    default:
        b=0
    }
    fmt.Println(b)
}
