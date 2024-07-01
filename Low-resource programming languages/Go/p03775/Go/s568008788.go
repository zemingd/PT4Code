package main

import (
	"fmt"
	"strconv"
)

func main() {
	var N int
	fmt.Scan(&N)
	min := len(strconv.Itoa(N))
	for i := 1; i < N; i++ {
		if N%i == 0 {
			min = Min(min, len(strconv.Itoa(Max(i, N/i))))
		}
		if i >= N/i {
			break
		}
	}
	fmt.Println(min)
}

func Min(a, b int) int {
	if b < a {
		return b
	}
	return a
}

func Max(a, b int) int {
	if b > a {
		return b
	}
	return a
}
