package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	var ans float64
	for i := 1; i <= N; i++ {
		x := math.Pow(0.5, math.Ceil(math.Log2(float64(K)/float64(i))))
		if x > 1 {
			x = 1
		}
		ans += x
	}
	fmt.Printf("%v\n", ans/float64(N))
}
