package main

import (
	"fmt"
)

func main() {
	var n, sum int
	fmt.Scan(&n)
	v, c := make([]int, n), make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		fmt.Scan(&c[i])
	}
	for i := 0; i < n; i++ {
		if v[i]-c[i] > 0 {
			sum += v[i] - c[i]
		}
	}
	fmt.Print(sum)
}
