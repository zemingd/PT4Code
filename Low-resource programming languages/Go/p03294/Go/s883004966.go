package main

import "fmt"

func main() {
        var n int
        fmt.Scan(&n)
        a := make([]int, n)
        for i := range a {
                fmt.Scan(&a[i])
        }

        fmax := 0
        for i := range a {
                fmax += a[i] - 1
        }
        fmt.Println(fmax)
}