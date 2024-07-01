package main

import "fmt"

func main() {
        var x int
        fmt.Scan(&x)

        max := 1
        for b := 2; b <= 100; b++ {
                for e := b * b; e <= 1000; e *= b {
                        if e <= x && e > max {
                                max = e
                        }
                }
        }
        fmt.Println(max)
}