package main

import (
	"fmt"
	"sort"
)

func main() {
	var n int
	fmt.Scan(&n)

	aSlice := make([]int, n)
	for i := range aSlice {
		fmt.Scan(&aSlice[i])
	}

	sort.Ints(aSlice)

	a := aSlice[0]
	for i := 1; i < n; i++ {
		b := aSlice[i]
		r := b % a
		for r != 0 {
			b = a
			a = r
			r = b % a
		}
	}
	fmt.Println(a)
}