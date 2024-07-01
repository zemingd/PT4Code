package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanln(&n)

	nums := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanln(&nums[i])
	}

	fmt.Println(logic(nums))
}

func logic(nums []int) int {
	m := make(map[int]int)

	for _, n := range nums {
		m[n]++
	}
	return len(m)
}
