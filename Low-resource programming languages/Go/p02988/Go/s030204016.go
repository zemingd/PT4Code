package main

import (
	"fmt"
	"sort"
)

func main()  {
	var n int
	fmt.Scan(&n)
	nums := ScanNums(n)
	ans := 0
	for i := 1; i < n-1; i++ {
		arr := []int{nums[i-1], nums[i], nums[i+1]}
		sort.Ints(arr)
		if arr[1] == nums[i] {
			ans++
		}
	}
	fmt.Println(ans)
}

func ScanNums(len int) (nums []int) {
	var num int
	for i := 0; i < len; i++ {
		fmt.Scan(&num)
		nums = append(nums, num)
	}
	return
}
