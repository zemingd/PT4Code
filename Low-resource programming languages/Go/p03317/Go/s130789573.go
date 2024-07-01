package main

import (
	"fmt"
)

func floor(n int, m int) int {
	if n%m == 0 {
		return n / m
	} else {
		return n/m + 1
	}
}

func main() {
	var n, k int
	fmt.Scan(&n, &k)
	a := make([]int, n)
	var start int
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
		if a[i] == 1 {
			start = i + 1
		}
	}

	saki := start
	ato := n - start + 1

	count := floor((saki-1), (k-1)) + floor((ato-1), (k-1))
	fmt.Println(count)
}
