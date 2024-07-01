package main

import(
        "fmt"
        "math"
)

func main() {
        var n uint64
        var c [5]uint64
        fmt.Scanf("%d", &n)
        var m uint64
        m = math.MaxUint64
        for i := 0; i < 5; i++ {
                fmt.Scanf("%d", &c[i])
                if c[i] < m {
                        m = c[i]
                }
        }
        fmt.Println(5 + n / m)
}
