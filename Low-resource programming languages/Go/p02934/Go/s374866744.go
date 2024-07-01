package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	nums := scanNums(N)
	var div float32
	for i := 0; i < N; i++ {
		div += 1 / nums[i]
	}
	fmt.Println(1 / div)
}

func scanNums(len int) (nums []float32) {
	var num float32
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
