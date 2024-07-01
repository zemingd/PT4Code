package main

import (
        "fmt"
)

func solution(n int, a []int) []int {
        out := make([]int, 0, n)

        hia := -1 << 31

        for i := 0; i < n; i++ {
                hia = max(hia, a[i])
        }
        for i := 0; i < n; i++ {
                hi := 0
                if hia == a[i] {
                        hi = -1 << 31
                        for j := 0; j < n; j++ {
                                if i != j {
                                        hi = max(hi, a[j])
                                }
                        }
                } else {
                        hi = hia
                }
                out = append(out, hi)
        }
        return out
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
}

func main() {
        var n int
        fmt.Scan(&n)
        a := make([]int, 0, n)
        for i := 0; i < n; i++ {
                t := 0
                fmt.Scan(&t)
                a = append(a, t)
        }
        for _, v := range solution(n, a) {
                fmt.Println(v)
        }
}
