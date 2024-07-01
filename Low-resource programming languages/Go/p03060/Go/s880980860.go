package main

import (
	"fmt"
)


func main() {
	var n int
	fmt.Scan(&n)
	values := ScanNums(n)
	costs := ScanNums(n)
	maxValue := 0
	for i := 0; i < n; i++ {
		if values[i] > costs[i] {
			maxValue += values[i] - costs[i]
		}
	}
	fmt.Println(maxValue)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
