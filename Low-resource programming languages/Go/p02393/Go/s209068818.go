package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int

	var nums []int
	fmt.Scan(&a, &b, &c)
	nums = append(nums, a)
	nums = append(nums, b)
	nums = append(nums, c)
	sort.Sort(sort.IntSlice(nums))

	for i, v := range nums {
		if i == 2 {
			fmt.Printf("%d", v)
		} else {
			fmt.Printf("%d ", v)
		}
	}
	fmt.Printf("\n")
}

