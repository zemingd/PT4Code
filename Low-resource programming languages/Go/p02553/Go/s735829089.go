package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b, c, d int
	fmt.Scan(&a, &b, &c, &d)

	nums := []int{a * c, a * d, b * c, b * d}
	sort.Ints(nums)
	fmt.Println(nums[3])
}
