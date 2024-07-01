package main

import "fmt"

func main() {
        var s, t string
        fmt.Scanln(&s)
        fmt.Scanln(&t)

loop:
        for i := range s {
                for j := 0; j < len(s); j++ {
                        if s[(i+j)%len(s)] != t[j] {
                                continue loop
                        }
                }
                fmt.Println("Yes")
                return
        }
        fmt.Println("No")
}