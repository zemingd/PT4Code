package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	var res float64
	for i := 1; i <= N; i++ {
		s := i
		tc := float64(float64(1) / float64(N))
		for s < K {
			s *= 2
			tc /= 2
		}
		res += tc
	}

	fmt.Println(res)
}
