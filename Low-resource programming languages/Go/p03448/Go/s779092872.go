package main

import (
        "fmt"
)

func main() {
        var (
                c500, c100, c50, given_amount int
        )

        fmt.Scan(&c500, &c100, &c50, &given_amount)
        count := 0
        for i := 0; i <= c500; i++ {
                for j := 0; j <= c100; j++ {
                        for k := 0; k <= c50; k++ {
                                sum := i*500 + j*100 + k*50
                                if sum == given_amount {
                                        count += 1
                                }
                        }
                }
        }
        fmt.Println(count)
}