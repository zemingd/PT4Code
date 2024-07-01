package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	var ret float64
	for n := 1; n <= N; n++ {
		ret += math.Pow(float64(0.5), float64(a(n, K)))
	}
	fmt.Println(ret / float64(N))
}

func a(n, K int) int {
	if K <= n {
		return 0
	}
	l := math.Log2(float64(K) / float64(n))
	return int(math.Ceil(l))
}
