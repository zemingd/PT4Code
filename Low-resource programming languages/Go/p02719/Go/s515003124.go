package main

import (
	"fmt"
	"math"
)

// go run ./main.go < in

func main() {
	var n, k int
	fmt.Scan(&n, &k)

	a, b := n, 0
	for i := 1; ; i++ {
		b = a
		a = n - k*i
		if a < 0 {
			break
		}
	}

	aa := math.Abs(float64(a))
	bb := math.Abs(float64(b))

	// 絶対値
	if aa >= bb {
		fmt.Println(bb)
	} else {
		fmt.Println(aa)
	}
}
