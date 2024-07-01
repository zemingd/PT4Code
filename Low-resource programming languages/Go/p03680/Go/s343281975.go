package main

import "fmt"

func scanNums(nums_len int) (nums []int) {
	var num int
	for i := 0; i < nums_len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}

func main() {
	var n int
	fmt.Scan(&n)
	nums := scanNums(n)

	count := 0
	pos := 1
	for i := 0; i < n; i++ {
		pos = nums[pos-1]
		count++

		if pos == 2 {
			break
		}
	}

	if count == n {
		count = -1
	}

	fmt.Println(count)
}
