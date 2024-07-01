package main

import (
        "fmt"
        "math"
)

func solution(a, b, n int) int {
        ans := -1 << 31

        for i := 1; i <= n; i++ {
                ans = max(ans, int(math.Floor(float64(a)*float64(i)/float64(b))-float64(a)*math.Floor(float64(i)/float64(b))))
        }
        return ans
}

func max(x, y int) int {
        if x > y {
                return x

        }
        return y
}

func main() {
        var a, b, n int
        fmt.Scan(&a, &b, &n)
        fmt.Println(solution(a, b, n))
}