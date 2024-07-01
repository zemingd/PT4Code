package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	p := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&p[i])
	}

	fmt.Println(exec(p, K))
}

func exec(p []int, K int) int {
	sort.Ints(p)

	var sum int

	for i := 0; i < K; i++ {
		sum += p[i]
	}
	return sum
}
