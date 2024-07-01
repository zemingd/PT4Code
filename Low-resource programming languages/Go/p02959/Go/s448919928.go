package main

import (
	"fmt"
)

func main() {
	n := 0
	fmt.Scan(&n)
	a := make([]int, n+1)
	b := make([]int, n)
	for i := range a {
		fmt.Scan(&a[i])
	}
	for i := range b {
		fmt.Scan(&b[i])
	}

	ans := 0

	for i := 0; i < n; i++ {
		tmp, bl := min(a[i], b[i])
		ans += tmp
		if bl {
			b[i] -= tmp
		} else {
			b[i] = 0
		}
		if b[i] != 0 {
			v, bl := min(a[i+1], b[i])
			ans += v
			if !bl {
				a[i+1] -= b[i]
				b[i] = 0
			}
		}
		if i == n-1 && b[i] != 0 {
			v, _ := min(a[i+1], b[i])
			ans += v
			b[i] = 0
		}
	}
	fmt.Println(ans)
}

func min(a, b int) (int, bool) {
	if a > b {
		return b, false
	}
	return a, true
}