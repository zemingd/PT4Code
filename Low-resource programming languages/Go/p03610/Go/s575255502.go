package main

import "fmt"

func main() {
        var s string
        fmt.Scanf("%s", &s)

        for idx, c := range s {
                if idx%2 == 0 {
                        fmt.Printf("%v", string(c))
                }
        }
        fmt.Printf("\n")
}