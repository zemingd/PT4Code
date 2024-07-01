package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	nums := scanNums(n)
	var can = true
	var max int
	for i := 0; i+1 < len(nums); i++ {
		if nums[i]-nums[i+1] >= 2 || (max == nums[i] && nums[i] > nums[i+1]) {
			can = false
			break
		}
		if nums[i]-nums[i+1] == 1 {
			nums[i] -= 1
		}
		max = nums[i]
	}
	if can {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func scanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
