package main

import  (
    "fmt"
    "math"
    )

func main(){
    var n, v, min int
    max := math.MinInt32
    fmt.Scanln(&n)
    fmt.Scanln(&min)
    for i := 1 ; i < n ; i++ {
        fmt.Scanln(&v)
        if max < (v - min) {
            max = (v - min)
        } else if min > v {
            min = v
        }
    }
    fmt.Println(max)
}
