package main

import "fmt"

func main() {
        var n int
        fmt.Scanln(&n)
        a := make([]int, n+1)
        for i := range a[:n] {
                fmt.Scanf("%d", &a[i])
        }
        a[n] = 0

        for skip := 0; skip < n; skip++ {
                pos := 0
                cost := 0
                for i := range a {
                        if i == skip {
                                continue
                        }
                        cost += abs(pos - a[i])
                        pos = a[i]
                }
                fmt.Println(cost)
        }
}

func abs(v int) int {
        if v > 0 {
                return v
        }
        return -v
}