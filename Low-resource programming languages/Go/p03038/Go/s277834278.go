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
	// fmt.Println(bcs)

	cs := make([]int, m)
	for k := range bcs {
		cs = append(cs, k)
	}
	sort.Sort(sort.Reverse(sort.IntSlice(cs)))

	// fmt.Println(cs)

	idx := 0
LOOP:
	for _, cval := range cs {
		for j := 0; j < bcs[cval]; j++ {
			if idx == n {
				break LOOP
			}

			if nums[idx] < cval {
				nums[idx] = cval
				idx++
			} else {
				break LOOP
			}

		}
	}

	// fmt.Println(nums)

	sum := 0
	for i := 0; i < n; i++ {
		sum += nums[i]
	}

	fmt.Println(sum)
}
