package main

import (
        "fmt"
)

func main() {
        var n int
        fmt.Scanf("%d", &n)

        var canDiv bool
        for i := 2; i <= 9; i++ {
                if n%i == 0 && n/i <= 9 {
                        canDiv = true
                }
        }
        if n == 1 {
                canDiv = true
        }

        if canDiv {
                fmt.Println("Yes")
        } else {
                fmt.Println("No")
        }
}
