package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	p := make([]int, N)
	for i := range p {
		fmt.Scan(&p[i])
	}
	for i := range p {
		if i == 0 {
			continue
		}
		p[i] += p[i-1]
	}
	max := 0
	for start := 0; start <= N-K; start++ {
		end := start + K - 1
		sum := 0
		if start == 0 {
			sum = p[end]
		} else {
			sum = p[end] - p[start-1]
		}
		if max < sum {
			max = sum
		}
	}
	fmt.Printf("%.12f\n", float64(max+K)/2.)
}
