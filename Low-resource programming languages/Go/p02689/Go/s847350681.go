package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scanf("%d %d", &N, &M)
	H := make([]int, N)
	peaksCounter := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &H[i])
		peaksCounter[i] = 0
	}

	for i := 0; i < M; i++ {
		var a, b int
		fmt.Scanf("%d %d", &a, &b)
		if H[a-1] > H[b-1] {
			peaksCounter[b-1]++
		} else if H[a-1] < H[b-1] {
			peaksCounter[a-1]++
		} else {
			peaksCounter[b-1]++
			peaksCounter[a-1]++
		}
	}

	r := 0
	for _, count := range peaksCounter {
		if count == 0 {
			r++
		}
	}
	fmt.Println(r)
}
