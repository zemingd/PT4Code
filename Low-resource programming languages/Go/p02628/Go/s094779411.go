package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	prices := scanIntSlice(n)
	sort.Ints(prices)

	sum := 0
	for i := 0; i < k; i++ {
		sum += prices[i]
	}

	fmt.Printf("%d\n", sum)
}

func scanIntSlice(size int) []int {
	input := []int{}
	for i := 0; i < size; i++ {
		var in int
		fmt.Scanf("%d", &in)
		input = append(input, in)
	}
	return input
}
