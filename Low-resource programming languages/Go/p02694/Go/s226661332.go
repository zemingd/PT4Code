package main

import (
	"fmt"
	"math"
)

func main() {
	var x float64
	fmt.Scan(&x)

	z := 0
	for i := 100.0; i < x; i = math.Trunc(i * 1.01) {
		fmt.Println(i)
		z++
	}
	fmt.Print(z)
}
