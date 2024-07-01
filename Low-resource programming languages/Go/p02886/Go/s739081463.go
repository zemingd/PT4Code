package main

import (
	"fmt"
)

func main() {

	var N int
	fmt.Scanf("%d", &N)

	d := make([]int, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%d", &d[i])
	}

	var sum int = 0
	for i := 0; i < N; i++ {
		for j := i; j < N; j++ {
			if i != j {
				sum = sum + d[i]*d[j]
			}
		}
	}

	fmt.Println(sum)
}
