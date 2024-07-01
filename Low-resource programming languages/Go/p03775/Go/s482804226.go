package main

import (
	"fmt"
	"math"
)

func max(a, b int) int {
	if a >= b {
		return a
	}
	return b
}
func cntdigits(a int64) int {
	cnt := 1
	for {
		a /= 10
		if a > 0 {
			cnt++
		} else {
			break
		}
	}
	return cnt
}

func f(a, b int64) int {
	return max(cntdigits(a), cntdigits(b))
}

func main() {
	var A, B, N int64
	fmt.Scan(&N)
	min := math.MaxInt64
	for A = 1; A*A <= N; A++ {
		if N%A == 0 {
			B = N / A
		}
		cur := f(A, B)
		if min > cur {
			min = cur
		}
	}
	fmt.Println(min)
}
