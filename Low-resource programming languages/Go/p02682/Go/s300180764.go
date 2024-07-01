package main

import (
        "fmt"
)

func solution(a, b, c, k int) int {
        ans := 0

        if a >= k {
                return k
        } else {
                ans = a
                k -= a
        }

        if b >= k {
                return ans
        } else {
                k -= b
        }
        return ans - k
}

func main() {
        var a, b, c, k int
        fmt.Scan(&a, &b, &c, &k)
        fmt.Println(solution(a, b, c, k))
}