package main

import (
	"fmt"
)

func main() {
	var n int

	fmt.Scanf("%d", &n)

	input := make([]int, n)

	for i := 0; i < n; i++ {
		fmt.Scanf("%d", &input[i])
	}


	max := input[0]
	answer := 0

	for _, height := range input {
		if max < height {
			max = height
		} else {
			answer += max - height
		}
	}

	fmt.Print(answer)
}