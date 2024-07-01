package main

import (
        "fmt"
)

func solution(s string) int {

        c := 0
        for i := range s {
                if i&1 == 0 {
                        if s[i] == '0' {
                                c++
                        }
                } else {
                        if s[i] == '1' {
                                c++
                        }
                }
        }

        out := c
        c = 0
        for i := range s {
                if i&1 == 1 {
                        if s[i] == '0' {
                                c++
                        }
                } else {
                        if s[i] == '1' {
                                c++
                        }
                }
        }

        out = min(out, c)
        return out
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