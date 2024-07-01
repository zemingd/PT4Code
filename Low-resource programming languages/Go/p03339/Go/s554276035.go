package main

import (
	"fmt"
	"math"
)

func intMin(x, y int) int {
	return int(math.Min(float64(x), float64(y)))
}

func main() {
	var N int
	var S string
	fmt.Scan(&N, &S)

	W, E := make([]int, N), make([]int, N)
	for i := 0; i < N-1; i++ {
		if S[i] == 'W' {
			W[i+1] = W[i] + 1
		} else {
			W[i+1] = W[i]
		}
	}
	for i := N - 1; i > 0; i-- {
		if S[i] == 'E' {
			E[i-1] = E[i] + 1
		} else {
			E[i-1] = E[i]
		}
	}

	ans := N
	for i := 0; i < N; i++ {
		ans = intMin(ans, E[i]+W[i])
	}
	fmt.Println(ans)
}
