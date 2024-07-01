package main

import (
        "fmt"
)

func solution(a, b, k int) []int {

        out := make([]int, 0, 2*k)
        for i := a; i <= min(b, a+k-1); i++ {
                out = append(out, i)
        }

        for i := max(b-k+1, a+k); i <= b; i++ {
                out = append(out, i)
        }
        return out
}

func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func max(x, y int) int {
        if x > y {
                return x
        }
        return y
}
func main() {
        var a, b, k int
        fmt.Scan(&a, &b, &k)
        for _, n := range solution(a, b, k) {
                fmt.Println(n)
        }
}