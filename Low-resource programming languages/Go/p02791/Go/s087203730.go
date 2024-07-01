package main

import (
    "fmt"
)

func main(){
    var N int

    fmt.Scan(&N)

    P := make([]int, N)

    for i:=0; i<N; i++{
        fmt.Scan(&P[i])
    }

    var large, count int

    for _, i := range P {
        large = 0
        for j:=0; j<i; j++ {
            if P[i]<=P[j]{
                large++
            } else {
                break
            }
        }
        if large == i {
            count++
        }
    }
    fmt.Println(count)
}
