package main

import (
	"fmt"
	"math"
)

func main() {
	var w, h, x, y int
	fmt.Scan(&w)
	fmt.Scan(&h)

	fmt.Scan(&x)
	fmt.Scan(&y)

	if (x == 0 && y == 0) || (x == w && y == h) || (x == 0 && y == h) || (x == w && y == 0) {
		fmt.Printf("%.5f %v\n", (float64(w)*float64(h))/2, 0)
		return
	}

	a1 := x * h
	a2 := (w - x) * h

	amin := Min(a1, a2)

	b1 := y * w
	b2 := (h - y) * w

	bmin := Min(b1, b2)

	if amin == bmin {
		fmt.Printf("%v %v\n", amin, 1)
		return
	}

	min := Max(amin, bmin)
	fmt.Printf("%v %v\n", min, 0)
}

func Max(nums ...int) int {
	if len(nums) == 0 {
		panic("function max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func Min(nums ...int) int {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = int(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
