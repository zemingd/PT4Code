package main

import (
        "fmt"
)

func solution(s string) string {
        if s[0] != 'A' {
                return "WA"
        }

        c := 0
        for _, r := range s[2 : len(s)-1] {
                if r == 'C' {
                        c++
                }
        }
        if c != 1 {
                return "WA"
        }

        for i := range s {
                if s[i] == 'A' || s[i] == 'C' {
                        continue
                }
                if s[i]-'a' < 0 || 26 < s[i]-'a' {
                        return "WA"
                }
        }

        return "AC"
}

func main() {
        var s string
        fmt.Scan(&s)
        fmt.Println(solution(s))
}