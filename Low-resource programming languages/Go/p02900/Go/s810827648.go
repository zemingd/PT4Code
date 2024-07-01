package main

import "fmt"

func gcd(x, y int64) int64 {
        if y == 0 {
                return x
        } else {
                return gcd(y, x%y)
        }
}

func prime_factor(n int64) map[int64]int {
        ret := map[int64]int{}

        for i := int64(2); i*i <= n; i++ {
                for n%i == 0 {
                        ret[i]++
                        n /= i
                }
        }
        if n != 1 {
                ret[n]++
        }
        return ret
}

func main() {
        var a, b int64

        fmt.Scan(&a, &b)
        g := gcd(a, b)

        fmt.Println(len(prime_factor(g)) + 1)
}