package main

import (
	"fmt"
	"sort"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	P := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&P[i])
	}
	sort.Ints(P)
	ans := 0
	for i := 0; i < K; i++ {
		ans += P[i]
	}
	fmt.Println(ans)
}
