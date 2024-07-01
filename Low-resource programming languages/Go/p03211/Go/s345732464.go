package main

import (
    "fmt"
    "math"
    "strconv"
)

func main() {
    var S string
    fmt.Scan(&S)
    n := len(S)

    var ans float64
    ans = 1e31
    for i := 0; i <= n - 3; i++ {
        x, _ := strconv.Atoi(S[i:i+3])
        ans = math.Min(ans, math.Abs(float64(x - 753)))
    }
    fmt.Println(ans)
}
