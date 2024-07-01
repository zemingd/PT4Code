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
	for i := 0; i < n-2; i++ {
		for j := i + 1; j < n-1; j++ {
			t := l[i] + l[j]
			tmpL := l[j+1:]
			flag := solve(tmpL, t - 1)
			count += flag + 1
		}
	}
	fmt.Println(count)
}

func solve(a []int, t int) int {
	low := 0
	high := len(a) - 1
	for low <= high {
		mid := (low + high) / 2
		if t < a[mid] {
			high = mid - 1
		} else if t > a[mid] {
			low = mid + 1
		} else {
			return mid
		}
	}
	return high
}
