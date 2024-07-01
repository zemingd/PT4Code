package main

import (
	"fmt"
	"sort"
)

func main() {
	var n, k int
	fmt.Scanf("%d", &n)
	fmt.Scanf("%d", &k)

	prices := make([]int, n)
	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &prices[i])
	}

	sort.Ints(prices)

	var answer int
	for i := 0; i < k; i++ {
		answer += prices[i]
	}

	fmt.Println(answer)
}
