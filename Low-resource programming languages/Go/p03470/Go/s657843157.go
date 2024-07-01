package main

import (
	"fmt"
	//"sort"
)

func main() {
	var cnt int
	fmt.Scan(&cnt)

	nums := make([]int, cnt)
	for i := range nums {
		fmt.Scan(&nums[i])
	}
	mp := make(map[int]bool)

	for i := range nums {
		mp[nums[i]] = true
	}

	fmt.Print(len(mp))
}