package main

import (
	"fmt"
)

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func getTotal(a, b int) (c int) {
	switch {
	case a == b:
		c = a * 2
	case a > b:
		c = a*2 - 1
	case a < b:
		c = b*2 - 1
	}
	return
}

func main() {
	nums := scanNums(2)
	fmt.Println(getTotal(nums[0], nums[1]))
}
