package main

import (
   "fmt" 
)

func main() {
    var H,N,c int   
    fmt.Scan(&H)
    fmt.Scan(&N)
          
    for N >0 {
        var x int
        fmt.Scan(&x)
        c+=x
        N-=1
    }
    if c >= H{
        fmt.Print("Yes")
    }else {
        fmt.Print("No")
    }
}