package main

import (
	"fmt"
)

func main() {
	var n uint64
	fmt.Scan(&n)

	nums := make([]uint64, 5)
	for i := 0; i < 5; i++ {
		fmt.Scan(&nums[i])
	}
	var min uint64
	min = 18446744073709551615
	for _, num := range nums {
		if num <= min {
			min = num
		}
	}

	if min >= n {
		fmt.Println(5)
	} else {
		fmt.Println(n/min + 5)
	}
}
