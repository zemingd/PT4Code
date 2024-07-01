package main

import "fmt"

func main(){
    var n, a, b int64
    fmt.Scan(&n, &a, &b)
    if sum := n * a; sum >= b{
        fmt.Println(b)
    }else{
        fmt.Println(sum)
    }
}