package main

import (
        "fmt"
        "sort"
)

func main() {
        var n int
        fmt.Scan(&n)

        x := make([]int, n)
        for i := range x {
                fmt.Scan(&x[i])
        }

        s := make([]int, n)
        copy(s, x)
        sort.Ints(s)

        for i := range x {
                if x[i] < s[n/2] {
                        fmt.Println(s[n/2])
                        continue
                }
                fmt.Println(s[n/2-1])
        }
}