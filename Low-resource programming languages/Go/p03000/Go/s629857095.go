package main

import (
	"fmt"
)

func main() {
	var n, x int
	fmt.Scan(&n, &x)
	l := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&l[i])
	}
	var d int
	for i := 0; i < n; i++ {
		d = d + l[i]
		if d > x {
			fmt.Println(i + 1)
			break
		}
	}
}
