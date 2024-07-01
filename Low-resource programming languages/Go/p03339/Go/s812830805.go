package main

import (
        "fmt"
)

func main() {
        var n int
        fmt.Scan(&n)
        var s string
        fmt.Scan(&s)
        wChanges := make([]int, n)
        for i := 1; i < n; i++ {
                wChanges[i] = wChanges[i-1]
                if s[i-1] == 'W' {
                        wChanges[i]++
                }
        }
        min := wChanges[n-1]
        eChanges := make([]int, n)
        for i := n - 1; i > 0; i-- {
                eChanges[i-1] = eChanges[i]
                if s[i] == 'E' {
                        eChanges[i-1]++
                }
                v := wChanges[i-1] + eChanges[i-1]
                if v < min {
                        min = v
                }
        }
        fmt.Printf("%d\n", min)
}