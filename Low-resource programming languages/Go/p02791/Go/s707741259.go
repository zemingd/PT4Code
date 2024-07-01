package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	P := make([]int, N)

	var count int = 0
	var min int = 1000000
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &P[i])
		if min > P[i] {
			count++
			min = P[i]
		}
	}

	fmt.Println(count)
}
