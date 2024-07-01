package main

import (
        "fmt"
)

func solution(n int) int {
        sum := 0
        for i := 1; i <= n; i++ {
                for j := 1; j <= n; j++ {
                        for k := 1; k <= n; k++ {
                                sum += threeGcd(i, j, k)
                        }
                }
        }
        return sum
}

func main() {
        var k int
        fmt.Scan(&k)
        fmt.Println(solution(k))
}

func threeGcd(a, b, c int) int {
        return gcd(gcd(a, b), c)
}
func gcd(a, b int) int {
        for b != 0 {
                r := a % b
                a = b
                b = r
        }
        return a
}