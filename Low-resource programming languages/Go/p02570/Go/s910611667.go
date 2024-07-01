package main

import (
	"fmt"
)

func solve(d, t, s int) string {
	if d/s <= t {
		return "Yes"
	} else {
		return "No"
	}
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func main() {
	nums := scanNums(3)
	d := nums[0]
	t := nums[1]
	s := nums[2]

	result := solve(d, t, s)
	fmt.Println(result)
}
