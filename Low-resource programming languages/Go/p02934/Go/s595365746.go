package main

import "fmt"

func main() {
    var n int
    fmt.Scan(&n)
    b := 0.0
    for i := 0; i < n; i ++ {
        var a int
        fmt.Scan(&a)
        b += 1.0 / float64(a)
    }
    fmt.Println(1.0 / b)
}
