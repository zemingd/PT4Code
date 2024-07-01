package main

import (
	"fmt"
	"math"
)

func main() {
	var n int
	fmt.Scan(&n)
	var s string
	fmt.Scan(&s)
	fmt.Println(face(n, s))
}

func face(n int, s string) int {
	min := int(3 * math.Pow10(5))
	var ce, cw int
	for _, v := range s {
		if v == 'E' {
			ce++
		}
	}
	for _, v := range s {
		if v == 'E' {
			ce--
		}
		if ce+cw < min {
			min = ce + cw
		}
		if v == 'W' {
			cw++
		}
	}
	return min
}
