package main

import "fmt"

func main() {
        var d, n int
        fmt.Scan(&d, &n)
        if n == 100 {
                n = 0
        }

        base := 1
        for i := 0; i < d; i++ {
                base *= 100
        }
        fmt.Println(base * n)
}