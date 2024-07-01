package main

import "fmt"

func main() {
        var n int
        fmt.Scanf("%d", &n)
        var input string
        fmt.Scanf("%s", &input)
        var count int
        for i := 0; i < len(input)-3; i++ {
                if input[i:i+3] == "ABC" {
                        count++
                }
        }
        fmt.Printf("%d\n", count)
}