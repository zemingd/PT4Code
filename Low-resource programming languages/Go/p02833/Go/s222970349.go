package main

import (
    "fmt"
)

func main() {
    var n int64
    var c int64
    c=0  
    fmt.Scan(&n)
    if n%2==1 {
        fmt.Print(c)
    }else{
        n = n/10
        c = c+n
        for n/5>0 {
            n = n/5
            c = c+n
        }
        fmt.Print(c)
    }    
}