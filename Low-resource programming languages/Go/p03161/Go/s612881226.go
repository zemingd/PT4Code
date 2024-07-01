package main

import "fmt"

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &h[i])
	}
	cost := make([]int, N)

	for i := 1; i < N; i++ {
		mi := 10000000000
		for k := 1; k <= K && i-k >= 0; k++ {
			if mi > cost[i-k]+abs(h[i]-h[i-k]) {
				mi = cost[i-k] + abs(h[i]-h[i-k])
			}
		}
		cost[i] = mi
	}
	fmt.Println(cost[N-1])
}

func abs(n int) int {
	if n < 0 {
		return -n
	}
	return n
}

func min(a, b int) int {
	if a > b {
		return b
	}
	return a
}
