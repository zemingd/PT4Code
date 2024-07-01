package main

import (
        "fmt"
)

func main() {
        var a, b, k int
        fmt.Scanf("%d %d %d\n", &a, &b, &k)

        if a+k-1 >= b-k+1 {
                for i := a; i <= b; i++ {
                        fmt.Println(i)
                }
                return
        }
        for i := a; i < a+k; i++ {
                fmt.Println(i)
        }
        for i := b - k + 1; i <= b; i++ {
                fmt.Println(i)
        }
}