package main

import (
	"fmt"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	counter := make([]int, N)
	for i := 0; i < N; i++ {
		counter[i] = 0
	}

	d := -1
	var a int
	for i := 0; i < K; i++ {
		fmt.Scanf("%d", &d)
		for j := 0; j < d; j++ {
			fmt.Scanf("%d", &a)
			counter[a-1]++
		}
	}

	r := 0
	for _, count := range counter {
		if count == 0 {
			r++
		}
	}
	fmt.Println(r)
}
