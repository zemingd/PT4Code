package main

import (
    "fmt"
)

func f() {
    var s, t string
    fmt.Scan(&s)
    fmt.Scan(&t)
    
    for i, _ := range []byte(s) {
        if t[i:] + t[:i] == s {
            fmt.Println("Yes")
            return
        }
    }
    
    fmt.Println("No")
    return
}

func main() {
    f()
}