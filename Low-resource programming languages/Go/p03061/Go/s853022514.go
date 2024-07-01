package main

import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)
    as := make([]int, n)
    for i := range as {
        var a int
        fmt.Scan(&a)
        as[i] = a
    }

    ls := make([]int, n)
    ls[1] = as[0]
    rs := make([]int, n)
    rs[n-2] = as[n-1]
    for i := 2; i < n; i++ {
        if i > 1 {
            ls[i] = gcd(ls[i-1], as[i-1])
        }
        if i > 1 {
            rs[n-1-i] = gcd(rs[n-i], as[n-i])
        }
    }

    var max int
    for i := 0; i < n; i++ {
        var res int
        if i == 0 {
            res = rs[0]
        } else if i == n-1 {
            res = ls[n-1]
        } else {
            res = gcd(ls[i], rs[i])
        }
        if res > max {
            max = res
        }
    }
    fmt.Println(max)
}

func gcd(a, b int) int {
    if a < b {
        a, b = b, a
    }
    for a%b != 0 {
        a, b = b, a%b
    }
    return b
}
