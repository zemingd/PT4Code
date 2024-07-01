package main

import (
	"fmt"
	"math"
)

func main() {
	var w, h, x, y float64
	fmt.Scan(&w)
	fmt.Scan(&h)

	fmt.Scan(&x)
	fmt.Scan(&y)

	if x == w/2 && y == h/2 {
		fmt.Printf("%.9f %v\n", (w*h)/2, 1)
		return
	}

	a := h / w
	if (a*x == y) || ((-a*x)+h == y) {
		if w == h {
			fmt.Printf("%.9f %v\n", (w*h)/2, 1)
			return
		}
		fmt.Printf("%.9f %v\n", (w*h)/2, 0)
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

func Max(nums ...float64) float64 {
	if len(nums) == 0 {
		panic("function max() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = float64(math.Max(float64(res), float64(nums[i])))
	}
	return res
}

func Min(nums ...float64) float64 {
	if len(nums) == 0 {
		panic("function min() requires at least one argument.")
	}
	res := nums[0]
	for i := 0; i < len(nums); i++ {
		res = float64(math.Min(float64(res), float64(nums[i])))
	}
	return res
}
