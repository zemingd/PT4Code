package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	nums := make(map[int]struct{})
	for i := 0; i < n; i++ {
		var num int
		fmt.Scan(&num)
		nums[num] = struct{}{}
	}
	fmt.Println(len(nums))

}
