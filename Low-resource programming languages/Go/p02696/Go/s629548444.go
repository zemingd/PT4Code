package main

import (
	"fmt"
	"math"
)

func f(a, b, x int) int {
	return int(math.Floor((float64(a) * float64(x)) / float64(b)) - float64(a) * math.Floor(float64(x) / float64(b)))
}

func Min(a, b int) int {
	if a > b{
		return b
	}
	return a
}

func main() {
	// Code for D - Floor Function
	var a, b, n int
	fmt.Scanf("%d %d %d", &a, &b, &n)

	max := 0
	for i:=1; i<=Min(n, 3000000000); i++ {
		s := f(a, b, i)

		if s > max {
			max = s
		}
	}

	fmt.Println(max)
}