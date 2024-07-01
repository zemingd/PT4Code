package main

import (
	"fmt"
	"math"
)

func intMax(x, y int) int {
	return int(math.Max(float64(x), float64(y)))
}

func main() {
	var N int
	fmt.Scan(&N)

	h := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&h[i])
	}

	ans := h[0]
	for i := 1; i < N; i++ {
		ans += intMax(h[i]-h[i-1], 0)
	}
	fmt.Println(ans)
}
