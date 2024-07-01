package main

import (
	"fmt"
)

func scanNums(len int) (nums []int64) {
	var num int64
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func findMin(nums []int64) (x int64) {
	x = nums[0]
	for j := 1; j < len(nums); j++ {
		if nums[j] < x {
			x = nums[j]
		}
	}
	return
}

func main() {
	var n int64
	fmt.Scan(&n)
	nums := scanNums(5)
	c := findMin(nums)
	var t int64
	if n%c == 0 {
		t = 4 + n/c
	} else {
		t = 5 + n/c
	}
	fmt.Println(t)
}
