package main

import "fmt"

func main() {
	// Code for C - Sum of gcd of Tuples (Easy)
	var k int
	fmt.Scanf("%d", &k)

	total := 0
	for a := 1; a <= k; a++ {
		for b := 1; b <= k; b++ {
			for c := 1; c <= k; c++ {
				total += GCD(GCD(a, b), c)
			}
		}
	}
	fmt.Printf("%d", total)
}

func GCD(a, b int) int {
	x := Min(a, b)
	y := Max(a, b)

	for {
		t := y % x
		if t == 0 {
			return x
		}
		y = x
		x = t
	}
}

func Max(x ...int) int {
	max := x[0]
	for _, v := range x {
		if v > max {
			max = v
		}
	}
	return max
}

func Min(x ...int) int {
	min := x[0]
	for _, v := range x {
		if v < min {
			min = v
		}
	}
	return min
}
