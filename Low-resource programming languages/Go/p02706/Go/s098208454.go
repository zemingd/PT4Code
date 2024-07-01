package main

import (
        "fmt"
)

func solution(n int, nums []int) int {
        for i := range nums {
                n = n - nums[i]
                if n < 0 {
                        return -1
                }
        }
        return n
}

func main() {
        var n, m int
        fmt.Scan(&n, &m)
        nums := make([]int, m)
        for i := 0; i < m; i++ {
                a := 0
                fmt.Scan(&a)
                nums = append(nums, a)
        }
        fmt.Println(solution(n, nums))
}