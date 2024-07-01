package main

import (
	"fmt"
	"sort"
)

func main() {
	var a, b int
	fmt.Scanf("%d %d\n", &a, &b)

	nums := make([]int, 3)

	nums[0] = a + b
	nums[1] = a - b
	nums[2] = a * b
	sort.Ints(nums)

	fmt.Println(nums[2])
}
