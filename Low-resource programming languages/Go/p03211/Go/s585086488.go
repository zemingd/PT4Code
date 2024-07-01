package main

import (
	"fmt"
	"strconv"
)

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func main() {
	var s string
	fmt.Scan(&s)
	min := 753
	maxI := len(s) - 2
	for i := 0; i < maxI; i++ {
		x, _ := strconv.Atoi(s[i : i+3])
		diff := abs(x - 753)
		if diff < min {
			min = diff
		}
	}
	fmt.Println(min)
}
