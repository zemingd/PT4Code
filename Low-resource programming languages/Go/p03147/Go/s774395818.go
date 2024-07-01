package main

import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)
    hs := make([]int, n)
    for i := 0; i < n; i++ {
        var h int
        fmt.Scan(&h)
        hs[i] = h
    }

    //fmt.Println(n, hs)

    res := calcStep(hs)
    fmt.Println(res)
}

func calcStep(hs []int) int {
    //fmt.Println("hs: ", hs)
    var ng bool
    for i := range hs {
        if hs[i] > 0 {
            ng = true
            break
        }
    }
    if !ng {
        return 0
    }
    for i, h := range hs {
        //fmt.Println("i, h: ", i, h)
        if h == 0 {
            if i == 0 {
                return calcStep(hs[i+1:])
            } else if i == len(hs) {
                return calcStep(hs[:i])
            } else {
                return calcStep(hs[:i]) + calcStep(hs[i+1:])
            }
        }
    }
    for i := range hs {
        hs[i] -= 1
    }
    //fmt.Println("hs: ", hs)
    return calcStep(hs) + 1
}
