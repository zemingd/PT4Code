package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	b := make([]int, n - 1)
	for i := 0; i < n-1; i++ {
		fmt.Scan(&b[i])
	}
	s := 0

	a := make ([]int, n)
	for i := 0; i < n; i++ {
		a[i] = 100001
	}

	for i, _ := range b {
		if a[i] > b[i] {
			a[i] = b[i]
		}
		if a[i + 1] > b[i] {
			a[i + 1] = b[i]
		}
	}
	for _, v := range a {
		s += v
	}
	fmt.Println(s)
}
