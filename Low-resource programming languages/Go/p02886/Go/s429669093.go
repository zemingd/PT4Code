package main

import (
	"fmt"
)

func main() {
	var n int
	fmt.Scan(&n)

	ds := make([]int,n)
	for i := 0; i < n; i++ {
		var d int
		fmt.Scan(&d)
		ds[i] = d
	}

	count := 0
	for i := 0; i < n - 1; i++ {
		for j := i + 1; j < n; j++ {
			count += ds[i] * ds[j]
		}
	}

	fmt.Println(count)
}