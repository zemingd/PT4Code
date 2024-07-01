package main

import (
    "fmt"
)

func main(){
    var n,i uint64
    fmt.Scan(&n)
    h := make([]uint64, n)
    for i = 0; i < n; i++ {
        fmt.Scan(&h[i])
    }
    max := h[n - 1] + 1
    var flag bool = true
    for i = n - 1; i > 0; i-- {
        if h[i] > max {
            flag = false
        }
        max = h[i] + 1
    }
    if h[0] > max {
        flag = false
    }
    if(flag){
        fmt.Println("Yes")
    }else{
        fmt.Println("No")
    }
}
