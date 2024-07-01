package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	L := make(map[int]int, M)

	for i := 0; i < N; i++ {
		var K int
		fmt.Scan(&K)
		for j := 0; j < K; j++ {
			var A int
			fmt.Scan(&A)
			L[A]++
		}
	}

	c := 0
	for _, v := range L {
		if v == N {
			c++
		}
	}
	fmt.Println(c)
}
