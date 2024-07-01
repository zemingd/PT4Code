package main

import (
	"fmt"
)

func main() {
	var n, m int
	fmt.Scan(&n)
	fmt.Scan(&m)
	a := make([]int, m, m)
	for i := 0; i < m; i++ {
		a[i] = 1
	}
	for i := 0; i < n; i++ {
		b := make([]int, m, m)
		var k int
		fmt.Scan(&k)
		for j := 0; j < k; j++ {
			var c int
			fmt.Scan(&c)
			b[c - 1] = 1
		}
		for j := 0; j < m; j++ {
			a[j] *= b[j]
		}
	}

	answer := 0
	for i := 0; i < m; i++ {
		answer += a[i]
	}
	fmt.Println(answer)
}
