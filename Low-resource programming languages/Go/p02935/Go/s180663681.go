package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scan(&N)
	V := make([]float64, N)
	for i := range V {
		fmt.Scan(&V[i])
	}
	sort.Float64s(V)

	score := V[0]
	for i := range V {
		score = (score + V[i]) / 2
	}
	fmt.Println(score)
}
