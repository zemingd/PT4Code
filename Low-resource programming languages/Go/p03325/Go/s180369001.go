package main

import (
        "fmt"
)

func main() {
        var n int
        fmt.Scan(&n)
        a := make([]int, n)
        for i := 0; i < n; i++ {
                fmt.Scan(&a[i])
        }

        cnt := 0
        for i := range a {
                for a[i]%2 == 0 {
                        a[i] /= 2
                        cnt++
                }
        }
        fmt.Println(cnt)
}