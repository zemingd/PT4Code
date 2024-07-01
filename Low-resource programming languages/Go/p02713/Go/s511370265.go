package main

import "fmt"

var mem = map[string]int{}

func key(a, b int) string {
	x := Min(a, b)
	y := Max(a, b)
	return fmt.Sprintf("%d-%d", x, y)
}

func main() {
	// Code for C - Sum of gcd of Tuples (Easy)
	var k int
	fmt.Scanf("%d", &k)

	total := 0
	for a := 1; a <= k; a++ {
		for b := 1; b <= k; b++ {
			for c := 1; c <= k; c++ {
				total += GCD3(a, b, c)
			}
		}
	}
	fmt.Printf("%d", total)
}

func GCD3(a, b, c int) int {
	x := GCD(a, b)
	if x > c {
		return GCD(c, x)
	} else {
		return GCD(x, c)
	}
}

func GCD(a, b int) int {
	i, ok := mem[key(a, b)]
	if ok {
		return i
	}

	x := Min(a, b)
	y := Max(a, b)

	for {
		t := y % x
		if t == 0 {
			mem[key(a, b)] = x
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
