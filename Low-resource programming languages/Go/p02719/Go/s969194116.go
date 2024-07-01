package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scanf("%d %d", &N, &K)

	var X int = N - K*(N/K)
	var min int = 5 * int(math.Pow10(18))
	for {
		flag := int(math.Abs(float64(X) - float64(K)))
		if flag < int(math.Abs(float64(min))) {
			X = flag
			min = flag
		} else {
			break
		}

	}
	fmt.Println(min)

}
