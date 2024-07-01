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

	count := 0
	for i := 0; i < n; i++ {
		if a[i] >= b[i] {
			count += b[i]
		} else {
			count += a[i]
			b[i] -= a[i]
			if a[i+1] >= b[i] {
				count += b[i]
			} else {
				count += a[i+1]
				a[i+1] = 0
			}
		}
	}
	fmt.Println(count)
}
