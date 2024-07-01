package main

import (
    "fmt"
)

func main() {
    var s string
    var ans string
    fmt.Scan(&s)
    for _, c := range s {
        if c == 'B' && len(ans) > 0 {
            ans = ans[:len(ans)-1]
        } else if c == '0' || c == '1' {
            ans += string(c)
        }
    }
    fmt.Println(ans)
}