package main

import (
	"fmt"
)

func main() {
	var n int

	fmt.Scan(&n)
	a := make([]int, n+1)
	b := make([]int, n)

	for i := 0; i < n+1; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
	}

	var ans int64

	for i := 0; i < n; i++ {
		var c int
		if a[i] > b[i] {
			c = b[i]
		} else {
			c = a[i]
		}
		b[i] -= c
		ans += int64(c)
		if a[i+1] > b[i] {
			c = b[i]
		} else {
			c = a[i+1]
		}
		a[i+1] -= c
		ans += int64(c)
	}
	fmt.Println(ans)
}
