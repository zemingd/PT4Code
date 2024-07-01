package main

import "fmt"

func main() {
        var n int
        fmt.Scan(&n)
        maxF := n / 4
        maxS := n / 7
        exists := false
        for i := 0; i <= maxF; i++ {
                for k := 0; k <= maxS; k++ {
                        if n == 4*i+7*k {
                                exists = true
                                break
                        }
                }
        }
        if exists {
                fmt.Println("Yes")
        } else {
                fmt.Println("No")
        }
}