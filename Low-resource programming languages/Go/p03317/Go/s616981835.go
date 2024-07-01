package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	// nums := scanNums(N)

	i := 0
	for ; ; i++ {
		if N-(K-1)*i+1 <= 0 {
			break
		}

	}
	fmt.Println(i - 1)
	return
}

func scanNums(length int) (nums []int) {
	var num int
	for i := 0; i < length; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
