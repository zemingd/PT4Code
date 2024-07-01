package main

import (
	"fmt"
	"sort"
)


func main() {
	var n int
	_, _ = fmt.Scan(&n)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		_, _ = fmt.Scan(&l[i])
	}
	sort.Ints(l)

	count := 0
	for i := 0; i < n; i++ {
		for j := i + 1; j < n; j++ {
			//a + b
			t := l[i] + l[j]
			tmpL := l[j+1:]
			min, max := -1, len(tmpL)

			for min + 1 < max {
				if mid := (min + max) / 2; tmpL[mid] < t {
					min = mid
				} else {
					max = mid
				}
			}
			count += min + 1
		}
	}
	fmt.Println(count)
}
