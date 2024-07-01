package main

import "fmt"

func main() {
    var s, ans string

    fmt.Scan(&s)
    for i := 0; i < len(s); i++ {
        if s[i] == 'B' {
            if len(ans) != 0 {
                ans = ans[:len(ans)-1]
            }
        } else {
            ans += string(s[i])
        }
    }
    fmt.Println( ans )
}