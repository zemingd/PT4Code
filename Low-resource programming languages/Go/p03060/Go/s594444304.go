package main

import (
	"fmt"
	"math"
)

var V, C []float64

func main() {
	var N int
	fmt.Scan(&N)

	V = make([]float64, N)
	C = make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&V[i])
	}
	for i := 0; i < N; i++ {
		fmt.Scan(&C[i])
	}
	fmt.Println(dfs(0, 0, N-1))
}

func dfs(v float64, c float64, n int) float64 {
	if n < 0 {
		return v - c
	}

	x := dfs(v+V[n], c+C[n], n-1)
	y := dfs(v, c, n-1)

	return math.Max(x, y)
}
