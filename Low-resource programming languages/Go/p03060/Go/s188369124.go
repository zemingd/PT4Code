package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)
	v := make([]int, n)
	xy := 0

	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}
	for i := 0; i < n; i++ {
		var c int
		fmt.Scan(&c)
		if v[i] - c > 0 {
			xy += v[i] - c
		}
	}

	fmt.Println(xy)
}