package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		nums[i] = i + 1
	}

	total := 0
	for j := n - 1; j >= 0; j-- {
		if j-1 < 0 {
			break
		}
		total += nums[j-1]
	}

	fmt.Println(total)
}