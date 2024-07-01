package main

import "fmt"

func gcd(x, y int) int {
    for y > 0 {
        x, y = y, x % y
    }
    return x
}

func max(x, y int) int {
    if x > y {
        return x
    }
    return y
}

func main() {
    var n int
    fmt.Scan(&n)
    a := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&a[i])
    }
    if n == 2 {
        fmt.Println(max(a[0], a[1]))
    } else {
        g := a[0]
        forward, backword := make([]int, n), make([]int, n)
        forward[0], backword[n - 1] = a[0], a[n - 1]
        for i := 1; i < n; i++ {
            g := gcd(g, a[i])
            forward[i] = g
        }
        g = a[n - 1]
        for i := n - 2; i >= 0; i-- {
            g := gcd(g, a[i])
            backword[i] = g
        }
        first, second := 1000000007, 1000000007
        for i := 0; i < n; i++ {
            v := max(forward[i], backword[i])
            if v < first {
                second = first
                first = v
            } else if v < second {
                second = v
            }
        }
        fmt.Println(second)
    }
}

