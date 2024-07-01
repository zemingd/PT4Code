package main

import (
    "fmt"
)

func main(){
    var n,i uint64
    fmt.Scan(&n)
    if n == 1{
        fmt.Println("Yes")
        return
    }
    h := make([]uint64, n)
    for i = 0; i < n; i++ {
        fmt.Scan(&h[i])
    }
    max := h[n - 1] + 1
    var flag bool = true
    for i = 0; i < n; i++ {
        if h[i] > max {
            flag = false
        }
    }
    if(flag){
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}
