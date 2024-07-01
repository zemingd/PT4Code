package main

import (
	"fmt"
)

func main() {
	var N int
	fmt.Scan(&N)
	B := make([]int, N - 1)
	for i := 0; i < N - 1; i++ {
		fmt.Scan(&B[i])
	}

	res := 0
	for i := 0; i < N; i++ {
		if i == 0 {
			res += B[i]
		} else if i == N - 1 {
			res += B[i - 1]
		} else {
			if B[i] < B[i - 1] {
				res += B[i]
			} else {
				res += B[i - 1]
			}
		}
	}
	fmt.Println(res)
}