package main

import "fmt"

func main() {
    var n int
    fmt.Scan(&n)

    nums := map[int]int{}
    for i := 0; i < n; i++ {
        var tmp int
        fmt.Scan(&tmp)
        nums[tmp] = 1
    }
    fmt.Println(len(nums))
}