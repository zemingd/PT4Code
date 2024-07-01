package main

import (
	"fmt"
)

func tableTennisTraining(n, a, b int) int {
	var ans int
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

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, a, b int
	fmt.Scan(&n, &a, &b)
	fmt.Println(tableTennisTraining(n, a, b))
}
