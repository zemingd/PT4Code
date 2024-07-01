package main

import (
        "fmt"
)

func solution(s string) string {
        var buf [4]int
        for i := range s {
                buf[i] = int(s[i] - '0')
        }
        out := ""
        for p := 0; p < 1<<3; p++ {
                ans := buf[0]
                var b []byte
                b = append(b, s[0])
                for i := 0; i < 3; i++ {
                        if p>>uint(i)&1 == 0 {
                                b = append(b, '+')
                                b = append(b, s[i+1])
                                ans += buf[i+1]
                        } else {
                                b = append(b, '-')
                                b = append(b, s[i+1])
                                ans -= buf[i+1]
                        }
                }
                if ans == 7 {
                        b = append(b, '=')
                        b = append(b, '7')
                        out = string(b)
                        break
                }
        }
        return out
}

func main() {
        var s string
        fmt.Scan(&s)
        fmt.Println(solution(s))
}