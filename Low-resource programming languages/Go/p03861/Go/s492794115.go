package main

import "fmt"

func main() {
        var a, b, x int
        fmt.Scan(&a, &b, &x)
        if a == 0 {
                fmt.Println(b / x)
        }
        fmt.Println(b/x - (a-1)/x)
}