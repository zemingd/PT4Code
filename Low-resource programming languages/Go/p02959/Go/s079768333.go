package main

import (
    "fmt"
)

func main() {
    var n int
    fmt.Scan(&n)
    as := make([]int, n+1)
    for i := range as {
        fmt.Scan(&as[i])
    }
    bs := make([]int, n)
    for i := range bs {
        fmt.Scan(&bs[i])
    }

    var cnt int
    for i := range as {
        if i > 0 && bs[i-1] > 0 {
            if bs[i-1] >= as[i] {
                cnt += as[i]
                bs[i-1] -= as[i]
                as[i] = 0
                continue
            } else {
                cnt += bs[i-1]
                as[i] -= bs[i-1]
                bs[i-1] = 0
            }
        }
        if i < n {
            if bs[i] >= as[i] {
                cnt += as[i]
                bs[i] -= as[i]
                as[i] = 0
            } else {
                cnt += bs[i]
                as[i] -= bs[i]
                bs[i] = 0
            }
        }
    }

    fmt.Println(cnt)
}
