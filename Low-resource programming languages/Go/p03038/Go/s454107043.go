package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	var m int
	fmt.Scan(&n)
	fmt.Scan(&m)

	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}
	sort.Ints(nums)

	var b, c int
	bcs := make(map[int]int, m)
	for i := 0; i < m; i++ {
		fmt.Scan(&b)
		fmt.Scan(&c)

		bcs[c] += b
	}

	cs := make([]int, n)
	for k, v := range bcs {
		for j := 0; j < v; j++ {
			cs = append(cs, k)
		}
	}
	sort.Sort(sort.Reverse(sort.IntSlice(cs)))

	// fmt.Println(cs)

	sum := 0
	for i := 0; i < n; i++ {
		if nums[i] < cs[i] {
			nums[i] = cs[i]
		}

		sum += nums[i]
	}

	fmt.Println(sum)
}
