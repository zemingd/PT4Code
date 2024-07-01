package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	var p float64
	fmt.Scan(&N, &K)
	for i := 1; i <= N; i++ {
		j := 0
		t := i
		for {
			if t >= K {
				break
			}
			j++
			t *= 2
		}
		p += (1 / float64(N)) * math.Pow(0.5, float64(j))
	}
	fmt.Println(p)
}
