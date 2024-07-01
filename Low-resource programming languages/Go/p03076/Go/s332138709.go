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

func findLast(nums []int) (i int) {
	i = 0
	x := nums[0]
	for j := 1; j < len(nums); j++ {
		if y := nums[j] % 10; 0 < y && y < x%10 {
			i = j
			x = nums[j]
		}
	}
	return
}

func calcTime(nums []int) (t int) {
	t = 0
	for i, x := range nums {
		if i == findLast(nums) {
			t += x
		} else {
			if x%10 == 0 {
				t += x
			} else {
				t += (x/10 + 1) * 10
			}
		}
	}
	return
}

func main() {
	nums := scanNums(5)
	fmt.Println(calcTime(nums))
}
