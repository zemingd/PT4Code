package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	answer := 0
	V := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scan(&V[i])
	}
	for i := 0; i < N; i++ {
		var Ci int
		fmt.Scan(&Ci)
		if Ci < V[i] {
			answer += V[i] - Ci
		}
	}
	fmt.Println(answer)
}
