package main

import (
	"fmt"
)

func tableTennisTraining(n, a, b uint64) uint64 {
	var ans uint64
	if (a&1) != 1 && (b&1) != 1 {
		// a and b == Even
		// a と b の中間までの距離
		ans = (b - a) / 2
	} else if (a&1) == 1 && (b&1) == 1 {
		// a and b == odd
		// a と b の中間までの距離
		ans = (b - a) / 2
	} else {
		// a or b == odd
		ans = min((b - 1), (n - a))
	}
	return ans
}

func min(a, b uint64) uint64 {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, a, b uint64
	fmt.Scan(&n, &a, &b)
	fmt.Println(tableTennisTraining(n, a, b))
}
