package main

import (
	"fmt"
)

func max(nums ...int) int {
	m := nums[0]
	n := len(nums)
	for i := 1; i < n; i++ {
		if m < nums[i] {
			m = nums[i]
		}
	}
	return m
}

func min(nums ...int) int {
	m := nums[0]
	n := len(nums)
	for i := 1; i < n; i++ {
		if m > nums[i] {
			m = nums[i]
		}
	}
	return m
}

func max2(a, b int) int {
	if a > b {
		return a
	}
	//
	return b
}

func main() {
	var n, m int
	fmt.Scan(&n, &m)
	//
	li := make([]int, m)
	ri := make([]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&li[i], &ri[i])
	}
	//
	limax := max(li...)
	rimin := min(ri...)
	//
	fmt.Println(max2(rimin-limax+1, 0))
}
