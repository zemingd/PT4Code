package main

import (
	"fmt"
	"sort"
)

func main() {
	nums := make([]int, 3)
	fmt.Scan(&nums[0])
	fmt.Scan(&nums[1])
	fmt.Scan(&nums[2])
	sort.Sort(sort.Reverse(sort.IntSlice(nums)))

	fmt.Println(nums[0]*10 + nums[1] + nums[2])
}
