package main

import (
	"fmt"
)

func main() {
	var n, k int
	fmt.Scanf("%d %d", &n, &k)
	answer := minN(n, k)
	fmt.Println(answer)
}

func minN(n, k int) int {
	n = n % k
	minDiff := abs(n - k)
	for diff := minDiff; diff <= minDiff; diff = abs(n - k) {
		minDiff = diff
		n = diff
	}
	return minDiff
}

func abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}
