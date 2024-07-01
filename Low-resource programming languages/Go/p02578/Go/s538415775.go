package main

import "fmt"

func main() {
	var n int
	fmt.Scan(&n)
	nums := make([]int, n)
	for i:=0; i<len(nums); i++{
		fmt.Scan(&nums[i])
	}
	count := 0
	for i:=1; i<len(nums); i++{
		if nums[i-1] > nums[i]{
			count += (nums[i-1] - nums[i])
			nums[i] = nums[i-1]
		}
	}
	fmt.Println(count)
}