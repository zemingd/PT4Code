package main

import (
	"fmt"
	"math"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	var sum int = 0
	W := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &W[i])
		sum += W[i]
	}

	var S1, S2 int
	var min int = 10000
	for T := 1; T < N; T++ {
		S1 = 0
		S2 = 0
		for i := 0; i < T; i++ {
			S1 += W[i]
		}
		S2 = sum - S1

		if min >= int(math.Abs(float64(S1)-float64(S2))) {
			min = int(math.Abs(float64(S1) - float64(S2)))
		}
	}

	fmt.Println(min)
}
