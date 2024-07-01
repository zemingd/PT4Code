package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	a := make([]int, n)
	for i:=0; i<len(a); i++{
		fmt.Scan(&a[i])
	}

	sort.Sort(sort.Reverse(sort.IntSlice(a)))

	sum := 0

	for i:=1; i<len(a); i++{
		min := minSlice(a[:i])
		fmt.Print("min:")
		fmt.Println(min)
		sum += min
		fmt.Print("sum")
		fmt.Println(sum)
	}

	fmt.Println(sum)
}

func minSlice(nums []int)int{
	min := nums[0]
	for i:=0;i<len(nums);i++{
		if nums[i] < min {
			min = nums[i]
		}
	}

	return min
}