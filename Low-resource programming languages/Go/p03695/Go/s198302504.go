package main

import "fmt"

func main() {
        var n, tmp, full int
        fmt.Scan(&n)

        exists := map[int]struct{}{}
        for i := n; i > 0; i-- {
                fmt.Scan(&tmp)
                if g := grade(tmp); g == -1 {
                        full++
                } else {
                        exists[g] = struct{}{}
                }
        }
        min, max := len(exists), len(exists)+full
        if min == 0 && full > 0 {
                min = 1
        }
        fmt.Printf("%d %d\n", min, max)
}

func grade(rate int) int {
        for k := 1; k < 9; k++ {
                if rate < k*400 {
                        return k
                }
        }
        return -1
}