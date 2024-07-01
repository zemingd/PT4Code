package main

import (
	"fmt"
	"sort"
)

func main() {

	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	p := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &p[i])
	}

	sum := 0
	sort.Ints(p)
	for i := 0; i < K; i++ {
		sum += p[i]
	}

	fmt.Println(sum)
}