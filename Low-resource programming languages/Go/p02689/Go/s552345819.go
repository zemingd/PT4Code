package main

import "fmt"

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	heights := make([]int, N+1)
	for i := 1; i <= N; i++ {
		var h int
		fmt.Scan(&h)
		heights[i] = h
	}

	goodTowers := make(map[int]bool)
	for i := 1; i <= N; i++ {
		goodTowers[i] = true
	}

	for i := 0; i < M; i++ {
		var a, b int
		fmt.Scan(&a, &b)
		if heights[a] == heights[b] {
			delete(goodTowers, a)
			delete(goodTowers, b)
		}
		if heights[a] > heights[b] {
			delete(goodTowers, b)
		}
		if heights[a] < heights[b] {
			delete(goodTowers, a)
		}
	}

	fmt.Println(len(goodTowers))
}
