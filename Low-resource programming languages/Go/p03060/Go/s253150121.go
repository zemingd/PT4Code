package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scanf("%d", &N)

	V := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &V[i])
	}

	C := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &C[i])
	}

	ans := 0

	for i := 0; i < N; i++ {
		if profit := V[i] - C[i]; profit > 0 {
			ans += profit
		}
	}

	fmt.Println(ans)
}