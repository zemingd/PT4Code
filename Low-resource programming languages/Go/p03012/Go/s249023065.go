package main

import (
	"fmt"
	"math"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	W := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &W[i])
	}

	var S1, S2 int
	var min int = 10000
	for T := 1; T < N; T++ {
		S1 = 0
		S2 = 0
		for i := 0; i < T; i++ {
			S1 += W[i]
		}
		for i := N - 1; i >= T; i-- {
			S2 += W[i]
		}

		if min >= int(math.Abs(float64(S1)-float64(S2))) {
			min = int(math.Abs(float64(S1) - float64(S2)))
		}
	}

	fmt.Println(min)
}
