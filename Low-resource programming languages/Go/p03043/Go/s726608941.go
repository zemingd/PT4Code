package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)

	res := float64(0)
	for i := 1; i <= N; i++ {
		tmp := i
		if i >= K {
			res += (float64(1) / float64(N))
			continue
		}
		for j := 1; ; j++ {
			tmp = tmp * 2
			if tmp >= K {
				res += (float64(1) / float64(N)) * math.Pow(0.5, float64(j))
				break
			}
		}
	}
	fmt.Println(res)
}
