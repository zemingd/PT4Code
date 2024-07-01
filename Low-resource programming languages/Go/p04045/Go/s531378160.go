package main

import (
	"fmt"
	"strconv"
)

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	dm := make(map[int]bool)
	var d int
	for i := 0; i < k; i++ {
		fmt.Scan(&d)
		dm[d] = true
	}
	gs := make([]int, 0)
	for i := 0; i <= 9; i++ {
		if !dm[i] {
			gs = append(gs, i)
		}
	}

	u := 0
	nums := make([]int, 0)
	s := strconv.Itoa(n)
	for i := len(s) - 1; i >= 0; i-- {
		ok := false
		c := int(s[i]-'0') + u
		uu := 0
		if c >= 10 {
			c = 0
			uu = 1
		}
		for _, d := range gs {
			if c <= d {
				nums = append(nums, d)
				ok = true
				u = 0 + uu
				if c < d {
					nums = update(nums, gs)
				}

				break
			}
		}
		if !ok {
			nums = append(nums, gs[0])
			u = 1
			nums = update(nums, gs)
		}
	}

	if u > 0 {
		for _, g := range gs {
			if g > 0 {
				nums = append(nums, g)
				break
			}
		}
		nums = update(nums, gs)
	}

	for i := len(nums) - 1; i >= 0; i-- {
		fmt.Print(nums[i])
	}
	fmt.Println()
}

func update(nums, gs []int) []int {
	for j := 0; j < len(nums)-1; j++ {
		nums[j] = gs[0]
	}
	return nums
}
