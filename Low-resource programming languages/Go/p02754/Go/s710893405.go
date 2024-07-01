package main

import (
	"fmt"
)

func solution(n, a, b int64) int64 {
	d := n % (a + b)

	c := n / (a + b)

	if a >= d {
		return a*c + d
	}
	return a * c
}

func main() {
	var n, a, b int64
	fmt.Scan(&n, &a, &b)
	fmt.Println(solution(n, a, b))
}
