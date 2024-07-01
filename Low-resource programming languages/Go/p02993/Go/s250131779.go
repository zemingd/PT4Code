package main

import "fmt"

func main() {
        var s string
        fmt.Scan(&s)

        var prev rune
        for _, r := range s {
                if prev == 0 {
                        prev = r
                        continue
                }
                if prev == r {
                        fmt.Println("Bad")
                        return
                }
                prev = r
        }
        fmt.Println("Good")
}