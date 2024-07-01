package main

import (
        "fmt"
        "math"
)

func main() {
        var n int
        fmt.Scan(&n)
        l := int(math.Sqrt(float64(n)))
        min := math.MaxInt32
        for i := 1; i <= l; i++ {
                if n%i == 0 {
                        var cmin int
                        if di, dni := digits(i), digits(n/i); di < dni {
                                cmin = dni
                        } else {
                                cmin = di
                        }
                        if cmin < min {
                                min = cmin
                        }
                }
        }
        fmt.Printf("%d\n", min)
}

func digits(n int) (d int) {
        tmp := n
        for tmp > 0 {
                d++
                tmp /= 10
        }
        return d
}