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

func main() {
	var n int
	fmt.Scan(&n)

	nums := scanNums(n)

	sum := 0
	for leftIndex, left := range nums {
		for rightIndex := leftIndex + 1; rightIndex < len(nums); rightIndex++ {
			right := nums[rightIndex]

			heal := left * right
			sum += heal
		}
	}

	fmt.Println(sum)
}