package main

import (
        "fmt"
)

func solution(n, t, a int, h []int) int {
        lo := 1 << 31
        out := 0
        for i := range h {
          diff := abs(1000*a - (1000*t - (h[i] * 6)))
                if lo > diff {
                        out = i + 1
                        lo = diff
                }

        }
        return out
}

func abs(x int) int {
        if x < 0 {
                return -x
        }
        return x
}

func main() {
        var n, t, a int
        fmt.Scan(&n, &t, &a)
        h := make([]int, n)
        for i := range h {
                fmt.Scan(&h[i])
        }
        fmt.Println(solution(n, t, a, h))
}
