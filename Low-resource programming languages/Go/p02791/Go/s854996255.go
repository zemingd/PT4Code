package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	nums := make([]int, n)
	min := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
		if i == 0 {
			min[0] = nums[0]
		}
		if i > 0 && nums[i] < min[i-1] {
			min[i] = nums[i]
		} else if i > 0 && nums[i] >= min[i-1] {
			min[i] = min[i-1]
		}
	}
	counter := 0
	for i, num := range nums {
		if num == min[i] {
			counter++
		}
		if num == 1 {
			fmt.Println(counter)
			return
		}
	}
	fmt.Println(counter)
}
