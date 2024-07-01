package main

import (
	"fmt"
)

func rsort(nums []int, n int) {
	for i := 1; i < n; i++ {
		v := nums[i]
		j := i - 1
		for j >= 0 && nums[j] < v {
			nums[j+1] = nums[j]
			j--
		}
		nums[j+1] = v
	}
}

func main() {
	nums := make([]int, 3)
	for i := range nums {
		fmt.Scan(&nums[i])
	}

	rsort(nums, 3)

	fmt.Println(nums[0]*10 + nums[1] + nums[2])
}
