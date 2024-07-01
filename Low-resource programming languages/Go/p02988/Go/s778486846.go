package main

import (
	"fmt"
	//"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	var nums []int
	var num int
	for i := 0; i < n; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	count := 0
	for i := 1; i < n-1; i++ {
		if (nums[i-1] < nums[i] && nums[i] < nums[i+1]) || (nums[i-1] > nums[i] && nums[i] > nums[i+1]){
			count++
		}
	}
	fmt.Print(count)
}