package main

import (
    "fmt"
)

func main() {
    var n int 
    fmt.Scan(&n)
    var sum int 
    for i := 0; i < n; i++ {
        var a int 
        fmt.Scan(&a)
        sum += a - 1 
    }   
    fmt.Println(sum)
}
