package main

import (
	"fmt"
)

func Abs(x int) int {
	if x < 0 {
		return -x
	}
	return x
}

func Min(x, y int) int {
	if x < y {
		return x
	}
	return y
}

func main() {
	var n, x, y int
	fmt.Scanf("%d %d %d", &n, &x, &y)

	// index is from 1 to n - 1 (do not use 0)
	countPerK := make([]int, n)

	for i := 1; i <= n-1; i++ {
		for j := i + 1; j <= n; j++ {
			dNormal := j - i
			dShortcut := Abs(x-i) + 1 + Abs(y-j)
			k := Min(dNormal, dShortcut)
			countPerK[k]++
		}
	}

	for k := 1; k <= n-1; k++ {
		fmt.Println(countPerK[k])
	}
}
