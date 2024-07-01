package main

import (
	"fmt"
)

func main() {
	var n, st int
	fmt.Scan(&n)
	a := make([]int, n)
	b := make([]int, n)
	c := make([]int, n-1)
	for i := 0; i < n; i++ {
		fmt.Scan(&a[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&b[i])
		st += b[i]
	}
	for i := 0; i < n-1; i++ {
		fmt.Scan(&c[i])
	}
	for i := 1; i < n; i++ {
		if a[i] == a[i-1]+1 {
			st += c[i]
		}
	}
	fmt.Println(st)
}
