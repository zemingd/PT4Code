package main

import (
	"fmt"
)

func main() {
	var N, M int
	fmt.Scan(&N, &M)

	left := 1
	right := N
	var L, R int
	for i := 0; i < M; i++ {
		fmt.Scan(&L, &R)
		if left < L {
			left = L
		}
		if R < right {
			right = R
		}
	}

	ans := 0
	if left <= right {
		ans = right - left + 1
	}
	fmt.Println(ans)
}
