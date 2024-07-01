package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	var A int
	var sum float64 = 0
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &A)
		sum += 1.0 / float64(A)
	}

	fmt.Println(1.0 / sum)
}
