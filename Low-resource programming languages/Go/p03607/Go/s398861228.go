package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	nums := map[int]struct{}{}
	for i := 0; i < n; i++ {
		var a int
		fmt.Scanf("%d", &a)
		if _, ok := nums[a]; ok {
			delete(nums, a)
		} else {
			nums[a] = struct{}{}
		}
	}

	fmt.Printf("%d\n", len(nums))
}
