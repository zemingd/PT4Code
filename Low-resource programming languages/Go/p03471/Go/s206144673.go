package main

import "fmt"

func main() {
    var a, b, c int64
    var n, y int64
    fmt.Scan(&n, &y)

    // 10000 * a + 5000 * b + 1000 * c = Y
    // a + b + c = N
    for a = 0; 10000*a <= y; a++ {
        for b = 0; 10000*a + 5000*b <= y; b++ {
            c = n-a-b
            if y - 10000*a - 5000*b == 1000*c {
                fmt.Println(a, b, c)
                return
            }
        }
    }
    fmt.Println(-1, -1, -1)
}