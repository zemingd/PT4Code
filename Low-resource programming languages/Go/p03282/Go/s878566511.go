package main

import "fmt"

func main() {
        var s string
        var k int
        fmt.Scan(&s, &k)

        i := 0
        for k > 0 && s[i] == '1' {
                k--
                i++
        }
        fmt.Printf("%c\n", s[i])
}