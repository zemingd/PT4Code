package main

import "fmt"

func main() {
        var a, b int
        fmt.Scan(&a, &b)

        n := a - 1
        if b >= a {
                n++
        }
        fmt.Println(n)
}