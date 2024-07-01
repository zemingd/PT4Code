package main

import (
	"fmt"
	"sort"
)

func main() {
	nums := make([]int, 3)
	for i := 0; i < 3; i++ {
		fmt.Scan(&nums[i])
	}
	sort.Ints(nums)
	fmt.Println(nums[2] - nums[0])
}
