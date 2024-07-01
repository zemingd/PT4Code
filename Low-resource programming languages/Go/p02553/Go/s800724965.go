package main

import (
	"fmt"
	"math"
)

func Max(A ...int) int {
	res := A[0]
	for i := 1; i < len(A); i++ {
		if res < A[i] {
			res = A[i]
		}
	}
	return res
}

func main() {
	var a, b, c, d int

	ans := math.MinInt64

	fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)
	xlist := []int{a, b}
	ylist := []int{c, d}
	for _, x := range xlist {
		for _, y := range ylist {
			ans = Max(ans, x*y)
		}
	}
	fmt.Println(ans)
}
