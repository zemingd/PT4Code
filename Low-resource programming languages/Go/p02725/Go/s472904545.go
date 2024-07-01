package main

import (
	"fmt"
	"sort"
)

func main() {
	var k, n int
	fmt.Scan(&k, &n)
	a := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}

	d := make([]int, n)
	for i := 1; i < n; i++ {
		d[i-1] = a[i] - a[i-1]
	}
	d[n-1] = (k - a[n-1]) + a[0]
	sort.Ints(d)

	ans := 0
	for i := 0; i < n-1; i++ {
		ans += d[i]
	}

	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
