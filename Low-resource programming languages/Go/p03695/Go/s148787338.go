package main

import (
        "fmt"
)

func solution(n int, a []int) []int {
        var colors [9]int
        for i := range a {
                switch {
                case a[i] < 400:
                        colors[0]++
                case a[i] < 800:
                        colors[1]++
                case a[i] < 1200:
                        colors[2]++
                case a[i] < 1600:
                        colors[3]++
                case a[i] < 2000:
                        colors[4]++
                case a[i] < 2400:
                        colors[5]++
                case a[i] < 2800:
                        colors[6]++
                case a[i] < 3200:
                        colors[7]++
                default:
                        colors[8]++
                }
        }
        lo, hi := 0, 0

        for i := 0; i < 8; i++ {
                if colors[i] > 0 {
                        lo++
                }
        }
        hi = lo + colors[8]
        if lo == 0 && hi != 0 {
                lo = 1
        }
        return []int{lo, hi}
}

func main() {
        var n int
        fmt.Scan(&n)
        a := make([]int, n)
        for i := range a {
                fmt.Scan(&a[i])
        }
        out := solution(n, a)
        fmt.Printf("%v %v\n", out[0], out[1])
}