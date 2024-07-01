package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var s string
	fmt.Scan(&s)

	minDiff := 1000000000
	for i := 0; i < len(s)-2; i++ {
		num, _ := strconv.Atoi(s[i : i+3])
		diff := AbsDiff(num, 753)
		if diff < minDiff {
			minDiff = diff
		}
	}
	fmt.Println(minDiff)
}

func AbsDiff(n1 int, n2 int) int {
	return int(math.Abs(float64(n1 - n2)))
}
