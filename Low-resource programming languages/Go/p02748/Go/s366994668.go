package main

import (
	"fmt"
	"math"
)

func main() {
	var a, b, m int
	fmt.Scan(&a, &b, &m)
	as := make([]int, a)
	bs := make([]int, b)
	minA, minB := math.MaxInt32, math.MaxInt32
	for i := range as {
		fmt.Scan(&as[i])
		minA = min(minA, as[i])
	}
	for i := range bs {
		fmt.Scan(&bs[i])
		minB = min(minB, bs[i])
	}
	xs := make([]int, m)
	ys := make([]int, m)
	cs := make([]int, m)
	for i := range xs {
		fmt.Scan(&xs[i], &ys[i], &cs[i])
		xs[i]--
		ys[i]--
	}

	minD := math.MaxInt32
	for i := 0; i < m; i++ {
		minD = min(minD, as[xs[i]]+bs[ys[i]]-cs[i])
	}

	fmt.Println(min(minA+minB, minD))
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
