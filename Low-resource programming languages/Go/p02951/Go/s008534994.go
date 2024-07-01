package main

import (
    "fmt"
)

func main(){
    var a, b, c int64
    fmt.Scan(&a, &b, &c)
    ans := c - (a - b)
    if ans < 0{
        fmt.Println("0")
    }else{
        fmt.Println(ans)
    }
}
