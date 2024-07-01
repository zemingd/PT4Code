package main

import "fmt"

func main() {
    var nums [3]int
    var sorted [3]int

    fmt.Scanf("%d %d %d", &nums[0], &nums[1], &nums[2])

    for i :=0; i < len(nums)-1; i++ {
        min := nums[i]
        for j :=i+1; j < len(nums); j++ {
            if min > nums[j] {
                min, nums[j] = nums[j], min
            }
        }
        sorted[i] = min
    }
    sorted[len(sorted)-1] = nums[len(nums)-1]

    fmt.Printf("%d %d %d\n", sorted[0], sorted[1], sorted[2])
}
