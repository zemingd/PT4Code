package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	var min int
	for i := 0; i < N; i++ {
		var t int
		fmt.Scan(&t)
		if t == 1 {
			min = i
		}
	}
	var c int
	if N == K {
		c = 1
	} else if (N / 2) < K {
		c = 2
	} else {
		c = N / (K - 1)
		if N%(K-1) != 0 {
			c++
		} else if min%(K-1) == 0 {
			c++
		}
		if min < K {
			c--
		}
	}
	fmt.Print(c)
}