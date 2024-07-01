package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scanf("%d", &n)
	a := make([]int64, n+1)
	b := make([]int64, n)
	for i := 0; i < n+1; i++ {
		fmt.Scanf("%d", &a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &b[i])
	}
	var sum int64
	for i := n - 1; i >= 0; i-- {
		var t int64
		if a[i+1] < b[i] {
			t = a[i+1]
		} else {
			t = b[i]
		}
		sum += t
		b[i] -= t
		if a[i] < b[i] {
			t = a[i]
		} else {
			t = b[i]
		}
		sum += t
		a[i] -= t
		b[i] -= t
	}
	fmt.Println(sum)
}
