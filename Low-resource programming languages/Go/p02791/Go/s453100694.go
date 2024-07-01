package main

import (
	"fmt"
)

func main() {

	var (
		n, count int
	)
	fmt.Scan(&n)
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}

	for i, num := range nums {
		var c int

		for j := 0; j < i; j++ {
			if num < nums[j] {
				c++
			}
		}
		if c == i {
			count++
		}
	}
	fmt.Println(count)
}
