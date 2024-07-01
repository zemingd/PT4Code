package main

import "fmt"

func main() {
        var s string
        var k int
        fmt.Scan(&s, &k)

        var c rune
        for _, c = range s {
                if c != '1' || k <= 0 {
                        break
                }
        }
        fmt.Printf("%c\n", c)
}