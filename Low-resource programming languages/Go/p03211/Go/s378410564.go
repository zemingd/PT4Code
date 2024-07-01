package main

import (
        "fmt"
        "strconv"
)

func solution(s string) int {
        out := 1 << 31
        for i := 0; i < len(s)-2; i++ {
                n, _ := strconv.Atoi(s[i : i+3])
                out = min(out, abs(n, 753))
        }
        return out
}

func abs(x, y int) int {
        if x < y {
                return y - x
        }
        return x - y
}
func min(x, y int) int {
        if x < y {
                return x
        }
        return y
}

func main() {
        var s string
        fmt.Scan(&s)
        fmt.Println(solution(s))
}