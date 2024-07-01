package main

import "fmt"

func main() {
        var s string
        fmt.Scanf("%s", &s)

        var count int

        for step := 0; step < len(s)/2; step++ {
                if s[step] != s[len(s)-1-step] {
                        count++
                }
        }

        fmt.Println(count)
}