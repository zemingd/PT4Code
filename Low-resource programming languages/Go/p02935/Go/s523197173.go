package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	nums := make([]float64, n)
	for i := range nums {
		fmt.Scan(&nums[i])
	}
	sort.Float64s(nums)
	ans := nums[0]
	for i := 1; i < n; i++ {
		ans = (ans + nums[i]) / 2
	}
	fmt.Println(ans)
}
