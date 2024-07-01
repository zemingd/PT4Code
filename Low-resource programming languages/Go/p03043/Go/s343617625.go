package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	pwin := 0.0
	for i := 1; i <= N; i++ {
		coin := 0
		for j := 1; ; j++ {
			if i*pow(2, j) >= K {
				coin = j
				break
			}
		}
		pwin += (1 / float64(N)) * (1 / float64(pow(2, coin)))
	}
	fmt.Println(pwin)
}

func pow(p, q int) int {
	return int(math.Pow(float64(p), float64(q)))
}
