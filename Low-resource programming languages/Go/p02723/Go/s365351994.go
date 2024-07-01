package main

import (
	"fmt"
)

func solve(k, n int, as []int) int {
	max := 0
	prev := as[0]
	for i := 1; i < n; i++ {
		diff := as[i] - prev
		if diff > max {
			max = diff
		}
		prev = as[i]
	}

	diff := (k - as[n-1]) + as[0]
	if diff > max {
		max = diff
	}
	return k - max
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func main() {
	s := scanNums(2)
	t := scanNums(s[1])
	fmt.Println(solve(s[0], s[1], t))
}
