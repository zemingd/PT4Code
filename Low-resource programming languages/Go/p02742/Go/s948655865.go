package main

import (
	"fmt"
)

func solution(h, w int) int {
	x := h * w
	m := (h * w) % 2
	if m == 0 {
		return x / 2
	}
	return x/2 + m
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	fmt.Println(solution(h, w))
}
