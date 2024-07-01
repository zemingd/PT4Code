package main

import (
	"fmt"
)

func solution(h, w int) int {
	if h == 1 || w == 1 {
		return 1
	}
	return (h*w + 1) / 2
}

func main() {
	var h, w int
	fmt.Scan(&h, &w)
	fmt.Println(solution(h, w))
}
