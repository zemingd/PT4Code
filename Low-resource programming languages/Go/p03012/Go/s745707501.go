package main

import (
    "fmt"
    "math"
)

func min(nums ...int) int {
    res := nums[0]
    for i := 0; i < len(nums); i++ {
        res = int(math.Min(float64(res), float64(nums[i])))
    }
    return res
}

func main() {
    var n int
    var ws []int

    var sum int
    sum = 0
    fmt.Scan(&n)
    for i := 0; i < n; i++ {
        var w int
        fmt.Scan(&w)
        ws = append(ws, w)
        sum += w
    }
    var tmp int
    tmp = 0
    var ans int
    ans = 10000000
    for i := 0; i < n; i++ {
        tmp += ws[i]
        ans = min(ans, int(math.Abs(float64(tmp - (sum - tmp)))))
    }
    fmt.Println(ans)
}