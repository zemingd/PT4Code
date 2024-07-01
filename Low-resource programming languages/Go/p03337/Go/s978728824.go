package main

import (
	"fmt"
)

func max(nums ...int) int {
	max := nums[0]
	for _, v := range nums {
		if max < v {
			max = v
		}
	}
	return max
}

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	fmt.Println(max(a+b, a-b, a*b))
}
