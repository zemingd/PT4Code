package main

import (
	"fmt"
	"strconv"
)

func solve(nums []int) int {
	minDiff := 753
	tn := 753
	for i := 0; i < len(nums)-3; i++ {
		n := 0
		for j := 0; j < 3; j++ {
			n = 10*n + nums[i+j]
		}
		diff := tn - n
		if diff < 0 {
			diff = -diff
		}

		if diff < minDiff {
			minDiff = diff
		}
	}

	return minDiff
}

func main() {
	var str string
	fmt.Scanln(&str)

	nums := make([]int, len(str))
	for i, c := range str {
		nums[i], _ = strconv.Atoi(string(c))
	}

	fmt.Println(solve(nums))
}