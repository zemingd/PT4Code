package main

import (
    "fmt"
    "sort"
)

func main(){
    var n, change int
    fmt.Scan(&n)
    a := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&a[i])
    }
    sort.Ints(a)
    res := a[0]
    for _, b := range a {
        gcd := gcd(b, res)
        if change == 0 && res > gcd {
            change++
            continue
        }
        res = gcd
    }
    fmt.Println(res)
}

func gcd(a, b int) int {
    if b == 0 {
        return a
    }
    return gcd(b, a%b)
}