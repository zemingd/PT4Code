package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c int
	fmt.Scan(&a, &b, &c)
	nums := []int{a, b, c}
	sort.Sort(sort.IntSlice(nums))
	fmt.Println(nums[0], nums[1], nums[2])
}

