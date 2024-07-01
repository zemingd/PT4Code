package main

import (
        "fmt"
)

func main() {
        var n int
        fmt.Scan(&n)

        dp := make([]bool, 100)
        dp[0] = true
        for i := range dp {
                if !dp[i] {
                        continue
                }
                if i+4 == n || i+7 == n {
                        fmt.Println("Yes")
                        return
                }
                if i+4 > n {
                        fmt.Println("No")
                        return
                }
                dp[i+4] = true
                if i+7 > n {
                        continue
                }
                dp[i+7] = true
        }
        fmt.Println("No")
}