package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	// nums := scanNums(N)

	if N == K {
		fmt.Println(1)
		return
	}

	if K == 2 {
		fmt.Println(N - 1)
		return
	}

	i := 0
	for ; ; i++ {
		if N-(K-1)*i+1 == 0 {
			fmt.Println(i)
			return
		}
		if N-(K-1)*i+1 < 0 {
			fmt.Println(i - 1)
			return
		}

	}
}

func scanNums(length int) (nums []int) {
	var num int
	for i := 0; i < length; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
