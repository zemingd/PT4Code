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

	var b int
	var c int
	for i := 0; i < m; i++ {
		fmt.Scan(&b)
		fmt.Scan(&c)
		if b == 0 {
			continue
		}

		changed := 0
		for j := 0; j < n; j++ {
			if nums[j] >= c {
				break
			}

			if nums[j] < c {
				nums[j] = c
				changed++
			}
			if changed == b {
				break
			}
		}
		if changed > 0 {
			sort.Ints(nums)
		}
	}

	sum := 0
	for i := 0; i < n; i++ {
		sum += nums[i]
	}

	fmt.Println(sum)
}
