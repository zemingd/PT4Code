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
    var a, b, c int
    fmt.Scan(&a, &b, &c)
    fmt.Println(min(a+b, a+c, b+c))
}