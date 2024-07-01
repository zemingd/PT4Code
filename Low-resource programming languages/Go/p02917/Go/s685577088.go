package main

import (
	"fmt"
)

// main is...
func main() {
	var n int
	fmt.Scan(&n)

	var listB = make([]int, n-1)

	for i := 0; i < len(listB); i++ {
		fmt.Scan(&listB[i])
	}

	ret := 0
	// first
	ret += listB[0]
	// last
	ret += listB[len(listB)-1]
	for i := 1; i < len(listB); i++ {
		if listB[i] < listB[i-1] {
			ret += listB[i]
			continue
		}
		ret += listB[i-1]
	}

	fmt.Println(ret)

}

