package main

import (
	"fmt"
)

//最大値
func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("min() requires at least one arguments.")
	}
	res := nums[0]
	for _, val := range nums {
		if res < val {
			res = val
		}
	}
	return res
}


func main() {
	var k, n int
	fmt.Scan(&k, &n)
	a := make([]int, n)
	dist := make([]int, n+1)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	var ans int
	for i := 0; i < n-1; i++ {
		dist[i] = a[i + 1] - a[i]
		ans += dist[i]
	}
	dist[n] = a[0] + k - a[n - 1]
	ans += dist[n]
	fmt.Println(ans - Max(dist...))
}
