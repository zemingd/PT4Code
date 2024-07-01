package main

import "fmt"

func main() {
    var n, tmp int
    var ans float64
    fmt.Scan(&n)
    for i := 0; i < n; i++ {
        fmt.Scan(&tmp)
        ans += 1.0 / float64(tmp)
    }

    ans = 1.0 / ans

    fmt.Println(ans)
}
