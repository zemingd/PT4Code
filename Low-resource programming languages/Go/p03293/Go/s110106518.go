package main

import (
    "fmt"
)

func main() {
    var s, t []byte
    fmt.Scan(&s)
    fmt.Scan(&t)
    var ok bool
    n := len(s)
    for i := 0; i < n; i++ {
        var ng bool
        for j := 0; j < n; j++ {
            if s[(i+j)%n] != t[j] {
                ng = true
            }   
        }   
        if !ng {
            ok = true
        }   
    }   
    if ok {
        fmt.Println("Yes")
    } else {
        fmt.Println("No")
    }   
}
