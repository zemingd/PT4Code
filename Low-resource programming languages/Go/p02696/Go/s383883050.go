package main

import (
	"fmt"
	"math"
)

func max(x, y int) int {
	if x < y {
		return y
	}
	return x
}
func min(x, y int) int {
	if x > y {
		return y
	}
	return x
}
func main() {
	var A, B, N int
	fmt.Scanf("%d %d %d", &A, &B, &N)
	b := float64(B)

	ret := 0
	for i := 0; i < min(B, N+1); i++ {
		ret = max(ret, int(math.Floor(float64(A*i)/b))-A*int(math.Floor(float64(i)/b)))
	}
	fmt.Println(ret)
}
