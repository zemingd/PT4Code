package main

import (
	"fmt"
	"math"
)

func main() {
	var K, X float64
	fmt.Scan(&K, &X)
	l := math.Max(-1000000, X-(K-1))
	r := math.Min(1000000, X+(K-1))
	for i := l; i <= r; i++ {
		fmt.Print(i)
		if i < r {
			fmt.Print(" ")
		} else {
			fmt.Println()
		}
	}
}
