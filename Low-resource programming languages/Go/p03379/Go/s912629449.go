package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	nums := make([]int, n)
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
		m[i+1] = nums[i]
	}
	sort.Ints(nums)
	l := nums[n/2-1]
	r := nums[n/2]
	for i := 1; i <= n; i++ {
		v := m[i]
		if l < v {
			fmt.Println(l)
		} else {
			fmt.Println(r)
		}
	}
}
