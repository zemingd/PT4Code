package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	p := make([]float64, N)
	for i := range p {
		fmt.Scan(&p[i])
		p[i] = (p[i] + 1) / 2
	}
	wa := make([]float64, N+1)
	for i := 0; i < N; i++ {
		wa[i+1] = wa[i] + p[i]
	}
	max := 0.0
	for i := K; i < N+1; i++ {
		max = math.Max(max, wa[i]-wa[i-K])
	}
	fmt.Println(max)
}
