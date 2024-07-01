package main

import (
    "fmt"
)

func pow(a,b int){
    r := 1
    for i := 0; i < a; i++{
        r *= b
    }
    return r
}

func main() {
    var a,b int
    fmt.Scan(&a,&b)
    if(b == 100){
        b = 101
    }
    fmt.Println(b * pow(100, a))
}