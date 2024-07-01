package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	nums := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&nums[i])
	}
	median := n / 2 - 1
	for i := 1; i <= n; i++ {
		tmp := make([]int, n)
		copy(tmp, nums)
		tmp = remove(tmp, i - 1)
		sort.Ints(tmp)
		fmt.Println(tmp[median])
	}
}

func remove(slice []int, s int) []int {
	return append(slice[:s], slice[s+1:]...)
}
