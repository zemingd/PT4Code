package main

import (
    "fmt"
)

func main() {
    var start, end, k int
    fmt.Scanf("%d %d %d", &start, &end, &k)

    nums := []int{}
    for i := start; i <= end; i++ {
        nums = append(nums, i)
    }

    numsLen := len(nums)
    if numsLen <= k*2 {
        for i := 0; i < numsLen; i++ {
            fmt.Println(nums[i])
        }
    } else {
        for i := 0; i < k; i++ {
            fmt.Println(nums[i])
        }
        for i := numsLen-k; i < numsLen; i++ {
            fmt.Println(nums[i])
        }
    }
}
