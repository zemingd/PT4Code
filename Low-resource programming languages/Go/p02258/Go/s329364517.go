package main

import  "fmt"

func main(){
    var n, v, min, cmax int
    max := -1000000000
    fmt.Scanln(&n)
    fmt.Scanln(&min)
    for i := 1 ; i < n ; i++ {
        fmt.Scanln(&v)
        cmax = v - min
        if max < cmax {
            max = cmax
        }
        if min > v {
            min = v
        }
    }
    fmt.Println(max)
}
