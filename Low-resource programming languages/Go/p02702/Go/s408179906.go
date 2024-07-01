package main

import (
        "fmt"
        "strconv"
)

func solution(s string) int {
        l := len(s)
        c := 0
        memo := make(map[string]bool)
        for i := 0; i < l; i++ {
                for j := i + 4; j <= l; j++ {
                        tmp := s[i:j]
                        if memo[tmp] {
                                c++
                                continue
                        }
                        n, _ := strconv.Atoi(tmp)
                        if n%2019 == 0 {
                                memo[tmp] = true
                                c++
                        }
                }
        }
        return c
}

func main() {
        var s string
        fmt.Scan(&s)
        fmt.Println(solution(s))
}