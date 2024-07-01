package main

import (
        "fmt"
        "math"
)

func main() {
        var n int
        fmt.Scanf("%d", &n)
        fmt.Printf("%d\n", resolve(n))
}

func resolve(n int) int {
        min := math.MaxInt64
        lim := int(math.Sqrt(float64(n)))
        for i := 1; i <= lim; i++ {
                if n%i == 0 {
                        a, b := i, n/i
                        v := f(a, b)
                        if min > v {
                                min = v
                        }
                }
        }
        return min
}
func f(a, b int) int {
        return digits(max(a, b))
}
func max(a, b int) int {
        if a > b {
                return a
        }
        return b
}

func digits(n int) (d int) {
        return digitsWithBase(n, 10)
}
func digitsWithBase(n int, b int) (d int) {
        tmp := n
        for tmp > 0 {
                d++
                tmp /= b
        }
        return
}