package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	slice := make([]int, N)

	for i := 0; i < N; i++ {
		fmt.Scan(&slice[i])
	}

	sort.Ints(slice)

	mn := slice[N-1] - slice[0]
	for i := 0; i < N-K+1; i++ {
		if slice[i+1]-slice[i] < mn {
			mn = slice[i+1] - slice[i]
		}
	}

	fmt.Println(mn)
}
