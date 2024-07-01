package main

import "fmt"

func main() {
        var n, max, maxN int
        fmt.Scan(&n)
        for i := 1; i <= n; i++ {
                tmp := i
                num := 1
                for tmp > 0 && tmp%2 == 0 {
                        tmp /= 2
                        num++
                }
                if num > max {
                        maxN = i
                        max = num
                }
        }
        fmt.Printf("%d\n", maxN)
}