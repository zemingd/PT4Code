package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	nums := make([]int, n)
	for i := range nums {
		fmt.Scan(&nums[i])
	}

	cp := make([]int, n)
	copy(cp, nums)
	sort.Sort(sort.Reverse(sort.IntSlice(cp)))
	for _, v := range nums {
		ans := cp[0]
		if v == ans {
			ans = cp[1]
		}
		fmt.Println(ans)
	}
}
