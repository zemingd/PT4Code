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

func calcMinLoss(nums []int) (diff int) {
	diff = nums[1] - nums[0]
	for i := 1; i < len(nums); i++ {
		tmp := nums[i] - nums[i-1]
		if diff > tmp {
			diff = tmp
		}
	}
	return
}

func main() {
	// return value
	var output int
	output = 0

	// input the number of values
	var n int
	fmt.Scan(&n)

	// fetch values as a slice
	var nums []int
	nums = scanNums(n)

	var tmp int
	for i := 0; i < len(nums); i++ {
		for j := i + 1; j < len(nums); j++ {
			tmp = nums[j] - nums[i]
			if output < tmp {
				output = tmp
			}
		}
	}

	if output == 0 {
		output = calcMinLoss(nums)
	}
	fmt.Print(output)
}

