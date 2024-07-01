package main

import "fmt"

func main() {
	var N int
	fmt.Scanf("%d", &N)
	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &h[i])
	}
	cost := make([]int, N+1)
	cost[0] = 0
	cost[1] = abs(h[1] - h[0])
	for i := 0; i < N-2; i++ {
		cost[i+2] = min(cost[i]+abs(h[i+2]-h[i]), cost[i+1]+abs(h[i+2]-h[i+1]))
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
