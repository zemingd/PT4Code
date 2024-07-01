package main

import (
	"fmt"
	"log"
)

func solution(n, a, b int64) int64 {
	d := n % (a + b)

	c := n / (a + b)

	log.Printf("c: %d, d: %d", c, d)
	if d > a {
		return a * (c + 1)
	} else if d < a {
		return a*c + d
	}
	return a * c
}

func main() {
	var n, a, b int64
	fmt.Scan(&n, &a, &b)
	fmt.Println(solution(n, a, b))
}
