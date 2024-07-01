package main

import (
	"fmt"
)

func main() {

	var A, B, T int
	fmt.Scanf("%d %d %d", &A, &B, &T)

	var sum int
	for i := 1; i <= T; i++ {
		if i%A == 0 {
			sum += B
		}
	}

	fmt.Println(sum)
}
