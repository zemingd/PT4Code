package main

import (
	"fmt"
)

func main() {
	var a, b int64
	fmt.Scan(&a, &b)

	d := greatestCommonDivisor(a, b)
	r := (a * b) / d
	fmt.Println(r)
}

func greatestCommonDivisor(a, b int64) int64 {
	for a%b != 0 {
		a, b = b, a%b
	}
	return b
}
