package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	As := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&As[i])
	}

	sort.Ints(As)

	var count int
	rest := len(As) - K
	count++

	if rest%(K-1) == 0 {
		count += rest / (K - 1)
	} else {
		count += rest / (K - 1)
		count++
	}

	fmt.Println(count)
}
