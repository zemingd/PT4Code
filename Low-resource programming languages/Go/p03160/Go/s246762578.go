package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)

	h := make([]float64, n)
	for i := 0; i < n; i++ {
		fmt.Scan(&h[i])
	}

	cost := 0.0
	now := n - 1
	for {
		if now == 0 {
			break
		} else if now == 1 {
			cost += math.Abs(h[now] - h[now-1])
			break
		}
		cost1 := math.Abs(h[now] - h[now-1])
		cost2 := math.Abs(h[now] - h[now-2])
		if cost1 < cost2 {
			cost += cost1
			now = now - 1
		} else {
			cost += cost2
			now = now - 2
		}
	}
	fmt.Println(cost)
}
