package main

import (
	"fmt"
)

func main() {
	var n int64
	fmt.Scan(&n)

	nums := make([]int64, 5)
	for i := range nums {
		fmt.Scan(&nums[i])
	}
	min := nums[0]
	for _, num := range nums {
		if num < min {
			min = num
		}
	}

	if min >= n {
		fmt.Println(5)
	} else {
		fmt.Println(n/min + 5)
	}
}
