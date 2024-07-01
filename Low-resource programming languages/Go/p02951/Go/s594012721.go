package main

import (
	"fmt"
)

func main() {
	nums := scanNums(3)
	rest := nums[2] - (nums[0] - nums[1])
	if rest <= 0 {
		rest = 0
	}
	fmt.Println(rest)
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}