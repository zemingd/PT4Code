package main

import (
        "fmt"
)

func solution(a, b, c, k int) string {

        for i := 0; i < k; i++ {
                if a > b {
                        b *= 2
                } else {
                        c *= 2
                }
        }
        if b > a && c > b {
                return "Yes"
        }
        return "No"
}

func main() {
        var a, b, c, k int
        fmt.Scan(&a, &b, &c, &k)
        fmt.Println(solution(a, b, c, k))
}