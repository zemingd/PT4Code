package main

import (
        "fmt"
)

func solution(s int) int {
        memo := make(map[int]bool, 0)
        memo[s] = true
        i := 2
        b := s
        for {
                a := helper(b)
                i++
                b = a
                if memo[a] {
                        break
                } else {
                        memo[a] = true
                }
        }
        return i - 1
}

func helper(n int) int {
        if n%2 == 0 {
                return n / 2
        }
        return 3*n + 1
}

func main() {
        var s int
        fmt.Scan(&s)
        fmt.Println(solution(s))
}