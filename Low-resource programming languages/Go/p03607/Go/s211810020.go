package main

import (
    "fmt"
)

func main() {
    var N int
    fmt.Scan(&N)
    cnt := map[int]int{}
    for i := 0; i < N; i++ {
        var S int
        fmt.Scan(&S)
        cnt[S] += 1
    }
    ans := 0
    for _, v := range cnt {
        if v % 2 == 1 {
            ans++
        }
    }
    fmt.Println(ans)
}