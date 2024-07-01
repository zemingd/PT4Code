package main

import (
	"fmt"
)

// main is...
func main() {
	// IO start
	var n int
	fmt.Scan(&n)

	var listA = make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&listA[i])
	}

	ret := 0
	// process start
	for i := 0; i < n-1; i++ {
		for j := i + 1; j < n; j++ {
			ret += listA[i] * listA[j]
		}
	}
	fmt.Print(ret)
}
