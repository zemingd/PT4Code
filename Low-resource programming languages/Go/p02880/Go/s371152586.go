package main

import "fmt"

func main() {
        var n int
        fmt.Scanf("%d", &n)
        for i := 1; i < 10; i++ {
                if div := n / i; n%i == 0 && div < 10 {
                        fmt.Println("Yes")
                        return
                }
        }
        fmt.Println("No")
}