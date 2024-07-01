package main

import (
        "fmt"
)

func solution(a, b, k int) []int {

        out := make([]int, 0, 2*k)
        for i := a; i <= b; i++ {
                if i < a+k || b-k < i {
                        out = append(out, i)
                }
        }
        return out
}

func main() {
        var a, b, k int
        fmt.Scan(&a, &b, &k)
        for _, n := range solution(a, b, k) {
                fmt.Println(n)
        }
}