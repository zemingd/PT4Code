package main

import "fmt"

func main() {
        var s string
        var k int
        fmt.Scan(&s, &k)

        i := 0
        for i = range s {
                if s[i] != '1' || k-1 <= i {
                        break
                }
        }
        fmt.Printf("%c\n", s[i])
}