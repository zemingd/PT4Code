package main

import "fmt"

const MAX_N int = 100000

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
    var a [MAX_N]int
    for i := 0; i < n; i++ {
        fmt.Scan(&a[i])
    }
    var forward, backword [MAX_N]int
    forward[0], backword[n] = 0, 0
    for i := 1; i <= n; i++ {
        forward[i] = gcd(forward[i - 1], a[i - 1])
    }
    for i := n; i > 0; i-- {
        backword[i - 1] = gcd(backword[i], a[i - 1])
    }
    ans := 0
    for i := 0; i < n; i++ {
        g := gcd(forward[i], backword[i + 1])
        if g > ans {
            ans = g
        }
    }
    fmt.Println(ans)
}

