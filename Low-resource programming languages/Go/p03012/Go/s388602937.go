package main

import (
	"fmt"
	"math"
)

func main() {
	var N int
	fmt.Scan(&N)
	ws := make([]int, N)
	for i := range ws {
		fmt.Scan(&ws[i])
	}
	wa := make([]int, N)
	wa[0] = ws[0]
	for i := 1; i < N; i++ {
		wa[i] = wa[i-1] + ws[i]
	}
	m := math.MaxInt64
	for i := 1; i < N-1; i++ {
		b := wa[i]
		a := wa[N-1] - wa[i]
		m = min(m, abs(a-b))
	}
	fmt.Println(m)
}

func min(a, b int) int {
	if b < a {
		return b
	}
	return a
}
func abs(a int) int {
	return int(math.Abs(float64(a)))
}
