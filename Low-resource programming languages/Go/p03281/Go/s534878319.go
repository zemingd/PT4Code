package main

import (
        "fmt"
        "math"
)

func main() {
        var n int
        fmt.Scanf("%d", &n)
        fmt.Printf("%d\n", find(n))
}

func find(n int) int {
        var num int
        for i := 1; i <= n; i++ {
                if i%2 == 1 && divisorNumIs(i, 8) {
                        num++
                }
        }
        return num
}

func divisorNumIs(n, divisor int) bool {
        life := divisor - 2
        limit := int(math.Sqrt(float64(n)))
        for i := 2; i < limit; i++ {
                if n%i == 0 {
                        life -= 2
                }
                if life < 0 {
                        break
                }
        }
        return life == 0
}