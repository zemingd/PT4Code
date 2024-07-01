package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}

	sort.Ints(l)

	ans := 0
	for i := 0; i < n-2; i++ {
		a := l[i]
		for j := i + 1; j < n-1; j++ {
			b := l[j]
			t := l[j+1:]
			left, right := 0, len(t)-1
			mid := -1
			for left <= right {
				mid = (left + right) / 2
				if t[mid] < a+b {
					left = mid + 1
				} else {
					right = mid - 1
				}
			}
			ans += left
		}
	}

	fmt.Println(ans)
}
