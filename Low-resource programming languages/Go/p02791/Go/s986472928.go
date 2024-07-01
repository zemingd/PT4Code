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

    min := P[0]
    var count int

    for i:=0; i<N; i++ {
        for j:=0; j<i+1; j++ {
            if min>=P[i]{
                min = P[j]
            }
        }
        if min == P[i] {
            count++
        }
    }
    fmt.Println(count)
}
