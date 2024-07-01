package main

import (
	"fmt"
	"math"
)

func abs(a int) int {
	return int(math.Abs(float64(a)))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func main() {
	var n, x, t int
	fmt.Scan(&n, &x)
	cnt := 0
	pos := 0
	last := 0
	for i:=0; i<n+1; i++ {
		cnt += 1
		fmt.Scan(&t)
		pos = last + t
		last = pos
		if pos > x {
			break
		}
	}
	fmt.Println(cnt)
}
