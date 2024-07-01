package main

import (
	"fmt"
)

// RingoDivide 10^2でD回割り切れる中でN番目に小さな正の整数を返す
// D=0, 1, 2   1<=N<=100
// res = N * 10^(2*D)
func RingoDivide(D int, N int) int {
	if N == 100 {
		N++
	}
	res := N
	for i := 0; i < D; i++ {
		res *= 100
	}
	return res
}

func main() {
	var D int
	var N int
	var res int

	fmt.Scan(&D)
	fmt.Scan(&N)
	res = RingoDivide(D, N)
	fmt.Println(res)
}
