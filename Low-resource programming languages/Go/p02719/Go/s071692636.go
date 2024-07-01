package main

import (
	"fmt"
	"math"
)

func main() {
	var N, K int
	fmt.Scan(&N, &K)
	if K == 1 {
		fmt.Println(0)
		return
	}
	x := N
	min := math.MaxInt64
	for i := 0; i < 1000000; i++ {
		x = Min(x%K, Abs(x-K))
		min = Min(min, x)
	}
	fmt.Println(min)
}
func Min(a, b int) int {
	if b < a {
		return b
	}
	return a
}
func Abs(a int) int {
	if a < 0 {
		return -a
	}
	return a
}