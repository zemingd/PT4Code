package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	a := make([]int64, n + 1)
	b := make([]int64, n)
	for i := 0; i < n+1; i++ {
		fmt.Scanf("%d", &a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &b[i])
	}
	count := int64(0)
	for i := 0; i < n; i++ {
		if a[i] > b[i] {
			count += b[i]
			b[i] = 0
			a[i] -= b[i]
		} else {
			count += a[i]
			b[i] -= a[i]
			a[i] = 0
		}
		if a[i+1] > b[i] {
			count += b[i]
			a[i+1] -= b[i]
		} else {
			count += a[i+1]
			a[i+1] = 0
		}
	}
	fmt.Println(count)
}
