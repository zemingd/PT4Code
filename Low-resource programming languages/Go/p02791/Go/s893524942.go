package main

import (
	"fmt"
)

func main() {
	var n int

	fmt.Scan(&n)
	p := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&p[i])
	}

	count := 1
	for i := 0; i < n-1; i++ {
		if p[i] > p[i+1] {
			count++
		}
	}

	fmt.Println(count)
}
